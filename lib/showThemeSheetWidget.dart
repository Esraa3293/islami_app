import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:provider/provider.dart';

class ShowThemeSheetWidget extends StatelessWidget {
  const ShowThemeSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      color: provider.themeMode == ThemeMode.light
          ? Colors.white
          : MyThemeData.darkColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Light",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: provider.themeMode == ThemeMode.light
                                ? Theme.of(context).primaryColor
                                : Colors.white)),
                    Spacer(),
                    Icon(
                      Icons.done,
                      size: 30,
                      color: provider.themeMode == ThemeMode.light
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
              indent: 50,
              endIndent: 50,
              color: Theme.of(context).primaryColor,
            ),
            InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Dark",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: provider.themeMode != ThemeMode.light
                                ? MyThemeData.yellowColor
                                : Colors.black54)),
                    Spacer(),
                    Icon(
                      Icons.done,
                      size: 30,
                      color: provider.themeMode != ThemeMode.light
                          ? MyThemeData.yellowColor
                          : Colors.black54,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
