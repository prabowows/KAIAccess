import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CariKereta.dart';

class CariKota extends StatefulWidget {
  CariKota({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CariKotaState createState() => _CariKotaState();
}

class _CariKotaState extends State<CariKota> {
  @override
  void initState() {
    super.initState();
//    notificationService.setupService(context);
  }

  @override
  Widget build(BuildContext context) {
    List<String> litems = [
      "Cirebon",
      "Jakarta",
      "Kediri",
      "Kertosono",
      "Madiun",
      "Malang",
      "Nganjuk",
      "Ngawi",
      "Sragen",
      "Solo Balapan",
      "Surabaya",
      "Tulungagung",
      "Yogyakarta",
    ];
    return Scaffold(
      appBar: appBarCariKota(),
      body: Column(
        children: <Widget>[
          Expanded(child: listLokasi(litems)),
        ],
      ),
    );
  }

  Widget listLokasi(List<String> litems) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: ListView.builder(
          itemCount: litems.length,
          itemBuilder: (BuildContext ctxt, int index) =>
              buildBody(ctxt, index, litems)),
    );
  }

  Widget buildBody(BuildContext ctxt, int index, List<String> litems) {
    return GestureDetector(
      onTap: ()=> Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => CariKereta())),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              litems[index],
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              litems[index],
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12.0,
              ),
            ),
            Divider(height: 10.0, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  Widget buildBodyKereta(BuildContext ctxt, int index, List<String> litems) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        litems[index],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0,4.0,0.0,0.0),
                        child: Text(
                          "Ekonomi(C)",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        width : 80.0,
                        color: Color.fromRGBO(17, 95, 170, 0.1),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Center(
                            child: Text(
                              "Tersedia",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "Rp.220.000",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "/org",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10.0
                            ),
                          ),
                        ],
                      ),
                      Divider(height: 10.0, color: Colors.grey),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "21.00",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "06.00",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16.0,0.0,8.0,0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      "assets/ic_dot.png",
                      width: 5.0,
                      height: 5.0,
                    ),
                    Expanded(child: Divider()),
                    Image.asset(
                      "assets/ic_dotfill.png",
                      width: 5.0,
                      height: 5.0,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0,0.0,0.0,8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "PSN",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 11.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "LPE",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 11.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget appBarCariKota() {
    return AppBar(
      leading: IconButton(
        icon: Image.asset(
          "assets/ic_kai.png",
          width: 50.0,
          height: 50.0,
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: new InputDecoration(
              contentPadding: const EdgeInsets.all(8.0),
              border: new OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(5.0),
                ),
              ),
              filled: true,
              hintStyle: new TextStyle(fontSize: 10.0),
              hintText: "Cari Kota atau Stasiun Asal",
              fillColor: Colors.white),
        ),
      ),
      elevation: 0.0,
      backgroundColor: Color(0xFF115FAA),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      textTheme: TextTheme(
        title: TextStyle(
          color: Colors.white,
          fontFamily: 'raleway',
          fontSize: 15.0,
        ),
      ),
    );
  }
}
