import 'package:demoapp/intro_pages/bloc/intro_bloc.dart';
import 'package:demoapp/intro_pages/model/intro_model.dart';
import 'package:flutter/material.dart';

class IntroPageViewWidget extends StatefulWidget {
  IntroPageViewWidget({@required this.introBlocProvider, @required this.listOfPage});
  final IntroBlocProvider introBlocProvider;
  final List<PageInfo> listOfPage;

  @override
  _IntroPageViewWidgetState createState() => _IntroPageViewWidgetState();
}

class _IntroPageViewWidgetState extends State<IntroPageViewWidget> {
  PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      onPageChanged: (index) {
        widget.introBlocProvider.changePageIndex(index);
      },
      itemCount: widget.listOfPage.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            widget.listOfPage[index].title,
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
