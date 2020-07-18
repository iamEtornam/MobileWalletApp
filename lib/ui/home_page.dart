import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/ui/add_card_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          Container(
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                ),
                FlutterLogo(
                  size: 80,
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                    child: Text(
                  'Current Amount',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Colors.white60),
                )),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    'GHS100.OO',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Hero(
                      tag: 'card',
                                          child: FlatButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return AddCardPage();
                          },fullscreenDialog: true));
                        },
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                      ),
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox.expand(
            child:
                DraggableScrollableSheet(builder: (context, scrollController) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Payment History',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontWeight: FontWeight.w600, color: Colors.grey)),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 30,
                      padding: EdgeInsets.only(left: 16),
                      width: size.width,
                      color: Colors.grey[200],
                      child: Text(
                        'Names'.toUpperCase(),
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          addAutomaticKeepAlives: true,
                          controller: scrollController,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: CircleAvatar(
                                backgroundImage: ExactAssetImage(index.isEven
                                    ? 'assets/av_1.jpg'
                                    : 'assets/av_2.jpg'),
                              ),
                              title: Text(
                                index.isEven ? 'Mark' : 'Jane',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Row(
                                children: [
                                  Material(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(45),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Text(
                                        'transfer'.toUpperCase(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    '02:26pm',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2
                                        .copyWith(color: Colors.grey),
                                  )
                                ],
                              ),
                              trailing: RichText(
                                  text: TextSpan(
                                      text: '- ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2
                                          .copyWith(color: Colors.grey),
                                      children: [
                                    TextSpan(
                                        text: 'GHS ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2
                                            .copyWith(
                                                color: Colors.grey,
                                                fontSize: 12)),
                                    TextSpan(
                                        text: '${Random().nextInt(1000)}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2
                                            .copyWith(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 24))
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
    );
  }
}
