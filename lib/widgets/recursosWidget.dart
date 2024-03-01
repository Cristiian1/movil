import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class RecursosWidget extends StatefulWidget {
  @override
  _RecursosWidgetState createState() => _RecursosWidgetState();
}

class _RecursosWidgetState extends State<RecursosWidget> {
  late List<VideoPlayerController> _controllers;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(
      3,
      (index) => VideoPlayerController.asset(
        "videos/recurso${index + 1}.mp4",
      ),
    );

    // Inicializar todos los controladores de video
    Future.wait(_controllers.map((controller) => controller.initialize()))
        .then((_) {
      // Actualizar el estado cuando todos los videos estén inicializados
      if (mounted) setState(() {});
      // Reproducir automáticamente los videos una vez inicializados
      // _controllers.forEach((controller) {
      //   controller.play();
      //   // Añadir un listener para reiniciar el video cuando finalice
      //   controller.addListener(() {
      //     if (controller.value.position == controller.value.duration) {
      //       controller.seekTo(Duration.zero);
      //       controller.play();
      //     }
      //   });
      // });
    });
  }

  @override
  void dispose() {
    // Liberar todos los recursos de los controladores de video
    _controllers.forEach((controller) {
      controller.dispose();
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: ScrollPhysics(), // Permitir deslizar horizontalmente
      child: Row(
        children: List.generate(
          3,
          (index) => _buildRecursoCard(context, index),
        ),
      ),
    );
  }

  Widget _buildRecursoCard(BuildContext context, int index) {
    final controller = _controllers[index];

    return GestureDetector(
      onTap: () {
        // Navegar a la página de detalles del recurso
        Navigator.pushNamed(context, "/detallesRecurso");
      },
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 5, 21, 158),
              spreadRadius: 0.1,
              blurRadius: 19,
              offset: Offset(0, 2),
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
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Verificar si el controlador está inicializado antes de mostrar el video
                if (controller.value.isInitialized)
                  AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: VideoPlayer(controller),
                  )
                else
                  Container(), // Mostrar un contenedor vacío si el video no está inicializado
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Recurso ${index + 1}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 5, 21, 158),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Dar clic para acceder ${index + 1}",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 5, 21, 158),
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
                        backgroundColor: Color.fromARGB(255, 37, 9, 174),
                      ),
                      child: Text(
                        "Ingresar",
                        style: TextStyle(color: Colors.white),
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

