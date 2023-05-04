import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/sura_content.dart';
import 'package:islami/sura_model.dart';

class QuranTab extends StatelessWidget {
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  List<int> ayatNumbers = [
    7,
    286,
    200,
    176,
    120,
    165,
    206,
    75,
    129,
    109,
    123,
    111,
    43,
    52,
    99,
    128,
    111,
    110,
    98,
    135,
    112,
    78,
    118,
    64,
    77,
    227,
    93,
    88,
    69,
    60,
    34,
    30,
    73,
    54,
    45,
    83,
    182,
    88,
    75,
    85,
    54,
    53,
    89,
    59,
    37,
    35,
    38,
    29,
    18,
    45,
    60,
    49,
    62,
    55,
    78,
    96,
    29,
    22,
    24,
    13,
    14,
    11,
    11,
    18,
    12,
    12,
    30,
    52,
    52,
    44,
    28,
    28,
    20,
    56,
    40,
    31,
    50,
    40,
    46,
    42,
    29,
    19,
    36,
    25,
    22,
    17,
    19,
    26,
    30,
    20,
    15,
    21,
    11,
    8,
    8,
    19,
    5,
    8,
    8,
    11,
    11,
    8,
    3,
    9,
    5,
    4,
    7,
    3,
    6,
    3,
    5,
    4,
    5,
    6
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset("assets/images/quran1.png")),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Divider(
                      thickness: 2,
                      color: Theme.of(context).primaryColor,
                    ),
                    Text(
                      "Sura Name",
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
                      ),
                      itemBuilder: (context, index) => Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, SuraContent.routeName,
                                arguments: SuraModel(suraNames[index], index));
                          },
                          child: Text(
                            suraNames[index],
                            style: GoogleFonts.quicksand(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      itemCount: suraNames.length,
                    ))
                  ],
                ),
              ),
              VerticalDivider(
                thickness: 2,
                width: 0,
                indent: 7,
                color: Theme.of(context).primaryColor,
              ),
              Expanded(
                child: Column(
                  children: [
                    Divider(
                      thickness: 2,
                      color: Theme.of(context).primaryColor,
                    ),
                    Text(
                      "Ayat Number",
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
                      ),
                      itemBuilder: (context, index) => Center(
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            ayatNumbers[index].toString(),
                            style: GoogleFonts.quicksand(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      itemCount: ayatNumbers.length,
                    ))
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}