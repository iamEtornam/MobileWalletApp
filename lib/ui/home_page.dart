import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Colors.cyan[100],
              Colors.cyan[200],
              Colors.cyan[300],
              Colors.cyan[400],
              Colors.cyan,
            ])),
        child: Column(
          children: [
            FlutterLogo(
              size: 80,
            ),
            Center(child: Text('Current Amount')),
            Center(
              child: Text(
                'GHS100.OO',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text('Add Card'),
                      Icon(
                        Icons.add,
                        color: Colors.cyan,
                      )
                    ],
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text('Send Money'),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.cyan,
                      )
                    ],
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                )
              ],
            ),
            Spacer(),
            Container(
              child: DraggableScrollableSheet(builder: (context, scrollController) {
                return Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Payment History',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 30,
                          padding: EdgeInsets.only(left: 16),
                          width: size.width,
                          color: Colors.white,
                          child: Text(
                            'Names'.toUpperCase(),
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: 25,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: CircleAvatar(),
                                  title: Text(
                                    'title $index',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Row(
                                    children: [
                                      Material(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(45),
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Text(
                                            'transfer'.toUpperCase(),
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text('02:26pm')
                                    ],
                                  ),
                                  trailing: RichText(
                                      text: TextSpan(
                                          text: '- ',
                                          style: TextStyle(fontSize: 14),
                                          children: [
                                        TextSpan(
                                            text: 'GHS ',
                                            style: TextStyle(fontSize: 12)),
                                        TextSpan(
                                            text: '100',
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.w600))
                                      ])),
                                );
                              }),
                        ),
                      ],
                    ),
                );
              }),
            ),
    
          ],
        ),
      ),
 );
  }
}
