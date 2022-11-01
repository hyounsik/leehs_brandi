import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ThumbnailTile extends StatelessWidget {
  final String url;
  const ThumbnailTile(this.url, {super.key});

  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: CachedNetworkImageProvider(url),
            // image: CachedNetworkImageProvider(post.deleteImgPath),
          ),
        ),
      ),
    ));
  }
}
