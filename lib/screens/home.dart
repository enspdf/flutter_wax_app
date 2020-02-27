import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wax_app/screens/settings.dart';
import 'package:provider/provider.dart';
import 'package:flutter_wax_app/models/report.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var reports = Provider.of<List<Report>>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Wax App"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Settings(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: reports.length,
        itemBuilder: (context, index) {
          Report report = reports[index];
          return ListTile(
            leading: Text(report.temp.toString()),
            title: Text(report.wax),
            subtitle: Text(report.line),
            trailing: Text(formatDate(
                DateTime.parse(report.timeStamp), [h, ":", nn, " ", am])),
          );
        },
      ),
    );
  }
}
