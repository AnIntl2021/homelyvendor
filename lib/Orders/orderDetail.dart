import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class OrderTotal extends StatefulWidget {
  const OrderTotal({super.key});

  @override
  _OrderTotalState createState() => _OrderTotalState();
}

class _OrderTotalState extends State<OrderTotal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Detail"),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "Order Id: 123456",
                style: GoogleFonts.basic(
                    color: Colors.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text("ACCEPT",
                    style: GoogleFonts.basic(color: Colors.white))),
            SizedBox(
              width: 20,
            ),
            Visibility(
              visible: true,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  onPressed: () {},
                  child: Text("CANCEL",
                      style: GoogleFonts.basic(color: Colors.white))),
            ),
            InkWell(
                onTap: () {
                  launch('tel:${9653137263}');
                },
                child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Customer Number: ${9653137263}"),
                    ))),
            SizedBox(height: 50),
            Text("Customer Address: Mumbai 4--612"),
            Divider(
              thickness: 1,
            ),
            Text(
              "Order Details",
              style: GoogleFonts.basic(fontSize: 18),
            ),
            cartListNew(),
            footer(context, "300", "0", "12", "100", "12", "100")
          ],
        )),
      ),
    );
  }

  footer(BuildContext context, String subTotal, String wallet, String discount,
      String total, String delivery, String savings) {
    var earning = ((double.parse(subTotal) - double.parse(savings)) -
            ((double.parse(subTotal)) * 1))
        .toString();
    return Card(
      margin: EdgeInsets.only(top: 15, left: 10, right: 10),
      elevation: 1,
      child: Container(
        height: 240,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            billRow("Sub Total", subTotal.toString()),
            SizedBox(height: 8, width: 10),
            billRow("Total Savings", savings.toString()),
            // SizedBox(height: 8, width: 0),
            // billRow("Commision",
            //     ((double.parse(subTotal) * 1)).toString()),
            SizedBox(height: 8, width: 0),
            billRow("Total", earning.toString()),
            SizedBox(height: 8, width: 0), SizedBox(height: 8, width: 0),
          ],
        ),
      ),
    );
  }

  Row billRow(String text, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Text(
            text,
            style: TextStyle(color: Colors.blueGrey, fontSize: 18),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\₹",
                style:
                    TextStyle(color: Colors.deepOrange.shade700, fontSize: 14),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                price,
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }

  cartListNew() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: createCartListItem(
                "https://firebasestorage.googleapis.com/v0/b/food-app-b497c.appspot.com/o/Burger-webp-Clipart%20(1).webp?alt=media&token=7ccdbf05-e37d-4da4-b784-f6882ac0084e",
                "title",
                "requirement",
                "price",
                "1",
                "document.id",
                true,
                "100",
                (int.parse("200") - int.parse("100")).toString(),
                "200",
                "100",
                1,
                context,
                "recipe")));
  }

  createCartListItem(
      String img,
      String title,
      String requirement,
      String price,
      String quantity,
      String itemnumber,
      bool discountVisibility,
      String cutprice,
      String discount,
      String ogprice,
      String ogcutprice,
      int index,
      BuildContext context,
      String recipe) {
    return Card(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
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
                          padding: EdgeInsets.only(right: 8, top: 4),
                          child: Text(
                            title,
                            maxLines: 2,
                            softWrap: true,
                            style:
                                TextStyle(fontSize: 14, color: Colors.blueGrey),
                          ),
                        ),
                        Text(
                          recipe,
                          maxLines: 2,
                          softWrap: true,
                          style:
                              TextStyle(fontSize: 14, color: Colors.blueGrey),
                        ),
                        Text(
                          "Quantity: $quantity",
                          style: TextStyle(color: Colors.green, fontSize: 18),
                        ),
                        SizedBox(height: 6, width: 0),
                        Text(
                          "Special Requirement: $requirement",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        SizedBox(
                          height: 10,
                        ),
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
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Rs.${price}",
                                        style: discountVisibility
                                            ? TextStyle(
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
                    "₹ ${discount} OFF",
                    style: GoogleFonts.arvo(fontSize: 12, color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: Colors.green,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
