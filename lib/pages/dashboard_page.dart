import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Bienvenido, ${user?.email ?? 'Invitado'}'),
            ElevatedButton(
              onPressed: () => FirebaseAuth.instance.signOut(),
              child: Text('Cerrar Sesión'),
            ),
          ],
        ),
      ),
    );
  }
}
