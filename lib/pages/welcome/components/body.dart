import 'package:flutter/material.dart';
import 'package:povshot/pages/login_page.dart';
import 'package:povshot/pages/welcome/components/background.dart';
import 'package:povshot/theme/appTheme.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 90,
            ),
            Image.asset(
              'assets/images/logo.png',
              height: size.height * 0.4,
            ),
            SizedBox(height: 100),
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(30),
            //   child: ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => LoginScreen()),
            //       ); // Tindakan yang ingin dilakukan ketika tombol ditekan
            //     },
            //     child: Text(
            //       'SIGN IN',
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 16,
            //       ),
            //     ),
            //     style: ElevatedButton.styleFrom(
            //       primary: Colors.black, // atur background color
            //       minimumSize:
            //           Size(350, 50), // atur lebar dan tinggi minimum button
            //       shape: RoundedRectangleBorder(
            //         borderRadius:
            //             BorderRadius.circular(20), // atur radius button
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          LoginPages()), // Ganti LoginPage dengan halaman login yang sesuai
                );
                // Tindakan yang ingin dilakukan ketika tombol ditekan
              },
              child: Text(
                'SIGN UP',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 16,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // atur background color
                minimumSize:
                    Size(350, 60), // atur lebar dan tinggi minimum button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // atur radius button
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
