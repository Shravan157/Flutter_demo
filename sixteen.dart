// Text field and a Login Screen to demonstrate the feature of TextField

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ✅ Added
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordHidden = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                margin: EdgeInsets.only(top: 100),
                child: Image.asset('assets/images/login.jpg'),
              ),
              Padding(
                padding: EdgeInsets.only(right: 250),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 150),
                child: Text(
                  'Please Sign in to continue.',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 400,
                child: TextField(
                  controller: _emailController, // ✅ Added
                  decoration: InputDecoration(
                    label: Text('Email'),
                    prefixIcon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(158, 74, 7, 82),
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 400,
                child: TextField(
                  controller: _passwordController, // ✅ Added
                  obscureText: _isPasswordHidden,  // ✅ Added
                  decoration: InputDecoration(
                    label: Text('Password'),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isPasswordHidden = !_isPasswordHidden; // ✅ Added
                        });
                      },
                      icon: Icon(
                        _isPasswordHidden
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(158, 74, 7, 82),
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 400,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    print('Email: ${_emailController.text}');    // ✅ Added
                    print('Password: ${_passwordController.text}'); // ✅ Added
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(158, 74, 7, 82),
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Sign In'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
