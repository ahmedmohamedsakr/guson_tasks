import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guson_tasks/core/utils/app_colors.dart';

class CategoriesItems extends StatelessWidget {
  const CategoriesItems({super.key, required this.isImage, this.image});

  final bool isImage;
  final String? image;

  @override
  Widget build(BuildContext context) {
    print(image);
    return Container(
      width: 84.0,
      height: 80.0,
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(
          16.0,
        ),
      ),
      child: isImage
          ? SvgPicture.asset(
              image!,
            )
          : Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
                width: 39.0,
                height: 39.0,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor.withOpacity(
                    0.5,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white.withOpacity(
                    0.5,
                  ),
                ),
              ),
          ),
    );
  }
}
