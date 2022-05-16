import 'package:flutter/material.dart';
import '../colorfilter/color_filters.dart';
import 'search.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Beranda')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            // Bottom overloaded by xxx pixels in flutter
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Ink.image(
                  image: NetworkImage(
                      'https://i.postimg.cc/3JPs5pRw/detektif.jpg'),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Text(
                  '\nBarangmu hilang?\n',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Search()));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Cari'), // <-- Text
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        // <-- Icon
                        Icons.search,
                        size: 16.0,
                      ),
                    ],
                  ),
                ),
                Text(
                  '\nSiapa tau ada yang nemuin!\n',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500),
                ),
                Card(
                  // Card
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  child: Column(
                    children: [
                      Stack(
                        // alignment: Alignment.center,
                        children: [
                          Ink.image(
                            image: NetworkImage(
                                'https://i.postimg.cc/3JPs5pRw/detektif.jpg'),
                            colorFilter: ColorFilters.greyscale,
                            child: InkWell(
                              onTap: () {},
                            ),
                            height: 240,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 16,
                            right: 16,
                            left: 16,
                            child: Text(
                              'Lost And Found',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.all(16).copyWith(bottom: 0),
                        child: Text(
                          'Kamu menemukan barang? Kembalikan dengan cara',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(height: 8),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            child: Text('Lapor Yuk!',
                                style: TextStyle(fontSize: 14)),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.red,
                              size: 20.0,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}