import 'package:flutter/material.dart';

class CategoriasWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i <= 4; i++)
            GestureDetector(
              onTap: () {
                // Navegar a la página de detalles de la categoría
                Navigator.pushNamed(context, "/detallesCategoria");
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Image.asset(
                  "images/categoria$i.jpg",
                  height: 220,
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
