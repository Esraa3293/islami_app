import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class SuraContentProvider extends ChangeNotifier {
  List<String> verses = [];

  void loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.trim().split("\n");
    verses = lines;
    print(lines);
    notifyListeners();
  }
}
