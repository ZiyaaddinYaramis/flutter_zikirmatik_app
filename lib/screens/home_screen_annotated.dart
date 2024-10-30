import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter =
      0; // _counter değişkeni oluşturduk ve 0 değeri atadık. Baslangic degeri.

  // 1.Yol. Sayacimizin degerini arttiracak methodu olusturuyoruz.
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++; // _counter değişkenini 1 arttırdık
  //   });
  // }

  // 2.Yol. Sayacimizin degerini arttiracak methodu olusturuyoruz.
  // void _incrementCounter() => setState(() {
  //       _counter++; // _counter değişkenini 1 arttırdık
  //     });

  // 3.Yol. Sayacimizin degerini arttiracak methodu olusturuyoruz.
  void _incrementCounter() {
    _counter++; // _counter değişkenini 1 arttırdık
    setState(() {}); // setState() methodunu çağırarak sayfayı yeniliyoruz.
    // _counter++; 'i illa metodun icine yazmamiza gerek yok. setState() methodu calistiginda zaten sayfa yenilenir.
  }

  void _resetCounter() {
    _counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191919),
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
              child: _resetButton(),
            ),
          ]),
        ],
      )),
    );
  }

  GestureDetector _resetButton() {
    return GestureDetector(
      onTap: () => _resetCounter(),
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          //color: Colors.red[200],
          borderRadius: BorderRadius.circular(60),
        ),
      ),
    );
  }

  GestureDetector _incrementButton() {
    return GestureDetector(
      onTap: () {
        _incrementCounter();
      },
      //onTap:() => _incrementCounter(), // bu sekilde de yazilabilir
      //ontap: _incrementCounter, // bu sekilde de yazilabilir. Ancak bu durumda parametre almiyor.
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
      //_counter.toString(), // counter değişkenini stringe çevirip yazdırıyoruz. 1. yol
      '$_counter', // counter değişkenini stringe çevirip yazdırıyoruz. 2. yol
      style: const TextStyle(
          fontFamily: 'Digital7', fontSize: 50, color: Colors.white),
    );
  }
}
