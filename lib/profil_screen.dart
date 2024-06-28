import 'package:flutter/material.dart';

// menggunakan STL atau statelesswidget
// untuk halaman statis atau tidak ada perubahan data
class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Profil'),
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 61,
              backgroundColor: Colors.pink,
              child: CircleAvatar(
                radius: 60,
                backgroundImage:
                    NetworkImage('https://picsum.photos/100/100?random'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nama : Endri Adi Saputro",
                  style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                ),
                Text("Nim    : 230103247",
                    style: TextStyle(fontSize: 20, color: Colors.blueGrey)),
                Text("Prodi  : S1 Teknik Informatika / Kelas C",
                    style: TextStyle(fontSize: 20, color: Colors.blueGrey)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("edit"),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("hapus"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
