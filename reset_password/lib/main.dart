import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
         appBar: AppBar(
          title: Row(
            children: const [
              Icon(Icons.arrow_back),

              SizedBox(width: 10),
              Text('Recovery Account'),

            ],

          ),

        ),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Center(
                child: const Text('Reset Password',
                
                style: TextStyle( 
                  fontSize: 28,
                    fontWeight: FontWeight.bold,
                ),
                
                ),
              ),
              const SizedBox(height:5),
            Center(
                child: const Text('Enter your email or phone number to reset',
                style: TextStyle(
                  fontSize: 16, color: Colors.grey,
                ),
                
                ),
              ),
              const SizedBox(height: 40),

               const Text('Phone Number or Email',
          style: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.bold,
                     ),
                     ),
                     const SizedBox(height: 8),
                             TextField(
                     decoration: InputDecoration(
                       hintText: 'you@exampu.com',
                  
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(15),
                       ),
                     ),
                   ),
             const SizedBox(height: 20),
                 SizedBox(
  height: 45,
  width: 500,
  child: ElevatedButton(
    onPressed: () {},
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
    ),
    child: Text('Submit',
    style: TextStyle(
      color: Colors.white,
    ),
    ),
  ),
     ),
     const SizedBox(height: 30),


          ],
            ),
          ),
        ),
      ) ,
    );
  }
}