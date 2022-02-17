import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/6/6c/Tuscany_Landscape_Volterra_Italy_Landscape_Photography_%28158574951%29.jpeg',
            name: 'Paisaje',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://images.unsplash.com/photo-1508556497405-ed7dcd94acfc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80',
            name: 'Otra Imagen',
          ),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl:
                  'https://images.unsplash.com/photo-1494783404829-a93883e74b68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80'),
        ],
      ),
    );
  }
}
