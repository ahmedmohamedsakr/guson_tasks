import 'package:flutter/material.dart';
import 'package:guson_tasks/core/utils/app_assets.dart';
import 'package:guson_tasks/core/utils/app_colors.dart';
import 'package:guson_tasks/presentation/views/main_screen/widgets/categories_items.dart';
import 'package:guson_tasks/presentation/views/main_screen/widgets/custom_header.dart';
import 'package:guson_tasks/presentation/views/main_screen/widgets/custom_text_field.dart';
import 'package:guson_tasks/presentation/views/main_screen/widgets/main_slider.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<String> images = [
    AppAssets.dough,
    AppAssets.vegetables,
    AppAssets.fruits,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Column(
              children: [
                const CustomHeader(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24.0,
                  ),
                  child: CustomTextField(
                    backgroundColor: Colors.grey[200],
                    hintText: 'Search',
                    prefixIcon: Icons.search_sharp,
                    suffixIcon: Icons.filter_list_outlined,
                  ),
                ),
                const CustomHeadline(
                  isLeftOnly: false,
                  leftTitle: 'Latest offers and discounts',
                  rightTitle: 'view all',
                ),
                MainSlider(),
                const CustomHeadline(
                  isLeftOnly: true,
                  leftTitle: 'Categories',
                ),
                Row(
                  children: [
                    ...List.generate(
                      images.length,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CategoriesItems(
                          isImage: true,
                          image: images[index],
                        ),
                      ),
                    ),
                    const CategoriesItems(
                      isImage: false,
                    ),
                  ],
                ),
                CustomHeadline(
                  leftTitle: 'last items',
                  isLeftOnly: false,
                  rightTitle: 'see all',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomHeadline extends StatelessWidget {
  const CustomHeadline({
    super.key,
    required this.leftTitle,
    this.rightTitle,
    required this.isLeftOnly,
  });

  final String leftTitle;
  final String? rightTitle;
  final bool isLeftOnly;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftTitle,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        if (!isLeftOnly)
          GestureDetector(
            onTap: () {},
            child: Text(
              rightTitle ?? '',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
              ),
            ),
          ),
      ],
    );
  }
}
