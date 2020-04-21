import 'package:aula01/pages/hello_page1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          _pageView(),
          _buttons(context),
        ],
      ),
    );
  }

  Container _pageView() {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      height: 300,
      child: PageView(
        children: <Widget>[
          _img(
            "assets/images/dog1.png",
          ),
          _img(
            "assets/images/dog2.png",
          ),
          _img(
            "assets/images/dog3.png",
          ),
          _img(
            "assets/images/dog4.png",
          ),
          _img(
            "assets/images/dog5.png",
          ),
        ],
      ),
    );
  }

  _buttons(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _button(context, "List View"),
            _button(context, "Page 2"),
            _button(context, "Page 3"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _button(context, "Snack"),
            _button(context, "Dialog"),
            _button(context, "Toast"),
          ],
        ),
      ],
    );
  }

  _button(BuildContext context, String text) {
    return RaisedButton(
      color: Colors.blue,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      onPressed: () => _onClickOk(context),
    );
  }

  void _onClickOk(context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return HelloPage1();
    }));
  }

  _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
    //return Image.network('https://tudosobrecachorros.com.br/wp-content/uploads/fotos-de-cachorros-01.jpg');
  }

  _text() {
    return Text(
      "Hello World",
      style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }
}
