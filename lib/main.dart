import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: UserProfileScreen());
  }
}

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Avatar y nombre de usuario
            Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?t=st=1730438199~exp=1730441799~hmac=bade4840ec104b0b56ea64a5984a2600aa46da9b932d4cf7c9e0528e40cd3a0c&w=740'),
                ),
                const SizedBox(width: 10),
                const Text(
                  'Coffestories',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Text('mark.brock@icloud.com'),
                const SizedBox(height: 16),
                // Botón "Edit profile"
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white),
                  onPressed: () {},
                  child: const Text('Edit profile'),
                ),
                const SizedBox(height: 8),
              ],
            ),
            // Sección "Inventories"
            const Text('Inventories',
                style: TextStyle(fontWeight: FontWeight.w300)),
            const SizedBox(height: 8),
            Card(
                child: Column(children: [
              ListTile(
                leading: const Icon(Icons.cottage_outlined),
                title: const Text('My stores      2'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
              const Divider(
                indent: 15,
                endIndent: 15,
              ),
              ListTile(
                leading: const Icon(Icons.help_outline_outlined),
                trailing: const Icon(Icons.arrow_forward_ios),
                title: const Text('Support'),
                onTap: () {},
              )
            ])),
            const SizedBox(height: 11),

            // Sección "Preferences"
            const Text('Preferences',
                style: TextStyle(fontWeight: FontWeight.w300)),
            const SizedBox(height: 8),
            Card(
                child: Column(
              children: [
                SwitchListTile(
                  secondary: const Icon(Icons.notifications_none_rounded),
                  title: const Text('Push notifications'),
                  activeColor: Color(Colors.lightGreen.value),
                  value: true,
                  onChanged: (value) {
                    true;
                  },
                ),
                const Divider(
                  indent: 15,
                  endIndent: 15,
                ),
                SwitchListTile(
                  secondary: const Icon(Icons.perm_identity),
                  title: const Text('Face ID'),
                  value: true,
                  activeColor: Color(Colors.lightGreen.value),
                  onChanged: (value) {
                    false;
                  },
                ),
                const Divider(
                  indent: 15,
                  endIndent: 15,
                ),
                ListTile(
                  leading: const Icon(Icons.password_outlined),
                  title: const Text('PIN Code'),
                  onTap: () {},
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                const Divider(
                  indent: 15,
                  endIndent: 15,
                ),
                const SizedBox(height: 10),
                // Botón "Logout"
                ListTile(
                  leading: const Icon(Icons.logout_outlined),
                  title: const Text(
                    'Logout',
                    style: TextStyle(color: Colors.red),
                  ),
                  iconColor: Colors.red,
                  onTap: () {},
                )
              ],
            )),
            const SizedBox(height: 1),
          ],
        ),
      ),
    );
  }
}
