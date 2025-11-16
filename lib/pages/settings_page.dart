import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notifAktif = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pengaturan Aplikasi')),
      drawer: const AppDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Preferensi',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          SwitchListTile(
            title: const Text('Notifikasi tugas'),
            subtitle: const Text('Tampilkan pengingat tugas di aplikasi'),
            value: _notifAktif,
            onChanged: (value) {
              setState(() {
                _notifAktif = value;
              });
            },
          ),
          const Divider(height: 32),
          const Text(
            'Tentang Aplikasi',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('h1d023010_tugas7'),
            subtitle: Text(
              'Contoh aplikasi Flutter dengan routes, side menu, login, '
              'dan local storage (SharedPreferences).',
            ),
          ),
        ],
      ),
    );
  }
}
