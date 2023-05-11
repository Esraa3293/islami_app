import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/tabs/ahadeth.dart';
import 'package:islami/tabs/quran.dart';
import 'package:islami/tabs/radio.dart';
import 'package:islami/tabs/sebha.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> tabs = [RadioTab(), SebhaTab(), AhadethTab(), QuranTab()];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            "assets/images/bg3.png",
            fit: BoxFit.fill,
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.appTitle,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label: AppLocalizations.of(context)!.radio,
                backgroundColor: Theme.of(context).primaryColor,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                label: AppLocalizations.of(context)!.sebha,
                backgroundColor: Theme.of(context).primaryColor,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                label: AppLocalizations.of(context)!.ahadeth,
                backgroundColor: Theme.of(context).primaryColor,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran.png")),
                label: AppLocalizations.of(context)!.quran,
                backgroundColor: Theme.of(context).primaryColor,
              ),
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }
}
