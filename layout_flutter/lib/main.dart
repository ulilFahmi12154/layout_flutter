import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Alam di Tulungagung',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Tulungagung, Jawa Timur, Indonesia',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          /* soal 3*/
          Icon(Icons.star, color: Colors.red[500]),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    const String wisataText =
      'Waduk Wonorejo adalah waduk di Desa Wonorejo, Kecamatan Pagerwojo, Kabupaten Tulungagung, Jawa Timur, yang berfungsi sebagai penyedia air bersih, irigasi, PLTA, dan objek wisata alam dengan area perbukitan, kolam renang, serta wahana seperti paddling dan ATV. Dibangun pada tahun 1994/1995, waduk ini memiliki kapasitas sekitar 122 juta meter kubik dan dikelola oleh Jasa Tirta 1.\n\n'
      'Nama: Muhammad Ulil Fahmi Ma\'rifatulloh\n'
      'NIM: 2341760194';

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        wisataText,
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: "Flutter layout: Muhammad Ulil Fahmi Ma'rifatulloh 2341760194",
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        body: ListView(
          children: [
            Image.asset(  
              'images/bendungan_wonorejo.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
            // const Text('Hello, World!'),
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}