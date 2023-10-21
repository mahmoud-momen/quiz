import 'package:flutter/material.dart';

class ImagePageViewWidget extends StatelessWidget {
  final List<String> imagePaths;

  ImagePageViewWidget({required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Page View'),
      ),
      body: PageView.builder(
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Image.asset(
            imagePaths[index],
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
