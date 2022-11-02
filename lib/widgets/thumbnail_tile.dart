import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ThumbnailTile extends StatelessWidget {
  final String url;
  final VoidCallback? onTap;
  const ThumbnailTile(this.url, {this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    VoidCallback onTapTile = onTap ?? () {};
    return GridTile(
        child: GestureDetector(
      onTap: onTapTile,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: CachedNetworkImageProvider(url),
          ),
        ),
      ),
    ));
  }
}
