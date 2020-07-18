import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AddCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'card',
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Add Card',
            style: Theme.of(context).textTheme.headline6,
          ),
          actions: [IconButton(icon: Icon(Icons.info), onPressed: () {})],
        ),
        body: ListView(
          padding: EdgeInsets.all(24),
          children: [
            Center(child: Text('Add a new debit/Credit card here',style: Theme.of(context).textTheme.bodyText1,)),
            SizedBox(
              height: 15,
            ),
            Form(
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Card Number')),
                  TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        suffix: Icon(
                          MaterialCommunityIcons.credit_card_scan_outline,
                          color: Theme.of(context).accentColor,
                        )),
                  ),
                  Row(
                    children: [
                      Expanded(
                                              child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Card Number')),
                            TextFormField(
                              decoration: InputDecoration(
                                  fillColor: Colors.grey[200],
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  suffix: Icon(
                                    MaterialCommunityIcons
                                        .credit_card_scan_outline,
                                    color: Theme.of(context).accentColor,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                                              child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Card Number')),
                            TextFormField(
                              decoration: InputDecoration(
                                  fillColor: Colors.grey[200],
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  suffix: Icon(
                                    MaterialCommunityIcons
                                        .credit_card_scan_outline,
                                    color: Theme.of(context).accentColor,
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
