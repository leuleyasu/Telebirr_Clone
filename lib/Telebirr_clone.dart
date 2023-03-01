// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class Telebirr extends StatefulWidget {
  Telebirr({super.key});

  @override
  State<Telebirr> createState() => _TelebirrState();
}

class _TelebirrState extends State<Telebirr> {
  bool view = true;
  bool viewB = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          // scrollDirection: Axis.vertical,
          child: Column(children: [
            // Image.asset(name)

            Row(
              children: [
                // padding: EdgeInsets.only(top: 100, left: 120),
                ClipRRect(
                  child: Image.asset(
                    "assets/img1.png",
                    height: 100,
                    width: 100,
                    fit: BoxFit.fill,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 50),
                  child: Text(
                    "Good Morning Ethio telecom",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                child: Center(
                  child: TextFormField(
                    obscureText: viewB ? true : false,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 100),
                        suffixIcon: InkWell(
                            onTap: () {
                              if (viewB == true) {
                                viewB = false;
                              } else {
                                viewB = true;
                              }
                              setState(() {});
                            },
                            child: viewB
                                ? const Icon(
                                    CupertinoIcons.eye_slash_fill,
                                  )
                                : const Icon(CupertinoIcons.eye)),
                        suffixIconColor: const Color.fromRGBO(68, 138, 255, 1),
                        hintText: "View Balance",
                        hintStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        ),
                        border: const OutlineInputBorder()),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                child: Center(
                  child: TextFormField(
                    obscureText: view ? true : false,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 80),
                        suffixIcon: InkWell(
                            onTap: () {
                              if (view == true) {
                                view = false;
                              } else {
                                view = true;
                              }
                              setState(() {});
                            },
                            child: view
                                ? const Icon(
                                    CupertinoIcons.eye_slash_fill,
                                  )
                                : const Icon(CupertinoIcons.eye)),
                        suffixIconColor: const Color.fromRGBO(68, 138, 255, 1),
                        hintText: "View Reward Balance",
                        hintStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        ),
                        border: const OutlineInputBorder()),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Row(children: const [
                Icon(
                  CupertinoIcons.money_dollar_circle_fill,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Transaction detailll",
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                ),
              ]),
            ),
            const SizedBox(
              height: 10,
            ),

            Container(
                height: MediaQuery.of(context).size.height * 0.705,
                width: 375,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Colors.grey),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 2,
                  ),
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 80,
                              width: 170,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: const [
                                    Icon(
                                      CupertinoIcons.money_rubl_circle,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text("Deposit Cash",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 80,
                              width: 170,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: const [
                                    Icon(
                                      CupertinoIcons.money_rubl,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text("Buy Airtime/package",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 80,
                              width: 170,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: const [
                                    Icon(
                                      CupertinoIcons.money_pound,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text("Send Money",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 80,
                              width: 170,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: const [
                                    Icon(
                                      CupertinoIcons.money_pound_circle,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text("Recieve payment",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 80,
                              width: 170,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: const [
                                    Icon(
                                      CupertinoIcons.money_euro_circle,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text("Fundraising",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 80,
                              width: 170,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: const [
                                    Icon(
                                      CupertinoIcons.money_euro,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text("Withdraw Cash",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 80,
                              width: 170,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: const [
                                    Icon(
                                      CupertinoIcons.money_dollar_circle_fill,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text("Financial Service",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 80,
                              width: 170,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: const [
                                    Icon(
                                      CupertinoIcons.money_dollar_circle,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text("Pay With telebirr",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        SizedBox(
                          height: 50,
                          width: 350,
                          child: FilledButton(
                            child: const Text(
                              " Scan QR",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: TextButton(
                                  onPressed: () {},
                                  child: const Text("Mini Satatement")),
                            )
                          ]),
                        ),

                        const SizedBox(
                          height: 20,
                        ),
                        //   children: [
                        //     Container(
                        //       height: 70,
                        //       width: 70,
                        //       decoration: const BoxDecoration(
                        //         color: Colors.white,
                        //       ),
                        //       child: Column(
                        //         children: const [
                        //           Icon(Icons.sd_storage),
                        //           Text("Deposit Cash"),
                        //         ],
                        //       ),
                        //     ),
                        //     Container(
                        //       height: 70,
                        //       width: 70,
                        //       decoration: const BoxDecoration(
                        //         color: Colors.white,
                        //       ),
                        //       child: Column(
                        //         children: const [
                        //           Icon(Icons.sd_storage),
                        //           Text("Deposit Cash"),
                        //         ],
                        //       ),
                        //     )
                        //   ],
                        // ),
                      ]),
                )),
          ]),
        ),
      ),
    );
  }
}
