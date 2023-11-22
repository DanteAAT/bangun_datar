import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Text(
          "Menu",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.pink.shade300,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/persegi.png", title: "Persegi"),),
              Expanded(child: CustomMenu(imageAsset: "assets/persegi_panjang.png",title: "Persegi Panjang"),),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/segitiga.png",title: "Segitiga"),),
              Expanded(child: CustomMenu(imageAsset: "assets/lingkaran.png",title: "Lingkaran Panjang"),),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.pink.shade300, //Border.all
          borderRadius: BorderRadius.circular(10
          ), //BorderRadius.all),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imageAsset),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(color: Color(0xFFFFFFFF)),
              ),
            ),
          ],
        ));
  }
}
