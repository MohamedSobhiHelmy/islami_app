import 'package:flutter/material.dart';
import 'package:islami/MyThemeData.dart';

class SebhaTab extends StatefulWidget {
  static const String routeName = "sebha";

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;

  List<String> tasbeh = [
    'سبحان الله',
    'الحمد لله',
    'لا اله الا الله',
    'الله اكبر',
  ];

  int index = 0;

  double azkar = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Center(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                GestureDetector(
                  onTap: () {
                    onClicked();
                  },
                  child: Container(
                      child: Transform.rotate(
                          angle: azkar,
                          child: Image.asset(
                            'assets/images/tasbeh.png',
                            height: 250,
                            width: 232,
                          ))),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text("عدد التسبيحات", style: TextStyle(color: Colors.black)),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xFFB7937F)),
            child: Text(
              '$counter',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyThemeData.primaryColor),
            child: Text(
              '${tasbeh[index]}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }

  void onClicked() {
    counter++;
    if (counter == 33) {
      counter = 0;
      index++;
    }
    if (index == tasbeh.length) {
      index = 0;
    }
    azkar += 2 / 33;
    setState(() {});
  }
}
