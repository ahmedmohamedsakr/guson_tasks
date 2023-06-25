import 'package:flutter/material.dart';
import 'package:guson_tasks/core/utils/app_colors.dart';

class CategoriesItems extends StatelessWidget {
  const CategoriesItems({super.key, required this.isImage});

  final bool isImage;

  @override
  Widget build(BuildContext context) {
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
          ? Image.network(
            'https://images.unsplash.com/photo-1557844352-761f2565b576?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
            fit: BoxFit.contain,
          )
          : Container(
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
    );
  }
}
