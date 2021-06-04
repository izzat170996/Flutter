import 'package:flutter/material.dart';
import 'package:komik/model/book.dart';

import 'detail_book.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Book> books = masterBuku.sublist(0, 5);
    List<Book> mbooks = masterBuku;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Center(
            child: Text('Selamat Datang Di Galery Komik'),
          ),
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.fromLTRB(16, 16, 16, 10),
            child: Text(
              'Komik Populer',
              style: TextStyle(fontFamily: 'Roboto', fontSize: 24),
            ),
          ),
          Container(
              height: 250,
              width: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: books
                    .map((e) => GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailBook(e);
                            }));
                          },
                          child: Container(
                              margin: EdgeInsets.only(
                                  left: (e == books.first) ? 16 : 0, right: 16),
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 3,
                                        color: Colors.black12,
                                        blurRadius: 15)
                                  ]),
                              child: Column(
                                children: [
                                  Container(
                                    height: 150,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(e.picture),
                                            fit: BoxFit.scaleDown)),
                                  ),
                                  Container(
                                      margin:
                                          EdgeInsets.fromLTRB(12, 12, 12, 6),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 6),
                                              child: Text(
                                                e.judul,
                                                style: TextStyle(
                                                    fontFamily: 'Roboto'),
                                              )),
                                          Container(
                                              child: Text(
                                            e.harga.toString(),
                                            style:
                                                TextStyle(fontFamily: 'Roboto'),
                                          ))
                                        ],
                                      )),
                                ],
                              )),
                        ))
                    .toList(),
              )),
          Container(
            margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Text(
              'Semua Komik',
              style: TextStyle(fontFamily: 'Roboto', fontSize: 24),
            ),
          ),
          Column(
            children: mbooks
                .map((e) => GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailBook(e);
                        }));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 16),
                              height: 200,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(e.picture),
                                      fit: BoxFit.scaleDown)),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width -
                                        100 -
                                        2 * 16,
                                    margin:
                                        EdgeInsets.only(left: 12, bottom: 6),
                                    child: Text(
                                      e.judul,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(fontFamily: 'Roboto'),
                                    )),
                                Container(
                                    margin:
                                        EdgeInsets.only(left: 12, bottom: 6),
                                    child: Text(
                                      e.harga.toString(),
                                      style: TextStyle(fontFamily: 'Roboto'),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(left: 12),
                                  child: Row(
                                    children: List<Widget>.generate(
                                            5,
                                            (index) => Icon(
                                                  (index < e.rate.round())
                                                      ? Icons.star
                                                      : Icons.star_outline,
                                                  size: 16,
                                                  color: Colors.amber,
                                                )) +
                                        [
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            e.rate.toString(),
                                            style:
                                                TextStyle(fontFamily: 'Roboto'),
                                          )
                                        ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ))
                .toList(),
          )
        ])));
  }
}
