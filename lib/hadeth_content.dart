import 'package:flutter/material.dart';
import 'package:islami/hadethModel.dart';
import 'package:islami/my_theme.dart';

class HadethContent extends StatelessWidget {
  static const String routeName = 'hadeth';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(Theme.of(context).brightness == Brightness.light
            ? "assets/images/bg3.png"
            : "assets/images/dark_main_bg.png"),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black
                      : MyThemeData.yellowColor,
                ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.white
                  : MyThemeData.darkColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                  side: BorderSide(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Theme.of(context).primaryColor
                          : MyThemeData.yellowColor)),
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  args.content,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.black
                          : MyThemeData.yellowColor),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
