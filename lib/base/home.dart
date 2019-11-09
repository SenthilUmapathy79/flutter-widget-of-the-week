import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return _homeListView(context);
      }
    }

    Widget _homeListView(BuildContext context) {
      // backing data
      final weekTitles = ['Albania', 'Andorra', 'Armenia', 'Austria', 
        'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
        'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
        'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
        'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
        'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
        'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
        'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden', 
        'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];

      return ListView.builder(
        itemCount: weekTitles.length,
        itemBuilder: (context, index) {
          return Card ( 
            child: ListTile(
            title: Text("Week# " + index.toString() + " - " + weekTitles[index]),
            leading: Icon(Icons.local_florist),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Week#'+index.toString());
              Navigator.pushNamed(context, '/week1');
            },
            ),
          );
        },
      );
    }