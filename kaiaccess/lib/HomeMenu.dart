import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'BookingPage.dart';
import 'CariKereta.dart';
import 'CariKota.dart';

final Widget placeholder = Container(color: Colors.grey);
final List<String> imgList = [
  'https://i.ibb.co/YB3LXLL/Rectangle-2.png',
  'https://penumpang.kai.id/images/promo/Kereta%20Api%20Online%20Travel%20Fair/portal-01.jpg',
  'https://1.bp.blogspot.com/-ydsQsd1m0Js/V6ruVhVwIQI/AAAAAAAAAbk/rdVp515G4WsPiXQzlwFwwpPrGcGCkoLRgCLcB/s1600/promo_tiket_merah_putih_merdeka.jpg'
];

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}

class HomeMenu extends StatefulWidget {
  HomeMenu({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeMenuState createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  int _current = 0;
  final List child = map<Widget>(
    imgList,
    (index, i) {
      return Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Image.network(i, fit: BoxFit.fill, width: 1000.0),
        ),
      );
    },
  ).toList();

  @override
  void initState() {
    super.initState();
//    notificationService.setupService(context);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Container(
        decoration: new BoxDecoration(color: Colors.white),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SliderBanner(),
          DotIndicator(),
          text1(),
          text2(),
          additionalMenu(),
          imageReska(),
          text3(),
          text4(),
          menuMakanan()
        ]),
      ),
    );
  }

  Widget imageReska() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Image.asset(
        "assets/ic_reska.png",
        width: 150,
        height: 50,
      ),
    );
  }

  Widget text1() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "Hai, kamu mau pergi kemana ?",
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget text3() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "Pesan Makananmu Di sini ya",
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget text2() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
      child: Text(
        "Pakai KAI Access aja yuk !",
        style: TextStyle(fontSize: 11.0),
      ),
    );
  }

  Widget text4() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
      child: Text(
        "Yuk pre order makanan dan minuman disini aja lebih praktis dan tidak lapar selama perjalanan.",
        style: TextStyle(fontSize: 11.0),
      ),
    );
  }

  Widget SliderBanner() {
    return CarouselSlider(
      height: MediaQuery.of(context).size.height * 0.2,
      items: child,
      autoPlay: true,
      enlargeCenterPage: true,
      aspectRatio: 2.0,
      onPageChanged: (index) {
        setState(() {
          _current = index;
        });
      },
    );
  }

  Widget DotIndicator() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: map<Widget>(
              imgList,
              (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index
                          ? Color(0xFF115FAA)
                          : Color.fromRGBO(0, 0, 0, 0.4)),
                );
              },
            ),
          ),
          Text("Lihat Semua Promo"),
        ],
      ),
    );
  }

  Widget menuMakanan() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 180.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 150.0,
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/menu_tiga.jpg"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Red Velvet',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Rp.22.000',
                        style: TextStyle(
                          color: Color(0xFF9B0000),
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 150.0,
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/menu_dua.png"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Onion Ring',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Rp.20.000',
                        style: TextStyle(
                          color: Color(0xFF9B0000),
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 150.0,
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/menu_satu.png"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Ramen',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Rp.25.000',
                        style: TextStyle(
                          color: Color(0xFF9B0000),
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget additionalMenu() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 8.0),
      child: Row /*or Column*/ (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              GestureDetector(
                onTap: ()=> Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => BookingPage())),
                child: Container(
                  color: Color.fromRGBO(255, 138, 52, 0.1),
                  child: IconButton(
                    iconSize: 51,
                    icon: Image.asset(
                      "assets/ic_antarkota.png",
                      width: 21.0,
                      height: 21.0,
                    ),
                  ),
                ),
              ),
              Text(
                'Antar Kota',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              GestureDetector(
                onTap: ()=> Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => CariKota())),
                child: Container(
                  color: Color.fromRGBO(17, 95, 170, 0.1),
                  child: IconButton(
                    iconSize: 51,
                    icon: Image.asset(
                      "assets/ic_lokal.png",
                      width: 21.0,
                      height: 21.0,
                    ),
                  ),
                ),
              ),
              Text(
                'Lokal',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                color: Color.fromRGBO(42, 199, 39, 0.1),
                child: IconButton(
                  iconSize: 51,
                  icon: Image.asset(
                    "assets/ic_bandara.png",
                    width: 21.0,
                    height: 21.0,
                  ),
                ),
              ),
              Text(
                'Bandara',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                color: Color.fromRGBO(193, 31, 31, 0.1),
                child: IconButton(
                  iconSize: 51,
                  icon: Image.asset(
                    "assets/ic_preorder.png",
                    width: 21.0,
                    height: 21.0,
                  ),
                ),
              ),
              Text(
                'Makanan',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
