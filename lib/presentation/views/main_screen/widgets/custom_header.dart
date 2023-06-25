import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guson_tasks/core/utils/app_assets.dart';
import 'package:guson_tasks/core/utils/app_colors.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Expanded(
            child: Row(
              children: [
                const SizedBox(
                  width: 46.0,
                  height: 46.0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text('صباح الخير 🖐'),
                        const Text(
                          'Good morning 🖐',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            // text: '18 ش عبد العزيز مأمون,السالمية,الرياض',
                            text: '18 Abdul Aziz Mamoun St., Salmiya, Riyadh ',
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                            children: <InlineSpan>[
                              TextSpan(
                                // text: 'تغير العنوان',
                                text: 'Change address',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w900,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Badge(
            label: const Text(
              '3',
            ),
            backgroundColor: AppColors.primaryColor,
            child: Material(
              elevation: 6.0,
              shadowColor: Colors.transparent,
              // color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.lightGrey,
                ),
                width: 46.0,
                height: 46.0,
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: SvgPicture.asset(
                  AppAssets.shoppingBasket,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
