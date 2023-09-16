


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homelyvendor/product/productpage.dart';

class CategoryPage extends StatefulWidget {
  final String? businessName;
  const CategoryPage({super.key, this.businessName});

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category List"),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            // var title =
            // product[index]["name"];
            // var stock =
            // product[index]["stock"];
            // var indexCat =
            // product[index]["index"];
            return createCatCard(title: "Pizza", stock: true, indexcat: "0");
          }),
    );
  }

  Widget createCatCard(
      {required String title, required bool stock, required String indexcat}) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(8),
        child: Card(
          child: SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        title,
                        style: GoogleFonts.basic(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Get.to(Products(
                            businessName: widget.businessName ?? '',
                            // title: title,
                            // catindex: indexcat,
                          ));
                        },
                        child: const Text("VIEW PRODUCTS"))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Switch(
                    value: stock,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      //
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
