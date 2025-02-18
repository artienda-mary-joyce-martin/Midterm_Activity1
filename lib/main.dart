import 'package:flutter/cupertino.dart';

void main(){
  runApp(

    
    CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),)
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApptState();
}

class _MyApptState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('MidTermAct1',),
        trailing: CupertinoButton(child: Icon(CupertinoIcons.info_circle, size: 20,), 
        onPressed: (){
         
         showCupertinoDialog(context: context, builder:(context){
          return CupertinoAlertDialog(
            title: Text('List of Members'),

            content: Column(
              children:[
                SizedBox(height: 10),
                ClipOval(child: Image.asset('images/1.jpg', height: 50)),
                Text('Mary Joyce Artienda'),

                SizedBox(height: 10),
                ClipOval(child: Image.asset('images/2.jpg', height: 50)),
                Text('Andrea Culala')
              ],
            ),

            actions:[
              CupertinoButton(child: Text('Close', style: TextStyle(color: CupertinoColors.destructiveRed),), onPressed: (){
                Navigator.pop(context);
              })
            ],
          );
         });


        })
      ),
      
      child: SafeArea(
      child: Column(
      children: [
        SizedBox(height: 20,),
        Center(child: ClipOval(child: Image.asset('images/1.jpg', height: 150))),
        Text('Name: Mary Joyce Artienda', style: TextStyle(color: CupertinoColors.activeBlue)),
        Text('Adress: Arayat, Pampanga', style: TextStyle(color: CupertinoColors.activeBlue)),
        Text('Contact No. 09456152536', style: TextStyle(color: CupertinoColors.activeBlue)),
        Text('Email: joyce.art25@gmail.com', style: TextStyle(color: CupertinoColors.activeBlue))

      ],
      ),

      
      
    ));
  }
}