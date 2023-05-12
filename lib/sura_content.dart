import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/sura_content_provider.dart';
import 'package:islami/sura_model.dart';
import 'package:provider/provider.dart';

class SuraContent extends StatelessWidget {
  static const String routeName = 'sura content';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;

    return ChangeNotifierProvider(
      create: (context) => SuraContentProvider(),
      builder: (context, child) {
        var provider = Provider.of<SuraContentProvider>(context)
          ..loadFile(args.index);
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
                args.suraName,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colors.black
                        : MyThemeData.yellowColor),
              ),
            ),
            body: Card(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.white
                  : MyThemeData.darkColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              elevation: 20,
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  thickness: 1,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Theme.of(context).primaryColor
                      : MyThemeData.yellowColor,
                  indent: 40,
                  endIndent: 40,
                ),
                itemBuilder: (context, index) => Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          provider.verses[index],
                          style: TextStyle(
                              color: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? Colors.black
                                  : MyThemeData.yellowColor),
                        ),
                      ),
                      Text(
                        {index + 1}.toString(),
                        style: TextStyle(
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Theme.of(context).primaryColor
                                    : MyThemeData.yellowColor),
                      )
                    ],
                  ),
                ),
                itemCount: provider.verses.length,
              ),
            ),
          ),
        );
      },
    );
  }
}
