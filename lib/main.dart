import 'package:flutter/material.dart';
import 'package:test/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: 
      
      MyHomePage(title: 'title')
      //  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool reportsSelected = false;




  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
      bottomNavigationBar: customBottomNavBar(),
  
      
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,children: [
              SizedBox(height: 10,),
              ListTile(
                onTap: (() {
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MyWidget()),
  );
                  
                }),
                leading: CircleAvatar(radius: 30,backgroundImage: NetworkImage('https://www.boredpanda.com/blog/wp-content/uploads/2021/04/human-blank-face-with-eps10-vector-25623021-png__300.jpg'),),
                title: Text('Welcome Back',style: TextStyle(fontSize: 9,color: Colors.grey),),
                subtitle: Text('Jessica',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                trailing: Icon(Icons.segment),
              ),
          
        
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Upcomming Consultations',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection:Axis.horizontal,
            child: Row(children: [
              SizedBox(width: 16,),
              ReusableCard(Colors.white,'Dec 7','5:45PM', 'Michael Simpson', 'Join the call',context,const Color(0xff0152A8),Color(0xff00DAA5),Colors.white,Colors.white),
              ReusableCard(Color(0xff00DAA5),'Dec 7','5:45PM', 'Michael Simpson', 'Join the call',context,const Color(0xffDCEDFE),Colors.white,Colors.black,Colors.black),
              ReusableCard(Color(0xff00DAA5),'Dec 7','5:45PM', 'Michael Simpson', 'Join the call',context,const Color(0xffDCEDFE),Colors.white,Colors.black,Colors.black)
            ],),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Patient Profiles',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                CircleAvatar(radius: 25,backgroundColor: Color(0xff00DAA5),child: Icon(Icons.add,color: Colors.white,),),
                ReusableCircleAvatar('https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                ReusableCircleAvatar('https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                ReusableCircleAvatar('https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                ReusableCircleAvatar('https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                
                
              ],),
            ),
            
          ),
          ClipRRect (
  borderRadius: BorderRadius.circular(30.0),
  child: Container(
                    height: MediaQuery.of(context).size.height*0.09,
                    width: MediaQuery.of(context).size.width*0.8,
                    color: const Color(0xffDCEDFE),
                    child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            reportsSelected==false?
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30.0),
                              child: Container(
                                color: Colors.blue,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(24, 6, 24, 6),
                                  child: Text("Last Enquiries"),
                                ),
                              ),
                            ):InkWell( onTap: (){
                              setState(() {
                                reportsSelected = !reportsSelected;
                                
                              });
                                  
                                },child: Text("Last Enquiries")),
                            reportsSelected==true?
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30.0),
                              child: Container(
                                color: Colors.blue,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(24, 6, 24, 6),
                                  child: Text("Reports"),
                                ),
                              ),
                            ):
                            InkWell( onTap: (){
                              setState(() {
                                 reportsSelected = !reportsSelected;
                                
                              });
                                 
                                },child: Text("Reports")),
                          ],
                        ))),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: ListTile(leading: CircleAvatar(),title: Text('Anna Kowasky',style: TextStyle(fontWeight: FontWeight.bold),),subtitle: Text('Video Consultation',style: TextStyle(fontSize: 12),),),
          ),
          
          ],),
          
          
        ),
      ),
    );
   
    
  }
}

Widget ReusableCard(Color dateColor,String date, String time,String name,String callText,BuildContext context,Color cardColor,Color buttonColor,Color nameColor,Color butonTextColor){
  return Padding(
    padding:  EdgeInsets.fromLTRB(8, 4, 8, 8),
    child: Card(
      elevation: 2,
      color: cardColor,
      child: Container(
        height: MediaQuery.of(context).size.height *0.28,
        width: MediaQuery.of(context).size.width *0.35,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
          SizedBox(height: 10,),
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround
              ,children: [
              CircleAvatar(backgroundImage: NetworkImage('https://www.boredpanda.com/blog/wp-content/uploads/2021/04/human-blank-face-with-eps10-vector-25623021-png__300.jpg'),),
              Column(children: [
                Text(time,style: TextStyle(color: dateColor),),
                Text(date,style: TextStyle(color: dateColor),)
              ],)
            ],),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: SizedBox(width: 55,child: Text(name,style: TextStyle(color: nameColor,fontWeight: FontWeight.w400),),),
          ),
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: ElevatedButton(
    onPressed: () {},
    child: Container(width: MediaQuery.of(context).size.width*0.25,child: Center(child: Text(callText,style: TextStyle(color: butonTextColor),))),
    style: ElevatedButton.styleFrom(backgroundColor: buttonColor,shape: StadiumBorder()),
),
          )
        ],),
      ),
       shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),




          )
          
    ),
  );
}

Widget ReusableCircleAvatar(String imageLink){
  return Padding(
    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
    child: CircleAvatar(radius: 25,backgroundImage: NetworkImage(imageLink),),
  );
}