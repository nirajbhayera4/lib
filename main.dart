import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(), // Start with the login page
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    // Basic login logic (replace with your actual authentication)
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username == 'user' && password == 'password') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BMICalculator()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid username or password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  // ... (rest of the BMI calculator code remains the same)
  double _height = 170.0;
  double _weight = 70.0;
  double _bmi = 0.0;
  String _bmiResult = '';

  void _calculateBMI() {
    setState(() {
      _bmi = _weight / ((_height / 100) * (_height / 100));
      if (_bmi < 18.5) {
        _bmiResult = 'Underweight';
      } else if (_bmi >= 18.5 && _bmi < 25) {
        _bmiResult = 'Normal';
      } else if (_bmi >= 25 && _bmi < 30) {
        _bmiResult = 'Overweight';
      } else {
        _bmiResult = 'Obese';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ... (BMI calculator UI)
            Text(
              'Height (cm): ${_height.toStringAsFixed(1)}',
              style: TextStyle(fontSize: 20),
            ),
            // ... (rest of the bmi calculator UI)
          ],
        ),
      ),
    );
  }
}
