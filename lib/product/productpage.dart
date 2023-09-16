import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Products extends StatefulWidget {
  final String businessName;
  const Products({super.key, required this.businessName});

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              var img =
                  "https://firebasestorage.googleapis.com/v0/b/food-app-b497c.appspot.com/o/images%2FCELsGClUsAAPvEX.jpg?alt=media&token=e735799d-bc9a-4cb6-8832-5de796086f9f";
              var title = "Burger Adda";
              var price = "100";
              var cutprice = "50";
              var recipe = "Mayo,Chicken";
              var category = "Pizza";
              var stock = true;
              return Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  child: createCartListItem(
                      img,
                      title,
                      price,
                      "product[index].id",
                      cutprice == "" ? false : true,
                      cutprice == "" ? "" : cutprice,
                      cutprice == ""
                          ? ""
                          : (int.parse(price) - int.parse(cutprice)).toString(),
                      recipe,
                      category,
                      index,
                      context,
                      stock));
            },
          )),
    );
  }

  createCartListItem(
      String img,
      String title,
      String price,
      String itemnumber,
      bool discountVisibility,
      String cutprice,
      String discount,
      String recipe,
      String category,
      int index,
      // AsyncSnapshot<QuerySnapshot> prodDocument,
      BuildContext context,
      bool stock) {
    return Card(
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(
                      right: 8, left: 8, top: 8, bottom: 8),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(14)),
                      color: Colors.white,
                      image: DecorationImage(image: NetworkImage(img))),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(right: 8, top: 4),
                          child: Text(
                            title,
                            maxLines: 2,
                            softWrap: true,
                          ),
                        ),
                        const SizedBox(height: 6, width: 0),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        cutprice == ""
                                            ? ""
                                            : "Rs.${(int.parse(cutprice)).toString()}",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.purple.shade400),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Rs.$price",
                                        style: discountVisibility
                                            ? const TextStyle(
                                                fontSize: 14,
                                                color: Colors.blueGrey,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                              )
                                            : TextStyle(
                                                fontSize: 16,
                                                color: Colors.purple.shade400),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Switch(
                                      value: stock,
                                      activeColor: Colors.blue,
                                      onChanged: (value) {
                                        // print("title : ${widget.businessName}");
                                        // print("title : $title");
                                        // print("VALUE : $value");
                                        // FirebaseFirestore.instance
                                        //     .collection("Restaurant")
                                        //     .doc(widget.businessName)
                                        //     .collection("products")
                                        //     .doc(title)
                                        //     .update({"instock": value});
                                      },
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  flex: 100,
                )
              ],
            ),
          ),
          Visibility(
            visible: discountVisibility,
            child: Positioned(
                top: 10,
                left: 20,
                child: Container(
                  width: 60,
                  height: 25,
                  child: Center(
                      child: Text(
                    "₹ $discount OFF",
                    style: GoogleFonts.arvo(fontSize: 12, color: Colors.white),
                  )),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: Colors.green,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
