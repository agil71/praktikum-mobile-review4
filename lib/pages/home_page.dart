import 'package:flutter/material.dart';
// import 'package:pertemuan5/pages/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/200/300'),
              ),
              accountName: Text("Praktikum Mobile"),
              accountEmail: Text('mobile@gmail.com'),
              decoration: BoxDecoration(color: Colors.lightBlueAccent),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/setting');
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Cari'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/account');
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/setting');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Ke Setting Screen"),
              onPressed: () {
                // Navigator.push(context,
                //   MaterialPageRoute(builder: (context) {
                //     return const SettingsPage();
                //   })
                // );
                Navigator.pushNamed(context, '/setting');
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text("Ke Account Screen"),
              onPressed: () {
                Navigator.pushNamed(context, '/account');
              },
            ),
          ],
        ),
      ),
      
    );
  }
}
