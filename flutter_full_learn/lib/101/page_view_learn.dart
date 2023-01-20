import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.7);

  int _currentPageIndex = 0;

  void _updatePageIndex(index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(_currentPageIndex.toString()),
          ),
          const Spacer(),
          FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: _DurationUtility._durationLow,
                    curve: _CurvesUtility._curveSlowMiddle);
              },
              child: const Icon(Icons.chevron_left)),
          FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: _DurationUtility._durationLow,
                    curve: _CurvesUtility._curveSlowMiddle);
              },
              child: const Icon(Icons.chevron_right)),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
          controller: _pageController,
          onPageChanged: _updatePageIndex,
          children: [
            ImageLearn(),
            IconLearnView(),
            StackLearn(),
            Container(color: Colors.red),
            Container(color: Colors.blue),
            Container(color: Colors.green),
          ]),
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}

class _CurvesUtility {
  static const _curveSlowMiddle = Curves.slowMiddle;
}
