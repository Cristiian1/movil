import 'package:flutter/material.dart';

class DetallesCategoriaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categoria Amor Propio/Ejercicios '),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Buscar...",
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.camera_alt),
                      onPressed: () {
                        // Acción al presionar el icono de la cámara
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity, // Ocupa todo el ancho disponible
              child: Text(
                'Amor Propio',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 5, 56, 174),
                ),
              ),
            ),
            SizedBox(height: 10),
            Image.asset(
              "images/categoria1.jpg", // Ajusta la ruta de la imagen
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            // Aquí va la descripción de la categoría
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Este es un espacio seguro para ti donde aprenderás a cuidarte y amarte aún más',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Tareas',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  _buildTaskCard(context, 'Tarea 1', 'images/tarea1.jpg'),
                  _buildTaskCard(context, 'Tarea 2', 'images/tarea2.jpg'),
                  _buildTaskCard(context, 'Tarea 3', 'images/tarea3.jpg'),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildTaskCard(BuildContext context, String title, String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity, // Ocupa todo el ancho disponible
        constraints: BoxConstraints(maxWidth: 300), // Ancho máximo deseado
        child: Card(
          elevation: 3,
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, "tareaCategoria");
              // Acción al presionar la tarjeta de tarea
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imagePath,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 2, 79, 245),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "tareaCategoria");
                      // Acción al presionar el botón de ingresar
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Color de fondo verde
                    ),
                    child: Text('Ingresar',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 240, 241, 244),
                    ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
