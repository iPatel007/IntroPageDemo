import 'package:flutter/material.dart';

class SocialLoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 25,
      child: Container(
        margin: EdgeInsets.all(10),
        height: 44,
        width: MediaQuery.of(context).size.width - 20,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
                child: Container(
              margin: EdgeInsets.only(right: 5),
              height: 44,
              child: FlatButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                      'resources/images/icon_googleplus_white.png',
                      fit: BoxFit.contain,
                      height: 27),
                  label: Text(
                    'CONTINUE',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  color: Color.fromRGBO(221, 75, 57, 1)),
            )),
            Expanded(
                child: Container(
              margin: EdgeInsets.only(left: 5),
              height: 44,
              child: FlatButton.icon(
                  onPressed: () {
                    // _handleSignOut();
                    //_facebookLoginInitialization();
                  },
                  icon: Image.asset('resources/images/icon_facebook_white.png',
                      fit: BoxFit.contain, height: 27),
                  label: Text(
                    'CONTINUE',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  color: Color.fromRGBO(64, 96, 184, 1)),
            ))
          ],
        ),
      ),
    );
  }
}
