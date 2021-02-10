import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
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
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Wrap(
          direction: Axis.vertical,
          children: [
            Text('MON OCTOBER 23', style: Theme.of(context).textTheme.overline,),
            SizedBox(height: 1,),
            Text('Events', style: Theme.of(context).textTheme.headline3,),
          ],
        ),
        CircleAvatar(
          backgroundImage: NetworkImage('https://www.jessleewong.com/wp-content/uploads/2019/12/jessleewong_20191109_3.jpg'),
          radius: 20,
         
        )
      ],
    ),
  );
}
