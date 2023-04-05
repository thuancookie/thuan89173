import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  // runApp(NavApp());
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

      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Home'),
      //   ),
      //   body: Center(child: Text("home")),
      // ),

      // routes: <String, WidgetBuilder>{
      //   '/': (BuildContext context) {
      //     return Scaffold(
      //       appBar: AppBar(
      //         title: const Text('Home Route'),
      //       ),
      //       body: Center(
      //         child: Text('Hello World'),
      //       ),
      //     );
      //   },
      //   '/about': (BuildContext context) {
      //     return Scaffold(
      //       appBar: AppBar(
      //         title: const Text('About Route'),
      //       ),
      //     );
      //   }
      // },
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
      //   ],
      // ),
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
  int _counter = 0;
  // int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Business',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 2: School',
  //     style: optionStyle,
  //   ),
  // ];
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
                          text: TextSpan(
                              // text: "Forgot",
                              // style: TextStyle(color: Colors.black)),
                              children: [
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
                      child: const Text("Forgot ",
                          style: TextStyle(color: Colors.grey)),
                    ),
                    Container(
                        //     child: const SizedBox(
                        //   width: 200.0,
                        //   height: 300.0,
                        //   child: FilledButton.tonal(
                        //     onPressed: null,
                        //     child: const Text('Enabled'),
                        //   ),
                        // )
                        ),
                  ]))),
        ));
  }
}

class NavApp extends StatelessWidget {
  const NavApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "VeboTV",
      home: HomeScreen(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> tabs = [
    Container(
      child: Center(
        child: Text("Trang chu"),
      ),
    ),
    Container(
      child: Center(
        // child: Text("List"),
        child: ListViewApp(),
      ),
    ),
    Container(
      child: Center(
        // child: Text("List"),
        child: Text("Thể thao mạo hiểm"),
      ),
    ),
    Container(
        child: Center(
      // child: Text("List"),
      child: Text("Thêm"),
    ))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: tabs[_selectedIndex],
        backgroundColor: Color(0xFF2f3542),
        leading: Container(
          margin: EdgeInsets.all(10),
          height: 300,
          width: 500,
          child: Image.asset(
            "../images/Ronin-logo-white.png",
            fit: BoxFit.fill,
          ),

          // child: Image.network(
          //   "https://tructiep.vebo3.org/static/img/logo.png",
          //   fit: BoxFit.cover,
          // ),
        ),
      ),
      body: Center(
        child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 800,
              width: 300,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              // child: Row(
              //   children: [
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Banner(
                      message: 'Offer 20% off',
                      location: BannerLocation.topEnd,
                      color: Colors.red,
                      child: Container(
                        height: 180,
                        width: 280,
                        child: Image.network(
                          'https://raw.githubusercontent.com/o7planning/rs/master/flutter/fast_food.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 400,
                      width: 300,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: ListScreen(),
                    ),
                  ]),
              // ],
              // ),
            )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Color(0xFF2ed573),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Trang chủ",
            icon: Icon(Icons.home_rounded),
          ),
          BottomNavigationBarItem(
            label: "Đang diễn ra",
            icon: Icon(Icons.live_tv_rounded),
          ),
          BottomNavigationBarItem(
            label: "Thể thao mạo hiểm",
            icon: Icon(Icons.gamepad_rounded),
          ),
          BottomNavigationBarItem(
            label: "Thêm",
            icon: Icon(Icons.more_horiz_rounded),
          )
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            if (index == 0) {
              tabs[0];
            }
            if (index == 1) {
              tabs[1];
            }
          });
          // _selectedIndex = index;
        },
        // onTap: (index) {
        //   setState(() {
        //     _selectedIndex = index;
        //   });
        // },
      ),
    );
  }
}

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final List<String> list = ["1", "2", "3"];

  final List<String> league = ["Premier league", "Bundesliga", "La Liga"];
  final List<String> match = [
    "Liverpool vs Manchester City",
    "Liverpool vs Manchester City",
    "Liverpool vs Manchester City"
  ];

  // final List<String> data = ["1", "2", "3"];
  // final List<String> FirstName = ["1", "2", "3"];
  // final List<String> LastName = ["1", "2", "3"];
  // final List<String> Bill_City = ["1", "2", "3"];
  // final List<String> Customer_Id = ["1", "2", "3"];

  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // list.sort();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          backgroundColor: Colors.grey,
          title: Text("${league[0]}"),
        ),
        body: match.length > 0
            ? ListView.separated(
                itemCount: match.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    // leading: Icon(Icons.local_grocery_store),
                    title: Text("${match[index]}"),

                    onLongPress: () {
                      // setState(() {
                      //   match.removeAt(index);
                      // });
                    },
                    // trailing: Icon(Icons.remove_circle_outline),
                  );
                },
                separatorBuilder: (BuildContext, int index) => const Divider(
                  color: Colors.grey,
                ),
              )
            : Center(
                child: Text("Không có item nào!"),
              ),
        // floatingActionButton: FloatingActionButton(
        //     child: Icon(Icons.save),
        //     onPressed: () {
        //       setState(() {
        //         list.add(textController.text);
        //         textController.clear();
        //       });
        //     }),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ListViewApp extends StatefulWidget {
  @override
  _ListViewAppState createState() => _ListViewAppState();
}

class _ListViewAppState extends State<ListViewApp> {
  final List<String> list = [];
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    list.sort();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: TextField(
            controller: textController,
          ),
        ),
        body: list.length > 0
            ? ListView.separated(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.local_grocery_store),
                    title: Text("${list[index]}"),
                    onLongPress: () {
                      setState(() {
                        list.removeAt(index);
                      });
                    },
                    trailing: Icon(Icons.remove_circle_outline),
                  );
                },
                separatorBuilder: (BuildContext, int index) => const Divider(
                  color: Colors.black,
                ),
              )
            : Center(
                child: Text("Không có item nào!"),
              ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.save),
            onPressed: () {
              setState(() {
                list.add(textController.text);
                textController.clear();
              });
            }),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
