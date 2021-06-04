import 'package:flutter/material.dart';

import 'model/book.dart';

class DetailBook extends StatefulWidget {
  final Book buku;

  DetailBook(this.buku);
  @override
  _DetailBookState createState() => _DetailBookState();
}

class _DetailBookState extends State<DetailBook> {
  int quantity = 1;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(children: [
        Container(
          color: Colors.lightGreen,
        ),
        SafeArea(
            child: Container(
          color: Colors.white,
        )),
        SafeArea(
          child: Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.buku.picture),
                    fit: BoxFit.scaleDown)),
          ),
        ),
        SafeArea(
            child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 56,
                  margin: EdgeInsets.only(top: 20, bottom: 90, left: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back, color: Colors.black)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 150),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 16,
                            child: Text("Judul",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                )),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 16,
                            child: Text(widget.buku.judul,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 16,
                            child: Text("Penyusun",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                )),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 16,
                            child: Text(widget.buku.penyusun,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 16,
                            child: Text("Tahun Terbit",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                )),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 16,
                            child: Text(widget.buku.tahunterbit,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 16,
                            child: Text("Halaman",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                )),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 16,
                            child: Text(widget.buku.halaman,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 16,
                            child: Text("Rate",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                )),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 16,
                            child: Text(widget.buku.rate.toString(),
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 16,
                            child: Text("Harga",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                )),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 16,
                            child: Text(widget.buku.harga.toString(),
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        child: Text("Jumlah Beli",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                            )),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 16,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (quantity > 1) {
                                    quantity -= 1;
                                    print(quantity);
                                  }
                                });
                              },
                              child: Container(
                                height: 26,
                                width: 26,
                                child: Icon(Icons.remove),
                              ),
                            ),
                            SizedBox(
                              width: 35,
                              child: Center(
                                  child: Text(
                                quantity.toString(),
                              )),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  quantity += 1;
                                });
                              },
                              child: Container(
                                height: 26,
                                width: 26,
                                child: Icon(Icons.add),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 16,
                            child: Text("Total Harga",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                )),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 16,
                            child: Text(
                              (widget.buku.harga * quantity).toString(),
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      // ignore: deprecated_member_use
                      RaisedButton(
                        onPressed: () {
                          final snackbar = SnackBar(
                              content: Text('Order Total ' +
                                  (widget.buku.harga * quantity).toString() +
                                  ' Berhasil'));
                          // ignore: deprecated_member_use
                          _scaffoldKey.currentState!.showSnackBar(snackbar);
                        },
                        color: Colors.lightGreen,
                        child: Text(
                          "Order Buku",
                          style: TextStyle(
                              fontFamily: 'Roboto', color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ))
      ]),
    );
  }
}
