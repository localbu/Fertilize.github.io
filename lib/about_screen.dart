import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  _AboutUs createState() => _AboutUs();
}

class _AboutUs extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Screen',
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('About US',
          style: TextStyle(
            color: Colors.white
          ),),
          backgroundColor: Colors.green,
        ),
        body: SafeArea(child: 
        SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Image.network('https://www.fertilizer-machine.net/wp-content/uploads/2018/06/types-of-fertilizer.jpg'),
                ),
                Container(
                  color: Colors.green,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text('Description',textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30),),
                      Padding(padding: EdgeInsets.all(10),
                      child: Text('NutriGranules is a high-quality granular fertilizer designed to provide essential nutrients for robust plant growth. With a balanced mix of nitrogen, phosphorus, and potassium, it supports all stages of plant development. Ideal for vegetable gardens, flower beds, lawns, and shrubs, NutriGranules enhances soil structure, promotes healthy roots, and delivers a steady nutrient supply over time. Easy to apply and environmentally friendly, NutriGranules ensures vibrant, healthy plants and higher yields. Transform your garden with NutriGranules: nourishing your plants, enriching your soil, and enhancing your gardens beauty.',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300
                      ),
                      textAlign: TextAlign.justify,
                      ),),
                    
                    ],
                  )
                ),
                Container(
                      child: Image.network('https://nitumezifarms.com/wp-content/uploads/2024/05/components-of-different-types-of-fertilizers.jpg'),
                    )
              ],
            ),
          ),
        )
        )
      ),
    );
  }
}
