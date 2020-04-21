import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          Container(
            height: 300,
            child: PageView(
              children: <Widget>[
                _img(),
                _img(),
                _img(),
                _img(),
                _img(),
              ],
            ),
          ),
          _buttons(),
        ],
      ),
    );
  }

  _buttons() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _button("List View"),
            _button("Page 2"),
            _button("Page 3"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _button("Snack"),
            _button("Dialog"),
            _button("Toast"),
          ],
        ),
      ],
    );
  }

  _button(String text) {
    return RaisedButton(
      color: Colors.blue,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      onPressed: () => _onClickOk(),
    );
  }

  void _onClickOk() {
    print("OK");
  }

  _img() {
    return Image.asset(
      "assets/images/dog1.png",
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
