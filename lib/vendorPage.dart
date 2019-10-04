import 'package:flutter/material.dart';
// import './vendorPage.dart';
import './models/vendor.dart';

class VendorPage extends StatelessWidget{
  final Vendor vendor;
  VendorPage(this.vendor);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(vendor.name),
      ),
    );
  }
}