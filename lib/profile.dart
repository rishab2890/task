import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: customBottomNavBar(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back)),
                Text(
                  'Profile Details',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Text('')
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 4, 8, 8),
            child: Card(
                elevation: 2,
                color: const Color(0xffDCEDFE),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(31, 8, 8, 8),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              'https://www.boredpanda.com/blog/wp-content/uploads/2021/04/human-blank-face-with-eps10-vector-25623021-png__300.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Jessica Simpsons',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              'Female',
                              style: TextStyle(fontSize: 9, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 4, 8, 8),
            child: Card(
                elevation: 2,
                color: const Color(0xff0152A7),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                                width: 130,
                                child: Text(
                                  'Share Your Personal Profile',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Container(
                              height: 20,
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: Center(
                                  child: Text(
                                'Share Profile',
                                style: TextStyle(color: Colors.white),
                              ))),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff00DAA5),
                              shape: StadiumBorder()),
                        ),
                      )
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 1, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Patient Details',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Name'),
                Text(
                  'Jessica',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.blueAccent),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Surname'),
                Text(
                  'Simpson',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.blueAccent),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('DOB'),
                Text(
                  'July 16',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.blueAccent),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Country'),
                Text(
                  'UK',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.blueAccent),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 1, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Shared Profile',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.18,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text('DEC 8'),
                              Text(' 10:30 AM')
                            ],
                          )),
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.2,
                      color: const Color(0xffDCEDFE),
                    )),
                    SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Anna Kowaski',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      '7 views',
                      style: TextStyle(color: Colors.greenAccent),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )),
    ));
  }
}


BottomNavigationBar customBottomNavBar(){
  return   BottomNavigationBar(
          
          elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FloatingActionButton(onPressed: null,child: Icon(Icons.home),backgroundColor: Color(0xff00DAA5),),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.square,color: Colors.grey,),
            label: '',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month,color: Colors.grey,),
            label: '',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.notifications,color: Colors.grey,),
            label: '',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
       
       
        },
      );
}