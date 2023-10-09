import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadethModel.dart';

class AhadethProvider extends ChangeNotifier {
  List<HadethModel> allAhadeth = [];

  void loadAhadethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> ahadeth = value.split("#");
      for (int i = 0; i < ahadeth.length; i++) {
        int lastIndex = ahadeth[i].trim().indexOf("\n");
        String title = ahadeth[i].trim().substring(0, lastIndex);
        String content = ahadeth[i].trim().substring(lastIndex + 1);
        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
        notifyListeners();
      }
      //notifyListeners();
      // for (int i = 0; i < ahadeth.length; i++) {
      //   List<String> lines = ahadeth[i].trim().split("\n");
      //   String title = lines[0];
      //   print(title);
      //   lines.removeAt(0);
      //   List<String> content = lines;
      //   HadethModel hadethModel = HadethModel(title, content);
      //   allAhadeth.add(hadethModel);
      // }
    }).catchError((error) {
      print(error);
    });
    //notifyListeners();
  }
}
