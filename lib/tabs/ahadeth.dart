import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/hadethModel.dart';
import 'package:islami/hadeth_content.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadAhadethFile();
    }
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/basmala.png"),
          Divider(
            thickness: 2,
            color: Theme.of(context).primaryColor,
          ),
          Text(
            AppLocalizations.of(context)!.ahadeth,
            style: GoogleFonts.elMessiri(
                fontSize: 25, fontWeight: FontWeight.w500),
          ),
          Divider(
            thickness: 2,
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                thickness: 1,
                color: Theme.of(context).primaryColor,
                indent: 35,
                endIndent: 35,
              ),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethContent.routeName,
                      arguments: allAhadeth[index]);
                },
                child: Text(
                  allAhadeth[index].title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.quicksand(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              itemCount: allAhadeth.length,
            ),
          ),
        ],
      ),
    );
  }

  void loadAhadethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> ahadeth = value.split("#");
      for (int i = 0; i < ahadeth.length; i++) {
        int lastIndex = ahadeth[i].trim().indexOf("\n");
        String title = ahadeth[i].trim().substring(0, lastIndex);
        String content = ahadeth[i].trim().substring(lastIndex + 1);
        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
        setState(() {});
      }
      /*for (int i = 0; i < ahadeth.length; i++) {
        List<String> lines = ahadeth[i].trim().split("\n");
        String title = lines[0];
        print(title);
        lines.removeAt(0);
        List<String> content = lines;
        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
      }*/
    }).catchError((error) {
      print(error);
    });
  }
}
