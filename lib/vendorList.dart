import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:vendygo/vendorPage.dart';
import './models/vendor.dart';

class VendorList extends StatefulWidget {
  @override
  _VendorListState createState() => _VendorListState();
}

class _VendorListState extends State<VendorList> {
  Future<List<Vendor>> _getVendor() async {
    var data = await http
        .get("http://www.json-generator.com/api/json/get/cpHOinbBcO?indent=2");

    var jsonData = json.decode(data.body);
    List<Vendor> vendors = [];
    for (var u in jsonData) {
      Vendor vendor =
          Vendor(u["index"], u["about"], u["name"], u["email"], u["picture"]);
      vendors.add(vendor);
    }
    print(vendors.length);
    return vendors;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: _getVendor(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Container(
              child: Center(
                child: Text('Loading...'),
              ),
            );
          } else {
            return Column(
              children: <Widget>[
                Expanded(
                    flex: 5,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(snapshot.data[index].picture),
                            // backgroundColor: Colors.blueAccent,
                          ),
                          title: Text(snapshot.data[index].name),
                          subtitle: Text(snapshot.data[index].email),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        VendorPage(snapshot.data[index])));
                          },
                        );
                      },
                    ))
              ],
            );
          }
        },
      ),
    );
  }
}
