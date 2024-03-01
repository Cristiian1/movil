import 'package:flutter/material.dart';
import 'package:psicolbienestar/pages/TareaCategoriaPage.dart';
import 'package:psicolbienestar/widgets/FormularioTareaItem.dart';
import 'package:psicolbienestar/widgets/tareaAppBar.dart';


class TareaPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TareaAppBar(),
          Container(
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
            ),
            child: Column(
              children: [
                FormularioTareaItem(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF475269).withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 5,
                      ),
                    ]
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "No hay respuesta buena o mala siempre piensa en ti ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF475269),
                            ),
                          )
                        ],
                      ),
                      Divider(
                        height: 30,
                        thickness: 1,
                        color: Color(0xFF475269),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Aquí puedes agregar la lógica para manejar el evento de presionar el botón
                            },
                            child: Text(
                              'Empezar',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                             
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Ajusta el espaciado interno del botón
                            ),
                          ),
                        ],
                      ),

                    ],),
                ),
                  InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "tareaCategoriaPage");
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}