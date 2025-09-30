import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container_row_Icon_Pading')
           ),
          body: 
          
          
        Padding(

          padding: const EdgeInsets.all(8.0),
          child: Column(
          
          
              children: [
               
              Image.network('https://picsum.photos/seed/picsum/200/300',
                  
                   width: 70,
                   height: 60,
                   fit: BoxFit.cover,

              
              
              ),
                  


                Image.asset(
                  'assets/png/freepng.png',
                  width: 100,
                  height: 100,
                ), 
          
                    const SizedBox(height: 40,
                    ), 
          
                   
          
          
          TextField(
                       decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Inter your email",
                        hintText: "Email",
                           
                        contentPadding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
          
                     ),
          
          
          
          
                        ),
                        ),
                       const SizedBox(height: 20,),
                       TextField(
                       decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Inter your pass",
                        hintText: "Password",
                     contentPadding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal:30,
          
                     ),
                        ),
                        ),
          
                        const SizedBox(height: 25,),
                   
                   ElevatedButton(onPressed: (){print('Clike Button');
          
          
                   },
                   
                    child: const Text('Login'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
          
                    ),
                    ),
          
          
          
               Row(
                  children: [
                    Icon(
                     Icons.delete,
                     color: Colors.deepPurpleAccent,
                     size: 30,
                     
                     
                     ),
                     
                   
                         Align(
                      alignment: Alignment.center,
                      child: Icon(
                          Icons.access_time_rounded,
                          color: Colors.green,
                           size: 60, ),
                    ),Align(
                      alignment: Alignment.center,
                      child: Icon(
                          Icons.account_balance_sharp,
                          color: Colors.green,
                           size: 60, ),
                    ),Align(
                      alignment: Alignment.center,
                      child: Icon(
                          Icons.add_location_alt_sharp,
                          color: Colors.green,
                           size: 60, ),
                    ),Align(
                      alignment: Alignment.center,
                      child: Icon(
                          Icons.add_box,
                          color: Colors.green,
                           size: 60, ),
                    ),
                         
                         
                         
                         
                
                
                
                  ],
                ),
                 Align(
                      alignment: Alignment.center,
                      child: Icon(
                          Icons.add_home,
                          color: Colors.green,
                           size: 60, ),
                    ),
          
                    Align(
                      alignment: Alignment.center,
                      child: Icon(
                          Icons.airport_shuttle_rounded,
                          color: Colors.green,
                           size: 60, ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Icon(
                          Icons.apple_outlined,
                          color: Colors.green,
                           size: 60, ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Icon(
                          Icons.assessment,
                          color: Colors.green,
                           size: 60, ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Icon(
                          Icons.add_business,
                          color: Colors.green,
                           size: 60, ),
                    ),
             
                     ],
            ),
        ),





      ),
    );
  }
}