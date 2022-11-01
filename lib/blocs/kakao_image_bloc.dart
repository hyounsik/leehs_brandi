import 'dart:async';

import 'package:leehs_brandi/globals.dart';
import 'package:rxdart/rxdart.dart';

enum ImageSearchState { idle, writing, loding }

class KakaoImageSearchBloc implements Disposable {
  final _searchState = ReplaySubject<ImageSearchState>(maxSize: 2);
  Stream<ImageSearchState?> get searchState => _searchState.stream;
  ImageSearchState? get previousSearchState => _searchState.values.first;
  ImageSearchState? get currentSearchState => _searchState.values.last;
  Function get setSearchState => _searchState.add;
  bool get isIdle => currentSearchState == ImageSearchState.idle;
  StreamSubscription<ImageSearchState?>? _searchStateSub;

  final _query = BehaviorSubject<String?>();
  Stream<String?> get query => _query.stream;
  String? get currentQuery => _query.valueOrNull;
  Function get _setQuery => _query.add;

  final _page = BehaviorSubject<int>.seeded(0);
  Stream<int> get page => _page.stream;
  int get currentPage => _page.value;
  Function get _setPage => _page.add;

  final _meta = BehaviorSubject<KakaoImageSearchResponseMeta>();
  Stream<KakaoImageSearchResponseMeta?> get meta => _meta.stream;
  KakaoImageSearchResponseMeta? get currentMeta => _meta.valueOrNull;
  Function get _setMeta => _meta.add;

  final _images = BehaviorSubject<List<KakaoImageSearchResponseDoc>>.seeded([]);
  Stream<List<KakaoImageSearchResponseDoc>> get images => _images.stream;
  List<KakaoImageSearchResponseDoc> get currentImages => _images.value;

  Timer? timer;

  loadNext() async {
    if (currentQuery == null || currentQuery!.isEmpty) return;
    if (currentMeta == null || currentMeta!.isEnd) return;
    setSearchState(ImageSearchState.loding);
    _setPage(currentPage + 1);
    KakaoImageSearchResponse response =
        await repo.getImages(query: currentQuery!, page: currentPage);
    final error = response.error;
    if (error != null) {
      final meta = response.meta;
      final documents = response.documents;
      _setMeta(meta);
      _setMeta(currentImages.addAll(documents));
    }
    setSearchState(ImageSearchState.idle);
  }

  searchImage(String? query) async {
    if (query == null || query.isEmpty) {
      setSearchState(ImageSearchState.idle);
      return _setQuery(query);
    }
    if (currentSearchState != ImageSearchState.idle) return;
    if (previousSearchState != ImageSearchState.writing) return;

    _setQuery(query);
    setSearchState(ImageSearchState.loding);
    _setPage(1);

    KakaoImageSearchResponse response =
        await repo.getImages(query: currentQuery!, page: currentPage);
    final error = response.error;

    if (error != null) {
      final meta = response.meta;
      final documents = response.documents;
      _setMeta(meta);
      _setMeta(documents);
    } else {
      _setMeta(null);
      _setMeta([]);
    }
    setSearchState(ImageSearchState.idle);
  }

  _resetTimer(String? query) {
    setSearchState(ImageSearchState.writing);
    timer?.cancel();
    timer = Timer(const Duration(seconds: 1), () {
      setSearchState(ImageSearchState.idle);
      searchImage(query);
    });
  }

  changeQuery(String? query) {
    _resetTimer(query);
  }

  @override
  void dispose() {
    _images.close();
    _meta.close();
    _page.close();
    _searchState.close();
    _query.close();

    timer?.cancel();
    _searchStateSub?.cancel();
  }

  KakaoImageSearchBloc() {
    _searchStateSub = searchState.listen((state) {
      if (state == ImageSearchState.writing) {}
    });
  }
}
