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
                ClipOval(child: Image.asset('images/1.jpg', height: 50)),
                Text('Mary Joyce Artienda')
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
       
      ],
      ),
    ));
  }
}