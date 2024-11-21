import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App+ Market',
      theme: ThemeData(),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HALAMAN LOGIN',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 33, 243, 33),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/images/login_draw.png'),
              SizedBox(height: 24),
              TextField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 1.0,
                          color: Color.fromARGB(255, 176, 167, 182)),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 1.0,
                          color: Color.fromARGB(255, 176, 167, 182)),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: "E-mail atau Username",
                    hintStyle: TextStyle()),
              ),
              const SizedBox(height: 16.0),
              TextField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 1.0,
                          color: Color.fromARGB(255, 176, 167, 182)),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 1.0,
                          color: Color.fromARGB(255, 176, 167, 182)),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle()),
              ),
              SizedBox(height: 20),
              Text('Lupa Password?'),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 33, 243, 33),
                ),
                child: Text('LOGIN'),
              ),
              SizedBox(height: 10),
              Text(
                'Belum Memiliki Akun?',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Daftar Akun',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 33, 243, 33),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('MENU PRODUK'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Stok 1'),
              Tab(text: 'Stok 2'),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'APP+ MARKET',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 33, 243, 33),
                ),
              ),
              ListTile(
                title: Text('Profile'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Pelayanan'),
                onTap: () {},
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Halaman Utama',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Pencarian',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Pengaturan',
            ),
          ],
          currentIndex: 0,
          onTap: (index) {},
        ),
        body: TabBarView(
          children: [
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Card(
                  child: Center(
                    child: Text('Produk $index'),
                  ),
                );
              },
            ),
            Center(child: Text('Produk Tidak Tersedia')),
          ],
        ),
      ),
    );
  }
}
