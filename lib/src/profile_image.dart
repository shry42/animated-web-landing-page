import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage(
      {super.key, this.top, this.left, this.diameter, this.image});

  final double? top;
  final double? left;
  final double? diameter;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: SizedBox(
        height: diameter,
        width: diameter,
        child: ClipRRect(
          child: Image.network(
            image.toString(),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(300.0),
        ),
      ),
    );
  }
}
