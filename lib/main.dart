import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green,
            toolbarHeight: 100,
            title: Center(
              child: Text(
                "Sign In",
                // textAlign: TextAlign.center,
              ),
            )),
        body: Container(
          color: Colors.white,
          width: double.infinity,
          alignment: Alignment.center,
          child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                  // color: Colors.amber,
                  width: 300,
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: TextField(
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0x4C9E9E9E),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                              labelText: 'Username',
                              contentPadding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold))),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: TextField(
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0x4C9E9E9E),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                              labelText: 'Password',
                              contentPadding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold))),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      alignment: Alignment.centerRight,
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Forgot ",
                            style: TextStyle(color: Colors.grey)),
                        TextSpan(
                            text: "Username / Password?",
                            style: TextStyle(
                              color: Colors.green,
                            ))
                      ])),
                    ),
                    Container(
                      child: TextButton(
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.all(20),
                              fixedSize: const Size(
                                300,
                                50,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(50), // <-- Radius
                              ),
                              backgroundColor: Colors.green),
                          onPressed: () {},
                          child: Text("SIGN IN")),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 200),
                      child: const Text("Don't have an account?",
                          style: TextStyle(color: Colors.grey)),
                    ),
                    Container(
                      child: InkWell(
                        child: const Text("SIGN UP NOW",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold)),
                      ),
                    )
                  ]))),
        ));
  }
}
