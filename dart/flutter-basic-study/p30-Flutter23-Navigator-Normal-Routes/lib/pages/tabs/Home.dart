import 'package:flutter/material.dart';

import '../Search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // Column 次轴x的左边
      crossAxisAlignment: CrossAxisAlignment.start,
      // Column 主轴y的中间
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
            child: Text("跳转到搜索页面"),
            onPressed: () {
              //路由跳转
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context)=>SearchPage()
                )
              );

            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary
        ),
        SizedBox(height: 20),        

      ],
    );
  }
}
