import 'package:flutter/material.dart';
import 'package:zoomed_app/screens/blog/ui_tools/custom_clip_path.dart';
import 'package:zoomed_app/screens/blog/ui_tools/custom_sliver_delegete_header.dart';
import 'package:zoomed_app/screens/home/widget/title_link.dart';

class PageScreen extends StatefulWidget {
  @override
  _PageScreenState createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  

  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              primary: true,
              
              title: Text('Zoomed MeetUp'),
              expandedHeight: 300.0,
              collapsedHeight: 200.0,
              flexibleSpace: _header(),
              // bottom: PreferredSize(child: _sliverBarHeader(context), preferredSize: Size.fromHeight(150)),
            ),
            // SliverPersistentHeader(
            //   floating: true,
            //   pinned: true,
            //   delegate: CustomSliverDelegate(

            //       expandedHeight: 300, widget: _sliverBarHeader(context)),
            // ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              alignment: Alignment.topCenter,
              width: double.infinity,
              child: _sliverBarHeader(context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                      0.1,
                      0.9
                    ],
                    colors: [
                      Theme.of(context).colorScheme.secondaryVariant,
                      Theme.of(context).colorScheme.primaryVariant,
                    ]),
              ),
            ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Theme.of(context).primaryColor,
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).colorScheme.primaryVariant,
                          spreadRadius: 19,
                          blurRadius: 9,
                          offset: Offset(0, -3), //
                        )
                      ]),
                ),
                Card(
                  child: Container(
                    width: double.infinity,
                    height: 300,
                  ),
                ),
                Card(
                  child: Container(
                    width: double.infinity,
                    height: 300,
                  ),
                ),
                Card(
                  child: Container(
                    width: double.infinity,
                    height: 300,
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget _sliverBarHeader(BuildContext context) => TitleLinkWidget(
        title: 'Who\'s going?',
        linkTitle: 'See All',
        widget: _stackedHeads(context),
      );

  Widget _stackedHeads(BuildContext context) => Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 1),
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * .4,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Align(
                    widthFactor: 0.6,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 18,

                        backgroundImage: NetworkImage(
                            'https://www.jessleewong.com/wp-content/uploads/2019/12/jessleewong_20191109_3.jpg'), // Provide your custom image
                      ),
                    ),
                  );
                }),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .4,
            child: Text(
              'James Gold, Jacky Simon and 12 others are going',
              style: Theme.of(context).textTheme.bodyText1,
              overflow: TextOverflow.fade,
            ),
          )
        ],
      ));

  Widget _header() => SizedBox(
        height: 300,
        child: Stack(
          fit: StackFit.expand,
          overflow: Overflow.visible,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              height: 300,
              decoration: BoxDecoration(
                  
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.grey.shade600, BlendMode.multiply),
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://itarena.ua/wp-content/uploads/2017/09/img_1692-1024x683-1024x683.jpg',
                      ))),
             
            ),
            
          ],
        ),
      );
}
