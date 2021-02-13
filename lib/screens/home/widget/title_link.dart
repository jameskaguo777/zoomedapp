import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleLinkWidget extends StatelessWidget {
  TitleLinkWidget({Key key, this.linkTitle, this.route, this.title, this.widget}) : super(key: key);

  final String title, linkTitle, route;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 1),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline6.copyWith(fontWeight: FontWeight.bold,)
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
                        linkTitle,
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
          ),
          SizedBox(
            height: 10,
          ),
          widget,
        ],
      ),
    );
  }
}
