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
   appBar: AppBar( backgroundColor: Colors.white10,
    title: Text('Whatsapp',
    style: TextStyle(
      color: Colors.grey,
      fontSize: 25,
    ),
    
    
    ),

    actions: [

 Icon(Icons.camera_alt),

       SizedBox(width: 10),

      Icon(Icons.more_vert),
    
      
    ],
   ),
 
 body: Column(
   children: [
     Padding(
       padding: EdgeInsets.all(10.0),
     
      child: 
      
      
      
      TextField(
     
        decoration: InputDecoration(
     
          hintText: 'Search...',
           prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
            
          ),
     
          fillColor: Colors.grey.withOpacity(0.3),
     
                  filled: true,
     
           ),
           ),
         
      
      ),
     Expanded(
       child: ListView.builder(
       itemCount: 20,
       itemBuilder: (context, index) {
         return ListTile(
          leading: CircleAvatar(
            child: Text('🍌'),
       
          ),
          title: Text('I Love Bangladesh'),
          subtitle:Text('Bangladesh $index') ,
          trailing: Icon(Icons.person,
          size: 15,
          ),
       
         );
       },
       
       
       ),
     ),


   ],
 ),


 bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.system_update_alt_sharp),
              label: 'Update',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.man_3_outlined),
              label: 'Communities',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Call',
            ),
          ],
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.black54,
          showUnselectedLabels: true,
  
  
  
  )
   

 ),


    );
  }
}