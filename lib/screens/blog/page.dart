import 'package:flutter/material.dart';
import 'package:zoomed_app/screens/blog/ui_tools/custom_clip_path.dart';
import 'package:zoomed_app/screens/blog/ui_tools/custom_sliver_delegete_header.dart';

class PageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar(),
          SliverPersistentHeader(
            floating: true,
            pinned: true,
            delegate: CustomSliverDelegate(
                expandedHeight: 300, widget: _sliverBarHeader(context)),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Theme.of(context).primaryColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300],
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
    );
  }

  Widget _sliverBarHeader(BuildContext context) => Container(
        child: Text(
          'Test Header',
          style: Theme.of(context).textTheme.headline6,
        ),
      );
}
