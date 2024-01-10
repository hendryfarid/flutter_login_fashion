import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg1.png"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            const Color(0xff4B1F4D).withOpacity(0.1),
            BlendMode.color
          ),
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [

            Positioned(
              child: ClipPath(
                clipper: DiagonalPathClipperOne(),
                child: Container(
                  color: const Color(0xffC94B1A),
                ),
              ),
            ),

            Positioned(
              child: ClipPath(
                clipper: DiagonalPathClipperTwo(),
                child: Container(
                  color: const Color(0xffA13C15),
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 75,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 80,
                          width: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/logo.png"),
                              fit: BoxFit.fill
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff4B1F4D),
                                offset: Offset(15, -15),
                              )
                            ]
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello",
                            style: TextStyle(
                              fontFamily: "SFUIText",
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),),
                            Text("style fashion",
                              style: TextStyle(
                                fontFamily: "SFUIText",
                                fontSize: 20,
                                color: Colors.black87
                              ),)
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 430,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xffC94B1A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(38)
                          )
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontFamily: "SFUIText",
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 36, 106, 181),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(38)
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.white,
                              size: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Connect to Facebook",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("DOnt have account? Sign up!",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),)
                  ],
                ),
              )
            )
          ],
        ),
        ),

    );
  }
}


class DiagonalPathClipperOne extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height - 225)
      ..lineTo(0, size.height - 300)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class DiagonalPathClipperTwo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height - 190)
      ..lineTo(0, size.height - 300)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class BezierClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
   Path path = Path();
   path.lineTo(0, size.height * 0.75);

   path.quadraticBezierTo(
       size.width * 0.25,
       size.height * 0.5,
       size.width * 0.5,
       size.height * 0.75
   );
   //
   path.quadraticBezierTo(
       size.width * 0.75,
       size.height * 1,
       size.width,
       size.height * 0.75
   );
   path.lineTo(size.width,0);
   return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}