import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Step 1
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black87),
      home: Login(),
    );
  }
}

// Step 2 - Create Homepage
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8),
      color: Color.fromARGB(255, 226, 226, 226),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            decoration:
                BoxDecoration(color: Colors.black87, shape: BoxShape.circle),
            child: Center(
              child: Icon(
                Icons.person,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Selamat Datang, Silahkan Masuk",
            style: TextStyle(fontSize: 20, color: Colors.black87),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87)),
              prefixIcon: Icon(
                Icons.person,
                size: 40,
              ),
              hintText: "Masukkan Username",
              hintStyle: TextStyle(color: Colors.black87),
              labelText: "Username",
              labelStyle: TextStyle(color: Colors.black87),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87)),
              prefixIcon: Icon(
                Icons.lock,
                size: 40,
              ),
              hintText: "Masukkan Password",
              hintStyle: TextStyle(color: Colors.black87),
              labelText: "Password",
              labelStyle: TextStyle(color: Colors.black87),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.black87,
            elevation: 5,
            child: Container(
              height: 50,
              child: InkWell(
                splashColor: Colors.white,
                onTap: () {},
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
