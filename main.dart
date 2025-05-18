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
        fontFamily: 'AgeoTrial',
      ),
      home: LoginPage(), // Start with the login page
      debugShowCheckedModeBanner: false,
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
        backgroundColor: Colors.transparent, // 1. Make AppBar transparent
        elevation: 0, // Remove shadow from AppBar
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            fontFamily: 'AgeoTrial',
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(
                255, 9, 1, 1), // Ensure title text is visible
          ), // This closes the TextStyle
        ), // This closes the Text widget
        centerTitle: true, // This is now correctly an AppBar property
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: AssetImage(
                "assets/bgimage/BMI.jpg"), // 2. Set your image path (use forward slashes)
            fit: BoxFit.cover, // 3. Cover the whole screen
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: Container(
          // Add this container for the overlay
          color: Colors.white.withOpacity(
              0.3), // Adjust opacity (0.0 to 1.0) for desired lightness
          child: Padding(
            // The original Padding widget is now a child of this new Container
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Optional: Add a logo here if you have one
                // Image.asset('assets/images/logo.png', height: 100),
                // SizedBox(height: 30),
                TextField(
                  controller: _usernameController,
                  style: TextStyle(
                    // Style for the input text
                    fontFamily: 'AgeoTrial',
                    fontSize: 18,
                    color: Colors
                        .black87, // Or Colors.white if your fill is darker
                  ),
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(
                        fontFamily: 'AgeoTrial',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54), // Adjust color as needed
                    hintText: 'Enter your username',
                    hintStyle: TextStyle(color: Colors.black38),
                    prefixIcon:
                        Icon(Icons.person_outline, color: Colors.black54),
                    filled: true,
                    fillColor: Colors.white
                        .withOpacity(0.5), // Semi-transparent white fill
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide:
                          BorderSide.none, // No border for a cleaner look
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  style: TextStyle(
                    // Style for the input text
                    fontFamily: 'AgeoTrial',
                    fontSize: 18,
                    color: Colors
                        .black87, // Or Colors.white if your fill is darker
                  ),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        fontFamily: 'AgeoTrial',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54), // Adjust color as needed
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(color: Colors.black38),
                    prefixIcon: Icon(Icons.lock_outline, color: Colors.black54),
                    filled: true,
                    fillColor: Colors.white
                        .withOpacity(0.5), // Semi-transparent white fill
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    textStyle: TextStyle(
                      fontFamily: 'AgeoTrial',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 5, // Add a subtle shadow
                  ),
                  child: Text('Login', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
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
