import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Menu',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Warung Barokah'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: ListView(
          children: <Widget>[
            MenuItem(
                namaMenu: 'Nasi Goreng',
                fotoMenu:
                    'https://i.pinimg.com/564x/91/9d/77/919d7741edf8c5e879c7858c3ba83a7c.jpg',
                harga: 15000,
                rating: 4.5,
                deskripsi:
                    'Nasi goreng spesial dengan telur, ayam, dan sayuran.'),
            MenuItem(
                namaMenu: 'Mie Ayam',
                fotoMenu:
                    'https://i.pinimg.com/564x/52/67/91/526791d616ef015969e9a7507bf653c7.jpg',
                harga: 12000,
                rating: 4.0,
                deskripsi: 'Mie ayam dengan pangsit goreng dan bakso.'),
            MenuItem(
                namaMenu: 'Soto Ayam',
                fotoMenu:
                    'https://i.pinimg.com/564x/d9/14/ee/d914eedf08d2a7c9e1463b155fd471b0.jpg',
                harga: 10000,
                rating: 3.5,
                deskripsi:
                    'Soto ayam dengan suwiran ayam, bihun, dan telur rebus.'),
            MenuItem(
                namaMenu: 'Ayam Geprek',
                fotoMenu:
                    'https://i.pinimg.com/564x/de/35/70/de35701ccf387a146934d32e474ce13a.jpg',
                harga: 10000,
                rating: 4.3,
                deskripsi:
                    'Soto ayam dengan suwiran ayam, bihun, dan telur rebus.'),
            MenuItem(
                namaMenu: 'Sate Ayam',
                fotoMenu:
                    'https://i.pinimg.com/564x/69/63/4f/69634f232b300bb47e15381e6639a0e1.jpg',
                harga: 10000,
                rating: 4.5,
                deskripsi:
                    'Soto ayam dengan suwiran ayam, bihun, dan telur rebus.'),
            MenuItem(
                namaMenu: 'Lontong Sayur',
                fotoMenu:
                    'https://i.pinimg.com/564x/df/13/0b/df130b9ef1390607cb0271216ff6738e.jpg',
                harga: 10000,
                rating: 3.9,
                deskripsi:
                    'Soto ayam dengan suwiran ayam, bihun, dan telur rebus.'),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String namaMenu;
  final String fotoMenu;
  final int harga;
  final double rating;
  final String deskripsi;

  MenuItem(
      {required this.namaMenu,
      required this.fotoMenu,
      required this.harga,
      required this.rating,
      required this.deskripsi});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 25, left: 10, right: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: NetworkImage(fotoMenu), fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(namaMenu,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Row(
                    children: <Widget>[
                      Text('Rp. $harga', style: TextStyle(fontSize: 14)),
                      SizedBox(width: 10),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Text('$rating', style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  Text(deskripsi, style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
