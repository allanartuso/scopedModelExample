import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped/mainScoped.dart';
import '../widgets/drawNav.dart';

class Home extends StatelessWidget {
  Widget myBody() {
    return ScopedModelDescendant<MainScoped>(
      builder: (BuildContext context, Widget child, MainScoped model) {
        return ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(model.data.title),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Change data"),
                    onPressed: () => {
                          model.changeData(
                              title: "New Title from Home Page",
                              description: "New description from Home Page"),
                        },
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawNav(),
      appBar: AppBar(title: Text('Home Page')),
      body: myBody(),
    );
  }
}
