import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new CardProfile(),
      routes: <String, WidgetBuilder>{
        'Telpon': (BuildContext context) => new Telpon(),
        'Email': (BuildContext context) => new Email(),
        'Alamat': (BuildContext context) => new Alamat(),
        'JenisKelamin': (BuildContext context) => new JenisKelamin(),
        'Hobi': (BuildContext context) => new Hobi(),
        'CitaCita': (BuildContext context) => new CitaCita(),
      },
    ));

class CardProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/img/user.webp'),
            ),
            Text(
              'Yulianda Luthfiana',
              style: TextStyle(
                  fontFamily: 'WhiteDream',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  fontFamily: 'BebasNeue',
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  letterSpacing: 10.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
                height: 40.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: new TextButton(
                  child: Text(
                    '+62 888 0438 4408',
                    style: (TextStyle(
                        color: Colors.teal,
                        fontFamily: 'BebasNeue',
                        fontSize: 20.0)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'Telpon');
                  },
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.teal,
                ),
                title: new TextButton(
                  child: Text(
                    'yuliandalthfn@gmail.com',
                    style: (TextStyle(
                        color: Colors.teal,
                        fontFamily: 'BebasNeue',
                        fontSize: 20.0)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'Email');
                  },
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.teal,
                ),
                title: new TextButton(
                  child: Text(
                    'Jalan Sungai Miai Dalam RT.05 NO.21',
                    style: (TextStyle(
                        color: Colors.teal,
                        fontFamily: 'BebasNeue',
                        fontSize: 20.0)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'Alamat');
                  },
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.female,
                  color: Colors.teal,
                ),
                title: new TextButton(
                  child: Text(
                   'Perempuan',
                    style: (TextStyle(
                        color: Colors.teal,
                        fontFamily: 'BebasNeue',
                        fontSize: 20.0)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'JenisKelamin');
                  },
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.book,
                  color: Colors.teal,
                ),
                title: new TextButton(
                  child: Text(
                    'Membaca',
                    style: (TextStyle(
                        color: Colors.teal,
                        fontFamily: 'BebasNeue',
                        fontSize: 20.0)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'Hobi');
                  },
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.teal,
                ),
                title: new TextButton(
                  child: Text(
                    'Guru',
                    style: (TextStyle(
                        color: Colors.teal,
                        fontFamily: 'BebasNeue',
                        fontSize: 20.0)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'CitaCita');
                  },
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}

class Telpon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text('Detail Telepon'),
      ),
      body: new Center(
        child: new Text(
          'Telpon Lengkap = +6288804384408',
          style: (TextStyle(
              color: Colors.white, fontFamily: 'BebasNeue', fontSize: 20.0)),
        ),
      ),
    );
  }
}

class Email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text('Detail Email'),
      ),
      body: new Center(
        child: new Text(
          'Email saya = yuliandalthfn@gmail.com',
          style: (TextStyle(
              color: Colors.white, fontFamily: 'BebasNeue', fontSize: 20.0)),
        ),
      ),
    );
  }
}

class Alamat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text('Detail Alamat'),
      ),
      body: new Center(
        child: new Text(
          'Alamat Lengkap = Jl. Sungai Sungai Miai Dalam RT.05 NO.21',
          style: (TextStyle(
              color: Colors.white, fontFamily: 'BebasNeue', fontSize: 20.0)),
        ),
      ),
    );
  }
}

class JenisKelamin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text('Detail Jenis Kelamin'),
      ),
      body: new Center(
        child: new Text(
          'Jenis Kelamin = Perempuan',
          style: (TextStyle(
              color: Colors.white, fontFamily: 'BebasNeue', fontSize: 20.0)),
        ),
      ),
    );
  }
}

class Hobi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text('Detail Hobi'),
      ),
      body: new Center(
        child: new Text(
          'Hobi saya = Membaca',
          style: (TextStyle(
              color: Colors.white, fontFamily: 'BebasNeue', fontSize: 20.0)),
        ),
      ),
    );
  }
}

class CitaCita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text('Detail 5 Tahun Kedapan'),
      ),
      body: new Center(
        child: new Text(
          '5 Tahun Kedepan = Untuk menjadi guru',
          style: (TextStyle(
              color: Colors.white, fontFamily: 'BebasNeue', fontSize: 20.0)),
        ),
      ),
    );
  }
}
