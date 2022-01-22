import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(

                    child:Image.network('https://cdn.pixabay.com/photo/2021/11/11/14/37/lake-6786472_960_720.jpg',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(32),
              child: Row(
                children: [
                  Expanded(
                    /*1*/
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /*2*/
                        Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: const Text(
                            'Oeschinen Lake Campground',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'Kandersteg, Switzerland',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  /*3*/
                  Icon(
                    Icons.star,
                    color: Colors.red[500],
                  ),
                  const Text('41'),
                ],
              ),

            ),

            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.call,size: 30,color: Colors.blueAccent,),
                  Icon(Icons.near_me,size: 30, color: Colors.blueAccent,),
                  Icon(Icons.share,size: 30, color:Colors.blueAccent,),
                ],

              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(child: Center(
                      child: Text('Switzerland is a mountainous Central European country, home to numerous lakes,'
                          ' villages and the high peaks of the Alps. '
                          'Its cities contain medieval quarters,'
                          ' with landmarks like capital Bern’s Zytglogge clock tower and Lucerne’s wooden chapel bridge.'
                          ' The country is also known for its ski resorts and hiking trails.'
                          ' Banking and finance are key industries,'
                          ' and Swiss watches and chocolate are world renowned.'),

                    )),
                  ],

                ),
              ),
            )
          ],

        ),
      ),
    );
  }
}
