import 'package:flutter/material.dart';

//Top Level/Root
void main() => runApp(MyApp());

//Widget StatelessWidget digunakan untuk menangani aplikasi sederhana
class MyApp extends StatelessWidget {
  @override
  //Isi dari widget
  Widget build(BuildContext context) {
    //Material App
    return MaterialApp(
      title: 'First App',
      //Home Page
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appbar
        appBar: AppBar(title: Text("Product Listing")),
        //body untuk content
        //menampilkan list
        body: ListView(
          shrinkWrap: true,
          //padding
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          //anggota dari list berupa widget children
          children: <Widget>[
            //memanggil class Productbox
            ProductBox(
                //berisi parameter yang diperlukan di class ProductBox
                name: "ACER",
                description: "Ini laptop ACer Cangih",
                price: 1000,
                image: "acer.png"),
            ProductBox(
                name: "Adventors",
                description: "Pixel is the most featureful phone ever",
                price: 800,
                image: "adventors.png"),
            ProductBox(
                name: "ASUS",
                description: "Laptop is most productive development tool",
                price: 2000,
                image: "asus.png"),
            ProductBox(
                name: "MAcbook",
                description:
                    "Tablet is the most useful device ever for meeting",
                price: 1500,
                image: "macbook_air.png"),
            ProductBox(
                name: "SamSUng",
                description: "Pendrive is useful storage medium",
                price: 100,
                image: "samsung.png"),
          ],
        ));
  }
}

//menggunakan widget StatelessWidget
class ProductBox extends StatelessWidget {
  //deklarasi variabel yang diterima dari MyHomePage
  ProductBox({Key key, this.name, this.description, this.price, this.image})
      : super(key: key);
  //menampung variabel yang diterima untuk dapat digunakan pada class ini
  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context) {
    //menggunakan widget container
    return Container(
        //padding
        padding: EdgeInsets.all(2),
        // height: 120,
        //menggunakan widget card
        child: Card(
            //membuat tampilan secara horisontal antar image dan deskripsi
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //children digunakan untuk menampung banyak widget
                children: <Widget>[
              Image.asset(
                "assets/appimages/" + image,
                width: 150,
              ),
              Expanded(
                  //child digunakan untuk menampung satu widget
                  child: Container(
                      padding: EdgeInsets.all(5),
                      //membuat tampilan secara vertikal
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //ini isi tampilan vertikal tersebut
                        children: <Widget>[
                          //menampilkan variabel menggunakan widget text
                          Text(this.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(this.description),
                          Text(
                            "Price: " + this.price.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                          //menampilkan widget icon  dibungkus dengan row
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Colors.deepOrange,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Colors.deepOrange,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Colors.deepOrange,
                                  ),
                                  Icon(Icons.star,
                                      size: 10, color: Colors.orange),
                                ],
                              )
                            ],
                          )
                        ],
                      )))
            ])));
  }
}
