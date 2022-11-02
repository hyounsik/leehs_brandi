import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:leehs_brandi/globals.dart';
import 'package:provider/provider.dart';

/// 이미지 상세 화면
class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<KakaoImageSearchBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text(bloc.currentQuery ?? ''),
        leading: InkWell(
            onTap: () {
              route.currentRouterDelegate.pop();
            },
            child: const Icon(Icons.keyboard_arrow_left)),
      ),
      body: SafeArea(
        child: StreamBuilder<KakaoImageSearchResponseDoc?>(
          stream: bloc.selectedImage,
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data != null) {
              KakaoImageSearchResponseDoc selectedImage = snapshot.data!;
              String imageUrl = selectedImage.imageUrl;
              String thumbnailUrl = selectedImage.thumbnailUrl;
              String displaySitename = selectedImage.displaySitename.isEmpty
                  ? '출처 없음'
                  : selectedImage.displaySitename;
              String datetime = selectedImage.datetime == null
                  ? ''
                  : formatyMD(selectedImage.datetime!);

              return Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(thumbnailUrl),
                            ),
                          ),
                        ),
                        BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 20.0,
                            sigmaY: 20.0,
                          ),
                          child: Center(
                            child: SingleChildScrollView(
                              child: CachedNetworkImage(
                                imageUrl: imageUrl,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('$displaySitename - $datetime'),
                  )
                ],
              );
            } else {
              return const Center(
                child: Text('이미지 정보가 없습니다.'),
              );
            }
          },
        ),
      ),
    );
  }
}
