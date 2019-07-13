import 'package:demoapp/intro_pages/bloc/intro_bloc.dart';
import 'package:demoapp/intro_pages/model/intro_model.dart';
import 'package:flutter/material.dart';

class BottomIndicatorWidget extends StatelessWidget {
  BottomIndicatorWidget(
      {@required this.introBlocProvider, @required this.listOfPage});
  final IntroBlocProvider introBlocProvider;
  final List<PageInfo> listOfPage;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 85,
        child: Container(
          height: 50,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: _indicatorSelectionBasedOnPage()),
            ),
          ),
        ));
  }

  List<Widget> _indicatorSelectionBasedOnPage() {
    List<Widget> _listOfIndicator = List<Widget>();
    for (var i = 0; i < listOfPage.length; ++i) {
      _listOfIndicator.add(
        Opacity(
          opacity: (introBlocProvider.currentPage == i) ? 1 : 0.5,
          child: Container(
              height: 25,
              width: 25,
              child: IconButton(
                  icon: Icon(Icons.brightness_1, color: Colors.white, size: 12),
                  onPressed: () {
                    print("Page clicked $i");
                    introBlocProvider.changePageIndex(i);
                  })),
        ),
      );
    }
    return _listOfIndicator;
  }
}
