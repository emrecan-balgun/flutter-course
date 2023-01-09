import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  final _title = 'Create your first note';
  final _description = 'Add a note';
  final _createNote = 'Create a note';
  final _importNote = 'Import notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark,),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleWithBookWithoutPath),
            _TitleWidget(title: _title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubTitleWidget(title: _description * 10),
            ),
            const Spacer(),
            _createButton(context),
            TextButton(onPressed: () {}, child: Text(_importNote)),
            const SizedBox(height: ButtonHeights.buttonNormalHeight),
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
              onPressed: () {},
              child: SizedBox(
                  height: ButtonHeights.buttonNormalHeight,
                  child: Center(
                      child: Text(_createNote,
                          style: Theme.of(context).textTheme.headline5))));
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({
    Key? key,
    this.textAlign = TextAlign.center,
    required this.title,
  }) : super(key: key);
  final TextAlign textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400));
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800));
  }
}

class PaddingItems {
  static final EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20);
  static final EdgeInsets verticalPadding =
      const EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
