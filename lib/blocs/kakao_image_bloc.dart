import 'package:leehs_brandi/globals.dart';
import 'package:rxdart/rxdart.dart';

enum ImageSearchState { idle, loding }

class KakaoImageSearchBloc implements Disposable {
  final _searchState =
      BehaviorSubject<ImageSearchState>.seeded(ImageSearchState.idle);
  Stream<ImageSearchState?> get searchState => _searchState.stream;
  ImageSearchState? get currentSearchState => _searchState.valueOrNull;
  Function get _setSearchState => _searchState.add;

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

  loadNext() async {
    if (currentQuery == null || currentQuery!.isEmpty) return;
    if (currentMeta == null || currentMeta!.isEnd) return;
    _setSearchState(ImageSearchState.loding);
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
    _setSearchState(ImageSearchState.idle);
  }

  searchImage(String? query) async {
    if (query == null || query.isEmpty) return;
    _setSearchState(ImageSearchState.loding);
    _setPage(1);
    _setQuery(query);
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
    _setSearchState(ImageSearchState.idle);
  }

  @override
  void dispose() {
    _images.close();
    _meta.close();
    _page.close();
    _searchState.close();
    _query.close();
  }
}
