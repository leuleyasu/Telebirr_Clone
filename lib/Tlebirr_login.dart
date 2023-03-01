import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_11/navbar.dart';

import 'Telebirr_clone.dart';
// import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DropDownButton',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const TelebirLogin(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TelebirLogin extends StatefulWidget {
  const TelebirLogin({Key? key}) : super(key: key);

  @override
  _TelebirLoginState createState() => _TelebirLoginState();
}

class _TelebirLoginState extends State<TelebirLogin> {
// Initial Selected Value
  String dropdownvalue = 'Languages';

// List of items in our dropdown menu
  var items = [
    'Languages',
    'English',
    'አማርኛ',
    'Afaan Oromo',
    'ትግርኛ',
    'Af somali',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRect(
                child: Image.asset("assets/images .png",
                    fit: BoxFit.fill, height: 150, width: 200),
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue,

                // Down Arrow Icon
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.amber,
                  size: 40,
                ),

                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ],
          ),
          const Text(
            "Welcome to telebirr",
            style: TextStyle(
                color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue)
                  // border: BoxBorder(Colors.blue),
                  // border: BoxBorder.lerp(a, b, t)

                  ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: Text("Mobile Number"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 8),
                            child: Text(
                              "+251",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 17),
                        child: TextFormField(
                          // cursorHeight: 50,
                          // obscureText: viewB ? true : false,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(left: 70),
                              suffixIconColor: Color.fromRGBO(68, 138, 255, 1),
                              // suffixText: "+251",
                              hintText: "Enter Mobile Number",
                              hintStyle: TextStyle(
                                fontSize: 15,
                                // color: Colors.blueAccent,
                                // fontWeight: FontWeight.bold,
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                    ]),
                  ]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue)
                  // border: BoxBorder(Colors.blue),
                  // border: BoxBorder.lerp(a, b, t)

                  ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: Text("PIN"),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 17),
                        child: TextFormField(
                          // cursorHeight: 50,
                          // obscureText: viewB ? true : false,
                          decoration: const InputDecoration(
                              // contentPadding: EdgeInsets.only(left: 70),
                              suffixIconColor: Color.fromRGBO(68, 138, 255, 1),
                              // suffixText: "+251",
                              hintText: "Enter PIN",
                              hintStyle: TextStyle(
                                fontSize: 15,
                                // color: Colors.blueAccent,
                                // fontWeight: FontWeight.bold,
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                    ]),
                  ]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 200),
            child: Text(
              "PIN must be 6 digit",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 220),
            child: Text(
              "Forgot PIN ?",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: 350,
            child: FilledButton(
              child: const Text(
                " Login",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NavBar()));
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text("Dont have an account?"),
                Text(
                  "Create New account",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Copyright 1894-2021 @ Ehio telecom.All",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text(
            "Right Reserved",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),

      //   )
    );
  }
}
