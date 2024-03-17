import 'package:flutter/material.dart';

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MARKOPI",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'Khula',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF65451F),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            margin: EdgeInsets.all(16),
            color: Color(0xFFFCFFE7),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "25°C",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Berawan",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Laguboti, 29 Januari 2024",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.cloud_queue,
                    size: 100,
                    color: Colors.grey, // Mengatur warna ikon menjadi abu-abu
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5), // Spasi antara card
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceEvenly, // Menyusun card secara merata di tengah
            children: [
              buildHorizontalCard("BUDIDAYA", Icons.local_cafe),
              buildHorizontalCard("PANEN", Icons.shopping_basket),
              buildHorizontalCard("PASCA PANEN", Icons.shopping_bag),
            ],
          ),
          SizedBox(height: 10), // Spasi antara card tambahan
          Expanded(
            child: Card(
              margin: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize
                    .min, // Mengatur ukuran Column agar sesuai dengan anak-anaknya
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.asset(
                      'assets/images/kedai1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 4),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi ketika tombol ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(
                          0xFF43766C), // Mengatur warna latar belakang tombol
                    ),
                    child: Text(
                      'Baca Selengkapnya',
                      style: TextStyle(
                        color:
                            Colors.white, // Mengatur warna teks menjadi putih
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHorizontalCard(String title, IconData iconData) {
    return Container(
      width: 120, // Lebar card
      child: Card(
        color: Color.fromRGBO(124, 78, 45, 1),
        elevation: 4, // Tingkat ketinggian card
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(10), // Bentuk card menjadi persegi
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: 40,
                color: Colors.white,
              ), // Mengatur ukuran icon
              SizedBox(height: 8),
              Text(
                title,
                textAlign: TextAlign.center, // Menyelaraskan teks ke tengah
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
