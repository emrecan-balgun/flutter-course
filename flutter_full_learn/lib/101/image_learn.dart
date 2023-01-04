import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  final String _imagePath = "https://www.freepngimg.com/thumb/book/14-open-book-png-image.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(
              height: 400,
              width: 300,
              child: PngImage(name: ImageItems().appleWithBookWithoutPath),
            ),
            Image.network(
                _imagePath,
                errorBuilder: (context, error, stackTrace) =>
                    // PngImage(name: ImageItems().appleWithBookWithoutPath)),
                   const Icon(Icons.abc_outlined),)
          ],
        ));
  }
}

class ImageItems {
  final String appleWithBook = "assets/apple-with-books.png";
  final String appleWithBookWithoutPath = "apple-with-books";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.contain,
    );
  }

  String get _nameWithPath => 'assets/png/$name.png';
}
