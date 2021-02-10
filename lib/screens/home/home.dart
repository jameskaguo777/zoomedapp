import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            _header(context),
          ],
        ),
      ),
    );
  }

  Widget _header(BuildContext context) => Container(
    width: double.infinity,
    height: MediaQuery.of(context).size.height*.3,
    child: Row(
      children: [
        Wrap(
          direction: Axis.vertical,
          children: [
            Text(''),
          ],
        )
      ],
    ),
  );
}
