import 'package:flutter/material.dart';
import 'package:gallery_app/view_wallpaper_page.dart';

List<String> images = [
  "assets/images/1.jpg",
  "assets/images/2.jpg",
  "assets/images/3.jpg",
  "assets/images/4.jpg",
  "assets/images/5.jpg",
  "assets/images/6.jpg",
  "assets/images/7.jpg",
];

class WallpaperHomePage extends StatelessWidget {
  const WallpaperHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: [
          for (int i = 0; i < images.length; i++)
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ViewWallpaperPage(
                    paths: images,
                    index: i,
                  );
                }));
              },
              child: Image.asset(
                images[i],
                fit: BoxFit.cover,
              ),
            )
        ],
      ),
    );
  }
}
