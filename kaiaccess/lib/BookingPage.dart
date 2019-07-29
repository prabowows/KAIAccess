import 'package:flutter/material.dart';

import 'CariKereta.dart';
import 'CariKota.dart';

class BookingPage extends StatefulWidget {
  BookingPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  void initState() {
    super.initState();
//    notificationService.setupService(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBookingPage(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0,4.0,16.0,4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0,4.0,8.0,4.0),
                    child: Image.asset(
                      "assets/ic_traingo.png",
                      width: 40.0,
                      height: 40.0,
                    ),
                  ),
                  Flexible(
                    child: TextFormField(
                      style: new TextStyle(
                          fontSize: 14.0,
                          height: 1.0,
                          color: Colors.black
                      ),
                      decoration: new InputDecoration(
                          hintText: 'Asal', labelText: 'Asal'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0,4.0,16.0,4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0,4.0,8.0,4.0),
                    child: Image.asset(
                      "assets/ic_traindate.png",
                      width: 40.0,
                      height: 40.0,
                    ),
                  ),
                  Flexible(
                    child: TextFormField(
                      style: new TextStyle(
                          fontSize: 14.0,
                          height: 1.0,
                          color: Colors.black
                      ),
                      // Use secure text for passwords.
                      decoration: new InputDecoration(
                          hintText: 'Tujuan', labelText: 'Tujuan'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0,4.0,16.0,4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0,4.0,8.0,4.0),
                    child: Image.asset(
                      "assets/ic_date.png",
                      width: 40.0,
                      height: 40.0,
                    ),
                  ),
                  Flexible(
                    child: TextFormField(
                      style: new TextStyle(
                          fontSize: 14.0,
                          height: 1.0,
                          color: Colors.black
                      ), // Use secure text for passwords.
                      decoration: new InputDecoration(
                          hintText: 'Tanggal Berangkat', labelText: 'Tanggal Berangkat'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0,4.0,16.0,4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0,4.0,8.0,4.0),
                    child: Image.asset(
                      "assets/ic_personal.png",
                      width: 40.0,
                      height: 40.0,
                    ),
                  ),
                  Flexible(
                    child: TextFormField(
                      style: new TextStyle(
                          fontSize: 14.0,
                          height: 1.0,
                          color: Colors.black
                      ),
                      // Use secure text for passwords.
                      decoration: new InputDecoration(
                          hintText: 'Penumpang', labelText: 'Penumpang'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24.0,32.0,28.0,4.0),
              child: Text(
                "Ketentuan",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(28.0,4.0,28.0,4.0),
              child: Text(
                "a. Hanya Tiket kereta api antar kota \nb. Hanya untuk satu penumpang per transaksi dalam satu nomor kereta api dan relasi yang sama. \nc. E-ticket harus sesuai dengan nama dan Nomor ID yang terdaftar dan ditunjukkan pada saat boarding.",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(28.0,28.0,28.0,4.0),
              child: SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  color: Color(0xff0053A0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                      "Cari Tiket",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                  ),
                    ),
                    onPressed: ()=> Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => CariKota())),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0))
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget appBarBookingPage() {
    return AppBar(
        leading: IconButton(
          icon: Image.asset(
            "assets/ic_kai.png",
            width: 50.0,
            height: 50.0,
          ),
        ),
        title: Text("Kereta Anta Kota"));
  }
}
