import 'package:flutter/material.dart';
import 'package:intro_lutter/components/custom_card.dart';
import 'package:intro_lutter/exemplos/Value_notifier_counter_screen.dart';
import 'package:intro_lutter/exemplos/changed_notifier.dart';
import 'package:intro_lutter/pages/gps_page.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Screen'),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
          CustomCard(
            title: 'Contador',
            description: 'Exemplo contador',
            icon: Icons.add_circle_outline,
            destination: ValueNotifierCounterScreen(),
          ),
          SizedBox(height: 16),
          CustomCard(
            title: 'Perfil',
            description: 'Exemplo com ChangedNotifier',
            icon: Icons.change_circle_outlined,
            destination: SimpleChangeNotifierExample(),
          ),
          SizedBox(height: 16),
          CustomCard(
            title: 'GPS',
            description: 'Localização e Mapa',
            icon: Icons.location_on,
            destination: GpsPage(),
          ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
