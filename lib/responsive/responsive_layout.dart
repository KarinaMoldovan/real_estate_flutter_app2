import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobilePage;
  final Widget desktopPage;

  const ResponsiveLayout(
      {Key? key, required this.mobilePage, required this.desktopPage})
      : super(key: key);

  //super apeleaza consturctorul metodei pe care o construim

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) //600 px
          {
        return mobilePage;
      } else {
        return desktopPage;
      }
    });
  }
}
