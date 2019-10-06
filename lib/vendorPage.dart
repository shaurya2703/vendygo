import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:vendygo/sideDrawer.dart';
// import './vendorPage.dart';
import './models/vendor.dart';
import './models/vendorItems.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class VendorPage extends StatefulWidget {
  final Vendor vendor;
  VendorPage(this.vendor);
  @override
  _VendorPageState createState() => _VendorPageState(vendor);
}

class _VendorPageState extends State<VendorPage> {
  final Vendor _vendor;
  _VendorPageState(this._vendor);

  Future<List<VendorItems>> _getVendorItems(Vendor _vendor) async {
    var data = await http
        .get("http://www.json-generator.com/api/json/get/cgoEyOqQPm?indent=2");

    var jsonData = json.decode(data.body);
    List<VendorItems> items = [];
    for (var u in jsonData) {
      VendorItems item =
          VendorItems(_vendor.index, u["itemName"], u["itemPrice"]);
      items.add(item);
    }
    // print(_vendor.index);
    print(items.length);
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Image.asset('assets/indian-street-vendor.jpg',colorBlendMode: BlendMode.modulate,),
              
                Text(_vendor.name,
                    style: TextStyle(color: Colors.white, fontSize: 40.0))
              ],
            ),
            FutureBuilder(
              future: _getVendorItems(_vendor),
              builder: (BuildContext context, AsyncSnapshot snapshot){
                if (snapshot.hasError){
                  return Container(
                    child: Center(
                      child: Text("${snapshot.error}"),
                    ),
                  );
                }
                else if(snapshot.hasData) {
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context,int index){
                      return Card(
                        child: ListTile(
                          title: Text(snapshot.data[index].itemName),
                          subtitle: Text(snapshot.data[index].itemPrice),
                        )
                      );
                    },
                  );
                }
                return CircularProgressIndicator();
              },
            )
          ],
        ));
  }
}
