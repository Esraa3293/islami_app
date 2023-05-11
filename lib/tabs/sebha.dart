import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  static const String routeName = 'tasbeeh';

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  int zekr = 0;
  String text = "سبحان الله";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  count++;
                  setState(() {});
                  if (count == 34) {
                    count = 0;
                    zekr++;
                    switch (zekr) {
                      case 1:
                        text = "الحمد لله";
                        break;
                      case 2:
                        text = "لا إله إلا الله";
                        break;
                      case 3:
                        text = "الله أكبر";
                        break;
                      default:
                        text = "سبحان الله";
                        if (zekr == 3) {
                          zekr = 0;
                        }
                    }
                  }
                },
                child: Image.asset("assets/images/sebha_img.png")),
            Text("عدد التسبيحات",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 25, fontWeight: FontWeight.w500)),
            Text(count.toString()),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).primaryColor),
              ),
              onPressed: () {},
              child: Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
