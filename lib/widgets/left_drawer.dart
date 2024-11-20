import 'package:flutter/material.dart';
import 'package:mamio/screens/list_itementry.dart';
import 'package:mamio/screens/menu.dart';
// Impor halaman ItemEntryFormPage jika sudah dibuat
import 'package:mamio/screens/itementry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFFFF9BF),
      child: ListView(
        children: [
          DrawerHeader(
            // Bagian drawer header
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 162, 2, 90),
            ),
            child: const Column(
              children: [
                Text(
                  'MAMIO',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text("Makan enak bersama MAMIO!",
                    // Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    )),
              ],
            ),
          ),
          // Bagian routing
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_basket),
            title: const Text('Tambah Item'),
            // Bagian redirection ke ItemEntryFormPage
            onTap: () {
              /*
              Buatlah routing ke ItemEntryFormPage di sini,
              setelah halaman ItemEntryFormPage sudah dibuat.
              */
              Navigator.pop(context); // Menutup drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ItemEntryFormPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.local_attraction_outlined),
            title: const Text('Daftar Item'),
            onTap: () {
                // Route menu ke halaman mood
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ItemEntryPage()),
                );
            },
        ),
        ],
      ),
    );
  }
}