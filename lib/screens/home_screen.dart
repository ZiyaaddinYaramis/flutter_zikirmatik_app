import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191919),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(alignment: Alignment.center, children: [
            Image.asset('assets/images/zikirmatik.png', width: 300),
            Positioned(
              top:
                  46, // konumlandirmayi deneyerek ayarliyoruz. baska bir yolu yok..
              right:
                  80, // konumlandirmayi deneyerek ayarliyoruz. baska bir yolu yok..
              child: _counterText(),
            ),
            Positioned(
                bottom: 30,
                // left: 0, right: 0, // bunu istemeyiz cunku uzatir
                child: _incrementButton()),
            Positioned(
              right: 76,
              bottom: 114,
              child: GestureDetector(
                onTap: () => print('Reset'),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    //color: Colors.red[200],
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
            ),
          ]),
        ],
      )),
    );
  }

  GestureDetector _incrementButton() {
    return GestureDetector(
      onTap: () {
        print('Tapped');
      },
      child: Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            //color: Colors.red[200], // artik akldirabiliriz burayi derdimiz  conteiner'i görmekti artik görunmez oldu
            borderRadius: BorderRadius.circular(60),
          )),
    );
  }

  Text _counterText() {
    return Text(
      '0',
      style:
          TextStyle(fontFamily: 'Digital7', fontSize: 50, color: Colors.white),
    );
  }
}
