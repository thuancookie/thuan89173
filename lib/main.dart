import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Color.fromRGBO(158, 158, 158, 0.2) light grey
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   brightness: Brightness.dark,
      //   primarySwatch: Colors.red,
      // ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      theme: ThemeData(
        brightness: Brightness.light,
        // primarySwatch: Colors.red,
      ),
      // home: const MyCategoryPage(),
      home: CheckOutPage(),
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
                              fillColor: Color(0x139E9E9E),
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
                              fillColor: Color(0x139E9E9E),
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

class MyCategoryPage extends StatefulWidget {
  const MyCategoryPage({super.key});

  @override
  State<MyCategoryPage> createState() => _MyCategoryPageState();
}

class _MyCategoryPageState extends State<MyCategoryPage> {
  final List<String> categoryName = [
    "Fashion",
    "Beauty",
    "Electronics",
    "Jewellery",
    "Footwear",
    "Toys",
    "Furniture",
    "Mobiles"
  ];
  final List<String> categoryIcon = [
    "https://cdn-icons-png.flaticon.com/512/2331/2331716.png",
    "https://cdn-icons-png.flaticon.com/512/3378/3378785.png",
    "https://cdn-icons-png.flaticon.com/512/2432/2432692.png",
    "https://cdn-icons-png.flaticon.com/512/2361/2361685.png",
    "https://cdn-icons-png.flaticon.com/512/5499/5499206.png",
    "https://cdn-icons-png.flaticon.com/512/3819/3819347.png",
    "https://cdn-icons-png.flaticon.com/512/1198/1198368.png",
    "https://cdn-icons-png.flaticon.com/512/2482/2482945.png"
  ];
  final List<String> itemName = [
    "Laptops / PC",
    "TV",
    "Dryers / Styling",
    "Headphones",
    "Tablet",
    "Mobile Covers",
    "Printers",
    "Powerbank",
    "Laptops / PC",
    "TV",
    "Dryers / Styling",
    "Headphones",
    "Tablet",
    "Mobile Covers",
    "Printers",
    "Powerbank",
  ];
  final List<String> itemImage = [
    "https://cdn-icons-png.flaticon.com/512/428/428001.png",
    "https://cdn-icons-png.flaticon.com/128/1023/1023521.png",
    "https://cdn-icons-png.flaticon.com/512/4352/4352945.png",
    "https://cdn-icons-png.flaticon.com/512/3791/3791461.png",
    "https://cdn-icons-png.flaticon.com/512/3616/3616856.png",
    "https://cdn-icons-png.flaticon.com/512/186/186239.png",
    "https://cdn-icons-png.flaticon.com/512/3233/3233446.png",
    "https://cdn-icons-png.flaticon.com/512/3902/3902176.png",
    "https://cdn-icons-png.flaticon.com/512/428/428001.png",
    "https://cdn-icons-png.flaticon.com/128/1023/1023521.png",
    "https://cdn-icons-png.flaticon.com/512/4352/4352945.png",
    "https://cdn-icons-png.flaticon.com/512/3791/3791461.png",
    "https://cdn-icons-png.flaticon.com/512/3616/3616856.png",
    "https://cdn-icons-png.flaticon.com/512/186/186239.png",
    "https://cdn-icons-png.flaticon.com/512/3233/3233446.png",
    "https://cdn-icons-png.flaticon.com/512/3902/3902176.png",
  ];

  int selectedIndex = 0;
  int selectedItem = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
        actions: [
          IconButton(
              color: Colors.black,
              onPressed: () => {print("Search button")},
              icon: Icon(Icons.search)),
          IconButton(
              color: Colors.black,
              onPressed: () => {print("Favorite button")},
              icon: Icon(Icons.favorite_border)),
          IconButton(
              color: Colors.black,
              onPressed: () => {print("More button")},
              icon: Icon(Icons.more_horiz_outlined))
        ],
      ),
      body: Container(
        color: Color.fromRGBO(158, 158, 158, 0.2),
        // height: 700,
        padding: EdgeInsets.only(top: 5),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
                child: categoryName.length > 0
                    ? ListView.separated(
                        itemCount: categoryName.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            // contentPadding: EdgeInsets.all(5),
                            // leading: Icon(Icons.local_grocery_store),
                            title: Container(
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage:
                                        NetworkImage("${categoryIcon[index]}"),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "${categoryName[index]}",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: selectedIndex == index
                                          ? Colors.pink
                                          : Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              // color: selectedIndex == index
                              // ? Color.fromRGBO(158, 158, 158, 0.2)
                              //     : Colors.white,
                            ),

                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },

                            // trailing: Icon(Icons.remove_circle_outline),
                          );
                        },
                        separatorBuilder: (BuildContext, int index) =>
                            const Divider(
                          color: Color(0x769E9E9E),
                        ),
                      )
                    : Center(
                        child: Text("Không có item nào!"),
                      ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              flex: 6,
              child: selectedIndex == 2
                  ? Container(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemCount: itemImage.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            contentPadding: EdgeInsets.all(1),
                            // leading: Icon(Icons.local_grocery_store),

                            title: Container(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Image.network(
                                    "${itemImage[index]}",
                                    height: 50,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "${itemName[index]}",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: selectedItem == index
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              color: selectedItem == index
                                  ? Color.fromRGBO(233, 30, 98, 0.5)
                                  : Colors.white,
                            ),
                            onLongPress: () {},
                            onTap: () {
                              setState(() {
                                selectedItem = index;
                              });
                            },

                            // trailing: Icon(Icons.remove_circle_outline),
                          );
                        },
                      ),
                    )
                  : Center(
                      child: Text("${categoryName[selectedIndex]} items"),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(158, 158, 158, 0.2),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text("Checkout"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
                color: Colors.white,
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(bottom: 15),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Cart Summary",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Subtotal(4 items)",
                              style: TextStyle(fontSize: 15),
                            ),
                            Spacer(),
                            Text(
                              "Rs. 7,090.00",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Promotion Discounts",
                              style: TextStyle(fontSize: 15),
                            ),
                            Spacer(),
                            Text(
                              "Rs. 300.00",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text(
                              "Add Coupon",
                              style: TextStyle(fontSize: 15),
                            ),
                            Spacer(),
                            Flexible(
                                child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Delivery",
                              style: TextStyle(fontSize: 15),
                            ),
                            Spacer(),
                            Text(
                              "Rs. 0.00",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Est. Total",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text(
                              "Rs. 6,790.00",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    )),
                  ],
                )),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(bottom: 15),
              child: Column(children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recipient Details",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                      color: Color.fromRGBO(216, 216, 216, 0.094),
                    ))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                // width: 30,
                Row(
                  children: [
                    Container(
                      width: 80,
                      child: TextField(
                        style: TextStyle(),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                          color: Color.fromRGBO(216, 216, 216, 0.094),
                        ))),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 230,
                      child: TextField(
                        style: TextStyle(),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                          color: Color.fromRGBO(216, 216, 216, 0.094),
                        ))),
                      ),
                    ),
                  ],
                )
              ]),
            ),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
