import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<User> users = [
    User(nama: "Muhammad Firdan Azhari", Kelas: "11 PPLG 1"),
    User(nama: "Bayu Septian Kurniawan", Kelas: "11 PPLG 1"),
    User(nama: "Muh Wahyu Ageng Pambudi", Kelas: "11 PPLG 1"),
    User(nama: "Muhammad Nurwahid Bimawan", Kelas: "11 PPLG 1"),
    User(nama: "Muhammad Vitto Corleone", Kelas: "11 PPLG 1"),
    User(nama: "Ahmad Aziz Wira Widodo", Kelas: "11 PPLG 1"),
    User(nama: "Javier Gavra Abhinaya", Kelas: "11 PPLG 1"),
    User(nama: "Daffa Syauqi Syarif", Kelas: "11 PPLG 1"),
    User(nama: "Khoiru Rizal Kalam Ismail", Kelas: "11 PPLG 1"),
    User(nama: "Risqi Agung Pradana", Kelas: "11 PPLG 1"),
    User(nama: "Maulana Rifky Adityo", Kelas: "11 PPLG 1"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Siswa Kelas 11 PPLG 1"),
          backgroundColor: Colors.green,
        ),
        body: 
        ListView.builder(
          padding: EdgeInsets.only(bottom: 20),
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            final User list = users[index];
            return InkWell(
            onTap: (){
            // Do something
            },
            child: Card(
              child: Container(
                height: 70,
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(list.nama + '\n' + list.Kelas),
                    
                ],),
              ),
            ),
      );
    })
      );
  }
}

class User {
  String nama, Kelas;
  User({required this.nama, required this.Kelas});
}
