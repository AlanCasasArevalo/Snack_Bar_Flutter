import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 10,
      child: Text('Mostrar Snackbar'),
      onPressed: () {
        Scaffold.of(context).showSnackBar(_snackBar(context));
      },
    );
  }

  SnackBar _snackBar(BuildContext context) {
    return SnackBar(
      content: Text('hola'),
      duration: Duration(seconds: 1),
      elevation: 12,
      action: _action(context),
    );
  }

  SnackBarAction _action(BuildContext context) {
    return SnackBarAction(
        label: 'Pulsar Aquí',
        onPressed: () {
          Scaffold.of(context).showSnackBar(
              SnackBar(content: Text('Hola de nuevoooooooo!!!!'), duration: Duration(seconds: 2),));
        });
  }
}
