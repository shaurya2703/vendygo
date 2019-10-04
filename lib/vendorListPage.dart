import 'package:flutter/material.dart';
import 'package:vendygo/vendorList.dart';


class VendorListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vendors Near You',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),),
     body: VendorList(),
    );
  }
}