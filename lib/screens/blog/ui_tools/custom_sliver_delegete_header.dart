import 'package:flutter/material.dart';

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final bool hideTitleWhenExpanded;
  final Widget widget;

  CustomSliverDelegate({
    @required this.expandedHeight,
    this.hideTitleWhenExpanded = true,
    @required this.widget,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final appBarSize = expandedHeight - shrinkOffset;
    final cardTopPosition = expandedHeight / 1.2 - shrinkOffset;
    final proportion = 2 - (expandedHeight / appBarSize);
    final percent = proportion < 0 || proportion > 1 ? 0.0 : proportion;
    return SizedBox(
      height: expandedHeight + expandedHeight / 2,
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            height: appBarSize < kToolbarHeight ? kToolbarHeight : appBarSize,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(20, 30),
                    bottomRight: Radius.elliptical(20, 30),),
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.grey.shade600, BlendMode.multiply),
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://itarena.ua/wp-content/uploads/2017/09/img_1692-1024x683-1024x683.jpg',
                    ))),
            // child: Positioned(
            //   left: 0.0,
            // right: 0.0,
            // top: cardTopPosition > 0 ? cardTopPosition * 1.1 : 0,
            // bottom: 0.0,
              
            //   child: Column(

            //     children: [
            //       Row(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           InkWell(
            //         onTap: () => Navigator.of(context).pop(),
            //         child: Icon(Icons.arrow_back_ios),
            //       ),
            //       CircleAvatar(
            //         backgroundImage: NetworkImage(
            //             'https://www.jessleewong.com/wp-content/uploads/2019/12/jessleewong_20191109_3.jpg'),
            //         radius: 25,
            //       )
            //         ],
            //       )
            //     ],
            //   ),
            // ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            top: cardTopPosition > 0 ? cardTopPosition * 1.1 : 0,
            bottom: 0.0,
            child: Opacity(
              opacity: percent,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                alignment: Alignment.topCenter,
                width: double.infinity,
                child: widget,
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
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight + expandedHeight / 2;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
