import 'package:flutter/material.dart';
import 'package:listview/TabBar.dart';

void main() {
  runApp(MaterialApp(
    home: TabbarExample(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<User> users = [
    User(nama: "Muhammad Firdan Azhari", Kelas: "Hallo"),
    User(nama: "Bayu Septian Kurniawan", Kelas: "Hai"),
    User(nama: "Muh Wahyu Ageng Pambudi", Kelas: "Hello"),
    User(nama: "Muhammad Nurwahid Bimawan", Kelas: "Oi"),
    User(nama: "Muhammad Vitto Corleone", Kelas: "Hey"),
    User(nama: "Ahmad Aziz Wira Widodo", Kelas: "Bro"),
    User(nama: "Javier Gavra Abhinaya", Kelas: "Ngab"),
    User(nama: "Daffa Syauqi Syarif", Kelas: "Lur"),
    User(nama: "Khoiru Rizal Kalam Ismail", Kelas: "Woi"),
    User(nama: "Risqi Agung Pradana", Kelas: "Mas"),
    User(nama: "Maulana Rifky Adityo", Kelas: "Bang"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
        ListView.builder(
          padding: EdgeInsets.only(bottom: 20),
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            final User list = users[index];
            return InkWell(
              onLongPress: () {
                  showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Hapus Item'),
                        content: const Text('Tekan Ok untuk Menghapus'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context,'ok');
                              setState(() {
                                users.remove(list);
                              });
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
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
