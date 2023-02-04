import 'package:flutter/material.dart';

class PersonalCardScreen extends StatelessWidget {
  static const String id = '/personal_card_screen';
  const PersonalCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: Center(
          child: Text(
            'Cartão pessoal',
          ),
        ),
      ),
    );
  }
}
