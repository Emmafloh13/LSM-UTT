import 'package:flutter/material.dart';
import 'package:lsm_utt_app/screens/home_page_screen.dart';
import 'package:lsm_utt_app/screens/registro_page.dart';
import 'package:lsm_utt_app/screens/search_place_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(hintText: 'Username'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(hintText: 'Password'),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                //TODO: add authentication logic here
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePageScreen(),
                  ),
                );
              },
              child: const Text('Iniciar Sesión'),
            ),
            const SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrationPage(),
                  ),
                );
              },
              child: const Text(
                'Crear una cuenta',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () async {
            //     var db = Db('mongodb://localhost:27017/datautt');
            //     await db.open();
            //     var collection = db.collection('users');
            //     var result = await collection.findOne({
            //       'username': _usernameController.text,
            //       'password': _passwordController.text,
            //     });
            //     await db.close();
            //     if (result != null) {
            //       Navigator.pushReplacementNamed(context, '/home');
            //     } else {
            //       ScaffoldMessenger.of(context).showSnackBar(
            //         SnackBar(
            //           content: Text('Invalid username or password.'),
            //           duration: Duration(seconds: 3),
            //         ),
            //       );
            //     }
            //   },
            //   child: Text('Login'),
            // ),
          ],
        ),
      ),
    );
  }
}
