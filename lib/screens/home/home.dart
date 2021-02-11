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
            _eventsNear(context),
          ],
        ),
      ),
    );
  }

  Widget _header(BuildContext context) => Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .2,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              direction: Axis.vertical,
              children: [
                Text(
                  'MON OCTOBER 23',
                  style: Theme.of(context).textTheme.overline,
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  'Events',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.jessleewong.com/wp-content/uploads/2019/12/jessleewong_20191109_3.jpg'),
              radius: 25,
            )
          ],
        ),
      );

  Widget _eventsNear(BuildContext context) => Container(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Events near you',
                  style: Theme.of(context).textTheme.headline6,
                ),
                InkWell(
                  onTap: () {
                    print('See All');
                  },
                  child: Wrap(
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 5,
                    children: [
                      Text(
                        'See All',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            _carouselCard(context),
          ],
        ),
      );

  Widget _carouselCard(BuildContext context) => Container(
    padding: const EdgeInsets.all(0),
    margin: const EdgeInsets.all(0),
    alignment: Alignment.bottomCenter,
    child: Card(
      color: Colors.black38,
      margin: const EdgeInsets.all(0),
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,

        children: [
              Wrap(
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: Axis.horizontal,
                children: [
                  Text('SAT, OCTOBER 26',
                      style: Theme.of(context).textTheme.overline.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.circle,
                    size: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('426, BROOKLY NY USA',
                  overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.overline.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
              Text(
                'Zoomed MeetUp',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              )
        ],
      ),
            ),
          ),
    ),
    width: MediaQuery.of(context).size.width * .6,
    height: MediaQuery.of(context).size.width * .6,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    

    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(15),


        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://itarena.ua/wp-content/uploads/2017/09/img_1692-1024x683-1024x683.jpg'))),
  );
}
