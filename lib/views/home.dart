import 'package:flutter/material.dart';
import 'package:leehs_brandi/globals.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';

/// 메인 화면
///
/// 카카오 이미지 검색을 사용하여 결과를 얻어오고 썸네일을 노출 합니다.
class AppSearchHome extends StatefulWidget {
  const AppSearchHome({super.key});

  @override
  State<AppSearchHome> createState() => _AppSearchHomeState();
}

class _AppSearchHomeState extends State<AppSearchHome> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    final bloc = context.read<KakaoImageSearchBloc>();

    _scrollController.addListener(() {
      if (_scrollController.offset >=
              _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange) {
        bloc.loadNext();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<KakaoImageSearchBloc>();
    return Scaffold(
      appBar: AppBar(title: const Text('이현식 DEMO')),
      body: SafeArea(
        child: StreamBuilder<List>(
          stream: Rx.combineLatest2(bloc.images, bloc.searchState,
              (images, searchState) => [images, searchState]),
          initialData: const [[], ImageSearchState.idle],
          builder: (context, snapshot) {
            List<String> thumbnailUrls = [];
            thumbnailUrls =
                bloc.currentImages.map((doc) => doc.thumbnailUrl).toList();
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Form(
                    key: bloc.formKey,
                    child: TextFormField(
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return null;
                        } else if (text.length < 2 || text.length > 10) {
                          return '2-10자 사이로 검색해 주세요';
                        }
                      },
                      decoration: const InputDecoration(
                          hintText: '2-10자 사이로 검색해 주세요',
                          contentPadding:
                              EdgeInsets.only(left: 8.0, right: 8.0)),
                      onChanged: (text) {
                        bloc.changeQuery(text);
                      },
                    ),
                  ),
                ),
                if (thumbnailUrls.isNotEmpty)
                  Expanded(
                      child: GridView.builder(
                    controller: _scrollController,
                    physics: const BouncingScrollPhysics(),
                    itemCount: thumbnailUrls.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 1.5,
                            crossAxisSpacing: 1.5),
                    itemBuilder: (context, index) {
                      String thumbnailUrl = thumbnailUrls[index];

                      return ThumbnailTile(
                        thumbnailUrl,
                        onTap: () {
                          bloc.setSelectedImage(bloc.currentImages[index]);
                          route.currentRouterDelegate.push('/search/detail');
                        },
                      );
                    },
                  )),
                if (thumbnailUrls.isEmpty)
                  const Expanded(
                      child: Center(
                    child: Text('검색 결과가 없습니다.'),
                  )),
                if (bloc.isLoding)
                  LinearProgressIndicator(
                    color: Colors.cyan,
                    backgroundColor: Colors.cyan[050],
                  )
              ],
            );
          },
        ),
      ),
    );
  }
}
