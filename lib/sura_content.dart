import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/sura_model.dart';

class SuraContent extends StatefulWidget {
  static const String routeName = 'sura content';

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(args.index);
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/bg3.png"),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.suraName,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        body: Card(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          elevation: 20,
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
              color: Theme.of(context).primaryColor,
              indent: 40,
              endIndent: 40,
            ),
            itemBuilder: (context, index) => Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      verses[index],
                    ),
                  ),
                  Text(
                    {index + 1}.toString(),
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
            ),
            itemCount: verses.length,
          ),
        ),
      ),
    );
  }

  void loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.trim().split("\n");
    verses = lines;
    print(lines);
    setState(() {});
  }
}
