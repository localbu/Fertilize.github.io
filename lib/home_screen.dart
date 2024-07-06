import 'package:flutter/material.dart';
import 'about_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NutriGranules',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 30),
        ),
        backgroundColor: Colors.green,
      ),
      body: ColumnHome(),
    );
  }
}

class ColumnHome extends StatelessWidget {
  const ColumnHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(40),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Image.network(
                  'https://www.bhg.com/thmb/yoa-gJvBBPmwHqV8e7qQ7reNsGA=/1983x0/filters:no_upscale():strip_icc()/Fertilizing-plants-0440837aeee64749832645ba62572f95.jpg',
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    const Text(
                      'vision and mission',
                      style: TextStyle(
                          textBaseline: TextBaseline.alphabetic,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: const Text(
                          'Welcome to GreenGrow Fertilizers, your trusted partner in sustainable agriculture and gardening solutions. At GreenGrow, we are committed to providing high-quality, eco-friendly fertilizers that enhance soil fertility and boost plant growth. Our products are meticulously formulated to meet the diverse needs of farmers, gardeners, and agricultural professionals.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const AboutUs();
                          }));
                        },
                        child: Text(
                          'See More',
                        ))
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
