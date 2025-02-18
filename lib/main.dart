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
                Text('Andrea Culala'),



                SizedBox(height: 10),
                ClipOval(child: Image.asset('images/4.jpg', height: 50)),
                Text('Dexter Gomez'),

                SizedBox(height: 10),
                ClipOval(child: Image.asset('images/5.jpg', height: 50)),
                Text('JhonVianey Bulanadi')
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
        //Mary Joyce
        SizedBox(height: 20,),
        Center(child: ClipOval(child: Image.asset('images/1.jpg', height: 70))),
        Text('Name: Mary Joyce Artienda', style: TextStyle(color: CupertinoColors.activeBlue,)),
        Text('Adress: Arayat, Pampanga  ||  Contact No. 09456152536  ||  Email: joyce.art25@gmail.com', style: TextStyle(color: CupertinoColors.activeBlue)),

        //Andrea
        SizedBox(height: 20,),
        Center(child: ClipOval(child: Image.asset('images/2.jpg', height: 70))),
        Text('Name: Andrea Culala', style: TextStyle(color: CupertinoColors.activeBlue)),
        Text('Address: Candaba, Pampanga  ||  Contact No. 09275766686  ||  Email: andreaculala78@gmail.com', style: TextStyle(color: CupertinoColors.activeBlue)),



        //Dexter
        SizedBox(height: 20,),
        Center(child: ClipOval(child: Image.asset('images/4.jpg', height: 70))),
        Text('Name: Dexter Gomez', style: TextStyle(color: CupertinoColors.activeBlue)),
        Text('Address: Sta Ana, Pampanga  ||  Contact No. 09482811237  ||  Email: dextergomez1009@gmail.com', style: TextStyle(color: CupertinoColors.activeBlue)),


        //JhonVianey
        SizedBox(height: 20,),
        Center(child: ClipOval(child: Image.asset('images/5.jpg', height: 70))),
        Text('Name: JhonVianey Bulanadi', style: TextStyle(color: CupertinoColors.activeBlue)),
        Text('Address: Candaba, Pampanga  ||  Contact No. 09972319040  ||  Email: jhonvianeydelapenabulanadi04@gmail.com', style: TextStyle(color: CupertinoColors.activeBlue))

      ],
      ),

      
      
    ));
  }
}