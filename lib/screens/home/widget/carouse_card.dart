import 'package:flutter/material.dart';

class CarouseCard extends StatelessWidget {
  CarouseCard({
    Key key,
    this.isOverlineVisible = false,
    @required this.imageLink,
    this.overline1T,
    this.overline2T,
    
    @required this.title,
    @required this.textStyle
  }) : super(key: key);
  final String overline1T, overline2T, title, imageLink;
  final bool isOverlineVisible;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.all(0),
      alignment: Alignment.bottomCenter,
      child: Card(
        color: Colors.black38,
        margin: const EdgeInsets.all(0),
        // elevation: 10,
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: isOverlineVisible
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Wrap(
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        direction: Axis.horizontal,
                        children: [
                          Text(overline1T,
                              style: Theme.of(context)
                                  .textTheme
                                  .overline
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
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
                          Text(overline2T,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .overline
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Text(
                        title,
                        style: textStyle,
                      )
                    ],
                  )
                : Text(
                    title,
                    style: textStyle,
                  ),
          ),
        ),
      ),
      // width: MediaQuery.of(context).size.width * .6,
      // height: MediaQuery.of(context).size.width * .6,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor,
              blurRadius: 1,
              spreadRadius: 2,
              offset: Offset(0, 0),
            )
          ],
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(imageLink))),
    );
  }
}
