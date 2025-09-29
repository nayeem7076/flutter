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
      
      home: Scaffold(
        appBar: AppBar(
          title: const Text("common button"),
        ),
      body: Column( 
      
        children: [
           Image.asset('images/freepng.png',
               
               height: 100,
               width: 100,
              
                  
              ),
           TextField(
            decoration: InputDecoration(
              labelText: 'Inter your email',
              border: OutlineInputBorder(),
              hintText: 'Email',
      
            ),
           ),
      
          TextField(
            decoration: InputDecoration(
              labelText: 'Inter your password',
              border: OutlineInputBorder(),
              hintText: 'Password',
      
            ),
           ),
             
             SizedBox( height: 40,
             
      
             ),
             
             
      
              
      
      
              
              
      
          ElevatedButton(onPressed:(){print("Button Tab");
          
           },
            style: ElevatedButton.styleFrom(
                    
            backgroundColor: Colors.blue
            ),
                    
           child: const Text("Click Me"),
           ),
      
              
            
      
           FilledButton(onPressed: (){print("Button Tab");
           
           }, 
           
           child: const Text('Filled '),
           ),
            
      
           OutlinedButton(onPressed: (){print("click Button");
      
           }, 
           
           child: const Text('Outlined Button'),
           
           
           
            
           ),
           SizedBox(
            height: 50,
            width:  400,
             child: TextButton(onPressed: (){ print("click Button");
             
             },
             
              child:  const Text('Text Button'),
                
                style: TextButton.styleFrom(
                  
             
                  backgroundColor: Colors.orange
                ),
             
              
              ),),
      
      
      
              SizedBox(
                
                 
                
                child: IconButton(onPressed: (){print("click Button");
                
                
                },
                 icon: Icon(Icons.add_alarm),
                  iconSize:60 ,
      
                 ),
              ),
      
      
      
      
      
        ],
      
      
      
      ),
      
      
      
      ),


    );
  }
}