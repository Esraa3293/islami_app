import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  static const String routeName = 'tasbeeh';

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  int zekr = 0;
  double angle = 0;
  List<String> azkar = [
    "سبحان الله",
    "الحمد لله",
    "لا اله الا الله",
    "الله أكبر"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/head of seb7a.png"),
            Transform.rotate(
              angle: angle,
              child: Image.asset("assets/images/body of seb7a.png"),
            ),
            Text("عدد التسبيحات",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 25, fontWeight: FontWeight.w500)),
            Container(
                alignment: Alignment.center,
                width: 70,
                height: 80,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(.57),
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  count.toString(),
                  style: Theme.of(context).textTheme.displaySmall,
                )),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              onPressed: () {
                if (count == 33) {
                  count = 0;
                  if (zekr == 3) {
                    zekr = 0;
                  } else {
                    zekr++;
                  }
                } else {
                  count++;
                }
                angle += 20;
                setState(() {});
              },
              child: Text(azkar[zekr],
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
