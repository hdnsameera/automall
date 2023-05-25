import 'package:automall/carDetails.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const Scaffold(
        body: MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Image.asset(
              'assets/images/automall_logo_image.jpg',
              height: 150.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CarDetails(),
                  ),
                );
              },
              child: const Text(
                'Car Details',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 70.0,
            ),
            const Text(
              'f',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Image.asset(
              'assets/images/twitter_image.png',
              width: 28.0,
              // color: Colors.teal,
            ),
            Image.asset(
              'assets/images/instagram_image.png',
              width: 28.0,
              // color: Colors.teal,
            ),
            Image.asset(
              'assets/images/linkedin_image.png',
              width: 20.0,
              // color: Colors.teal,
            ),
            Image.asset(
              'assets/images/youtube_image.png',
              width: 60.0,
              // color: Colors.teal,
            ),
            const SizedBox(
              width: 70.0,
            ),
          ],
        )
      ],
    );
  }
}
