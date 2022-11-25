import 'package:firebase/config/kcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Expanded(
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(vertical: 10),
              //     child: Column(
              //       children: [
              //         Align(
              //           alignment: Alignment.topLeft,
              //           child: IconButton(
              //             icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
              //             onPressed: () {},
              //           ),
              //         ),
              //         Container(
              //           margin: EdgeInsets.symmetric(vertical: size.height / 3),
              //           padding: const EdgeInsets.all(10),
              //           height: 62,
              //           width: 72,
              //           decoration: BoxDecoration(
              //             color: Colors.white,
              //             borderRadius: BorderRadius.circular(10),
              //             boxShadow: [
              //               BoxShadow(
              //                 offset: const Offset(0, 10),
              //                 blurRadius: 22,
              //                 color: Colors.brown.withOpacity(0.22),
              //               ),
              //               const BoxShadow(
              //                 offset: Offset(-15, -15),
              //                 blurRadius: 20,
              //                 color: Colors.white,
              //               )
              //             ],
              //           ),
              //           child: SvgPicture.asset("assets/icons/gmail.svg",
              //               color: Colors.red),
              //         )
              //       ],
              //     ),
              //   ),
              // ),

              Container(
                width: size.width * 0.8,
                height: size.height * 0.72,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 60,
                      color: Colors.brown.withOpacity(0.30),
                    ),
                  ],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(63),
                    // topLeft: Radius.circular(63),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                              left: -50,
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff00bfdb),
                                ),
                              )),
                          Positioned(
                              child: Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Palette.kToDark,
                              // color: Color(0xff008FFF),
                            ),
                          )),
                          Positioned(
                              left: 50,
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff00227E),
                                ),
                              ))
                        ],
                      ),
                      const Padding(padding: EdgeInsets.only(top: 50)),
                      Column(children: const [
                        TextField(
                          // controller: username,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person_outline_outlined,
                              size: 30,
                              color: Palette.kToDark,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            label: Text(
                              "Username",
                              style: TextStyle(color: Palette.kToDark),
                            ),
                            // icon: Icon(
                            //   Icons.person_outline,
                            //   size: 30,
                            // ),
                            fillColor: Colors.white,
                            filled: true,
                            prefixIconConstraints: BoxConstraints(
                              minWidth: 75,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              borderSide: BorderSide(color: Palette.kToDark),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: TextField(
                            // controller: username,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock_clock_outlined,
                                size: 30,
                                color: Palette.kToDark,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              label: Text(
                                "Password",
                                style: TextStyle(color: Palette.kToDark),
                              ),
                              // icon: Icon(
                              //   Icons.person_outline,
                              //   size: 30,
                              // ),
                              fillColor: Colors.white,
                              filled: true,
                              prefixIconConstraints: BoxConstraints(
                                minWidth: 75,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                borderSide: BorderSide(color: Palette.kToDark),
                              ),
                            ),
                          ),
                        ),
                      ]),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: SizedBox(
                          width: size.width / 3,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("SIGN IN"),
                                Icon(Icons.login)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          SocialLogins(
                            icon: "assets/icons/gmail.svg",
                          ),
                          SocialLogins(
                            icon: "assets/icons/facebook.svg",
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SocialLogins extends StatelessWidget {
  final String icon;

  const SocialLogins({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Container(
            // margin:
            //     EdgeInsets.symmetric(vertical: size.height / 3),
            padding: const EdgeInsets.all(10),
            height: 62,
            width: 72,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 22,
                  color: Colors.brown.withOpacity(0.22),
                ),
                const BoxShadow(
                  offset: Offset(-15, -15),
                  blurRadius: 20,
                  color: Colors.white,
                )
              ],
            ),
            child: SvgPicture.asset(icon, color: Palette.kToDark),
          ),
        ],
      ),
    );
  }
}
