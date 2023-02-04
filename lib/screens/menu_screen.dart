import 'package:aula3/generated_plugin_registrant.dart';
import 'package:aula3/screens/personal_card_screen.dart';
import 'package:aula3/screens/tela_dado.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  static const String id = '/menu_screen';
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Menu Iniciar',
              style: TextStyle(fontSize: 26),
            ),
            const SizedBox(
              height: 16,
              width: double.infinity,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, PersonalCardScreen.id);
              },
              child: Material(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(1000),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Cartão Pessoal',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, Dado.id);
              },
              child: Material(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(1000),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Tela Dado',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
