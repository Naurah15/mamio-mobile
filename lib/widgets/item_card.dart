import 'package:flutter/material.dart';
import 'package:mamio/screens/list_itementry.dart';
import 'package:mamio/screens/login.dart';
import 'package:mamio/screens/itementry_form.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ItemHomepage {
    final String name;
    final IconData icon;
    final Color color;  // Menambahkan parameter warna untuk setiap item
    ItemHomepage(this.name, this.icon, this.color);  // Menambahkan parameter warna di konstruktor
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item; 
  
  const ItemCard(this.item, {super.key}); 

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Material(
      // Menggunakan warna yang ditentukan pada ItemHomepage
      color: item.color,  // Menyesuaikan warna latar belakang dengan warna yang diberikan di ItemHomepage
      borderRadius: BorderRadius.circular(12),
      
      child: InkWell(
        onTap: () async {
          // Menampilkan pesan SnackBar pada saat kartu ditekan
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );

          // Navigasi ke halaman yang sesuai berdasarkan nama item
          if (item.name == "Tambah Item") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ItemEntryFormPage()));
          } else if (item.name == "Lihat Daftar Item") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ItemEntryPage()));
          } else if (item.name == "Logout") {
            final response = await request.logout(
                "http://127.0.0.1:8000/auth/logout/");
            String message = response["message"];
            if (context.mounted) {
              if (response['status']) {
                String uname = response["username"];
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("$message Sampai jumpa, $uname."),
                ));
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message)),
                );
              }
            }
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
