import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  //deklarasi variabel
  final txtkodebuku = TextEditingController();
  final txtnamabuku = TextEditingController();
  final txthargabuku = TextEditingController();
  List<Widget> data = [];

  onTambah() {
    setState(() {
      data.add(ListTile(
        leading: Icon(Icons.circle),
        title: Text(txtkodebuku.text),
        subtitle: Text(txtnamabuku.text),
        trailing: Text(txthargabuku.text),
        
      ));
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: new Scaffold(
            appBar: new AppBar(title: Text("Toko Buku Ade Panji Gusmara 6SIA5")),
            body: new ListView(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextField(
                        controller: txtkodebuku,
                        decoration: InputDecoration(hintText: 'Kode Buku'),
                      ),
                      TextField(
                        controller: txtnamabuku,
                        decoration: InputDecoration(hintText: 'Nama Buku'),
                      ),
                      TextField(
                        controller: txthargabuku,
                        decoration: InputDecoration(hintText: 'Harga Buku'),
                      ),
                      RaisedButton(color: Colors.red, child: Text("Tambah Data"), onPressed: onTambah),
                    ],
                  ),
                ),
                new Column(
                  // Isi List View
                  children: data,
                )
              ],
            )));
  }
}