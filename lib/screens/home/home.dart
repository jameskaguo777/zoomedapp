import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zoomed_app/screens/home/widget/carouse_card.dart';
import 'package:zoomed_app/screens/home/widget/title_link.dart';

class Home extends StatefulWidget {
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
        child: ListView(
          children: [
            _header(context),
            TitleLinkWidget(
              title: 'Events near you',
              linkTitle: 'See All',
              widget: _eventsNear(context),
            ),
            _categorySection(),
          ],
        ),
      ),
    );
  }

  Widget _header(BuildContext context) => Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 1),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .1,
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
                  'ZoomedUp',
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * .6,
              child: PageView.builder(
                  itemCount: 5,
                  pageSnapping: true,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  controller:
                      PageController(keepPage: true, viewportFraction: 0.9),
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8.0, 8.0, 8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/blog/page');
                        },
                        child: CarouseCard(
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                            isOverlineVisible: true,
                            overline1T: 'SAT, OCTOBER 26',
                            overline2T: '453 BOOKLYN, NY USA',
                            imageLink:
                                'https://itarena.ua/wp-content/uploads/2017/09/img_1692-1024x683-1024x683.jpg',
                            title: 'Zoomed MeetUp'),
                      ),
                    );
                  }),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 30,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, i) {
                    return currentPage == i
                        ? Icon(
                            Icons.circle,
                            size: 10,
                          )
                        : Icon(
                            Icons.blur_circular_sharp,
                            size: 10,
                            color: Colors.orange[400],
                          );
                  }),
            ),
          ],
        ),
      );

  Widget _categorySection() => TitleLinkWidget(
        title: 'Category',
        linkTitle: 'See All',
        route: '/categories',
        widget: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.width * .3,
          child: PageView.builder(
              itemCount: 5,
              pageSnapping: true,
              dragStartBehavior: DragStartBehavior.start,
              onPageChanged: (value) {},
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              physics: BouncingScrollPhysics(),
              controller: PageController(keepPage: true, viewportFraction: 0.6),
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8.0, 8.0, 8.0),
                  child: CarouseCard(
                    imageLink:
                        'https://itarena.ua/wp-content/uploads/2017/09/img_1692-1024x683-1024x683.jpg',
                    title: 'Outdoor & Adventure',
                    textStyle: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.white),
                  ),
                );
              }),
        ),
      );
}
