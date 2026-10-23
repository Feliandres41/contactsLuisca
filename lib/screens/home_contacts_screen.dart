import 'package:flutter/material.dart';

class HomeContactsScreen extends StatelessWidget {
  const HomeContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ancho = size.width > size.height ? size.height : size.width;
    final alto = size.height > size.width ? size.width : size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: 100,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: ancho,
        height: 100,
        color: Colors.red,
      ),
    );
  }
}
