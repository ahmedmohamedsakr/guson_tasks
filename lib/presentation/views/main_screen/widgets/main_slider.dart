import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class MainSlider extends StatelessWidget {
  final List<String> images = [
    'https://picsum.photos/id/237/200/300',
    'https://picsum.photos/id/238/200/300',
    'https://picsum.photos/id/239/200/300',
    'https://picsum.photos/id/240/200/300',
  ];

  MainSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: images
          .map(
            (image) => Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
          .toList(),
      options: CarouselOptions(
        height: 200.0,
        // aspectRatio: 16 / 9,
        viewportFraction: 1.0,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        // autoPlay: true,
        // autoPlayInterval: const Duration(seconds: 3),
        // autoPlayAnimationDuration: const Duration(milliseconds: 800),
        // autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
      ),
    );
  }
}
