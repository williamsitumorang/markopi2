import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; // Import CarouselSlider package

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Beranda'),
    Text('Komunitas'),
    Text('Permintaan'),
    Text('Notifikasi'),
    Text('Profil'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      body: SingleChildScrollView(
        // Wrap the body with SingleChildScrollView to handle overflow
        child: Column(
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildHorizontalCard("BUDIDAYA", Icons.local_cafe),
                buildHorizontalCard("PANEN", Icons.shopping_basket),
                buildHorizontalCard("PASCA PANEN", Icons.shopping_bag),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start, // Adjusted alignment
              children: [
                buildHorizontalCard("KEDAI KOPI", Icons.local_cafe),
                buildHorizontalCard("PERMINTAAN", Icons.shopping_basket),
              ],
            ),
            SizedBox(height: 10), // Spasi antara card tambahan
            Row(
              children: [
                Expanded(
                  // Wrap each Expanded with a Flexible widget
                  child: Card(
                    margin: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
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
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
              ),
              items: [
                SingleChildScrollView(
                  child:
                      buildCard('assets/images/kedai1.png', 'Kedai 1 Caption'),
                ),
                SingleChildScrollView(
                  child:
                      buildCard('assets/images/kedai2.jpeg', 'Kedai 2 Caption'),
                ),
                // Add more images here if needed
              ],
            ),
            Row(
              children: [
                Expanded(
                  // Wrap each Expanded with a Flexible widget
                  child: Card(
                    margin: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
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
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 10), // Additional spacing
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF43766C), // Background color
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Komunitas',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Permintaan',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifikasi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profil',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          showSelectedLabels: _selectedIndex !=
              0, // Hide selected item label if it's not Beranda
          showUnselectedLabels: false, // Hide unselected items label
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  Widget buildHorizontalCard(String title, IconData iconData) {
    return Container(
      width: 120,
      child: Card(
        color: Color.fromRGBO(124, 78, 45, 1),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
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
              ),
              SizedBox(height: 8),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 254, 252, 252)),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(String imagePath, String caption) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.all(16),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 8), // Spacing between image and caption
        Text(
          caption,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
