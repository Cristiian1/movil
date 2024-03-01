import 'package:flutter/material.dart';

class ProfesionalesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: ScrollPhysics(), // Permitir deslizar horizontalmente
      child: Row(
        children: [
          for (int i = 1; i <= 4; i++)
            _buildProfesionalCard(context, i),
        ],
      ),
    );
  }

  Widget _buildProfesionalCard(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        // Navegar a la página de detalles del profesional
        Navigator.pushNamed(context, "/detallesProfesional");
      },
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.5), // Color verde con opacidad
              spreadRadius: 0.1, // Extensión de la sombra
              blurRadius: 19, // Difuminado de la sombra
              offset: Offset(0, 2), // Desplazamiento de la sombra
            ),
          ],
        ),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.all(10),
        child: SizedBox(
          width: 200, // Ancho de la tarjeta
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                child: Image.asset(
                  "images/profesional$index.jpg",
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Harol Londoño $index",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 17, 210, 52),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Descripción del Profesional $index",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {
                      // Lógica para enviar correo al profesional
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 17, 210, 52), // Color de fondo del botón
                    ),
                    child: Text(
                        "Contactar",
                        style: TextStyle(color: Colors.white), // Cambiar el color del texto a blanco
                      ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
