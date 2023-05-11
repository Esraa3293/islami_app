import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Spacer(),
          Image.asset("assets/images/old_radio.png"),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "إذاعة القرآن الكريم",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Icon(
                Icons.replay,
                size: 30,
                color: Theme.of(context).primaryColor,
              ),
              Spacer(),
              Icon(
                Icons.play_arrow,
                size: 60,
                color: Theme.of(context).primaryColor,
              ),
              Spacer(),
              Icon(
                Icons.play_arrow_outlined,
                size: 30,
                color: Theme.of(context).primaryColor,
              ),
              Spacer()
            ],
          ),
          Spacer()
        ],
      ),
    );
  }
}
