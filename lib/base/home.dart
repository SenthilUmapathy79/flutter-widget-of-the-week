import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter_widget_of_the_week/common/screenargs.dart';

class HomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _homeListView(context);
  }
}

Widget _homeListView(BuildContext context) {
  
  print('_homeListView123');
  return FutureBuilder(
    future:
        DefaultAssetBundle.of(context).loadString('assets/widgets_data.json'),
    builder: (context, snapshot) {

      print('FutureBuilder - future');
      print(snapshot);
      // Decode the JSON
      var widgetListData = json.decode(snapshot.data.toString());
      print(snapshot.data.toString());

      return ListView.builder(
        itemCount: widgetListData == null ? 0 : widgetListData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title:
                  Text(widgetListData[index]['title']),
              leading: Icon(Icons.local_florist),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                print('Navigating to ' + widgetListData[index]['routeName']);
                Navigator.pushNamed(
                  context, 
                  widgetListData[index]['routeName'],
                  arguments: ScreenArguments(
                      'Accept Arguments Screen',
                      'This message is extracted in the onGenerateRoute function.',
                    ));
              },
            ),
          );
        },
      );
    },
  );
}
