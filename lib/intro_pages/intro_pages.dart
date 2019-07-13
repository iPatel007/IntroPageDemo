import 'package:demoapp/intro_pages/widgets/bottom_indicator.dart';
import 'package:demoapp/intro_pages/widgets/intro_pageview.dart';
import 'package:demoapp/intro_pages/widgets/social_login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bloc/intro_bloc.dart';
import 'model/intro_model.dart';

class IntroPages extends StatelessWidget {
  final IntroPageData _introPages = IntroPageData();
  @override
  @override
  Widget build(BuildContext context) {
    final IntroBlocProvider _introBlocProvider =
        Provider.of<IntroBlocProvider>(context);
    return Scaffold(
        body: Container(
      color: Color.fromRGBO(13, 32, 47, 1),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                _introPages.listOfPages[_introBlocProvider.currentPage].imgPath,
                fit: BoxFit.cover,
              )),
          IntroPageViewWidget(
              introBlocProvider: _introBlocProvider,
              listOfPage: _introPages.listOfPages),
          BottomIndicatorWidget(
              introBlocProvider: _introBlocProvider,
              listOfPage: _introPages.listOfPages),
          SocialLoginWidget()
        ],
      ),
    ));
  }
}
