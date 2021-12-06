class OrderTotalModel {
  String discount;
  String name;
  String phone;
  String subtotal;
  String date;
  String status;
  String vid;
  String total;
  String savings;
  String address;
  String ref;

  OrderTotalModel(
      { 
        this.discount,
        this.name,
        this.phone,
        this.subtotal,
        this.date,
        this.status,
        this.vid,
        this.total,
        this.savings,
        this.address,
        this.ref});

  fromJson(Map<String, dynamic> json) {

  return  OrderTotalModel(
        discount : json['discount'],
        name : json['name'],
        phone : json['phone'],
    subtotal : json['subtotal'],
    date : json['date'],
    status : json['status'],
    vid : json['vid'],
    total : json['total'],
    savings : json['savings'],
    address : json['address'],
        ref : json['ref']
    );

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['discount'] = this.discount;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['subtotal'] = this.subtotal;
    data['date'] = this.date;
    data['status'] = this.status;
    data['vid'] = this.vid;
    data['total'] = this.total;
    data['savings'] = this.savings;
    data['address'] = this.address;
    data['ref'] = this.ref;
    return data;
  }
  
}



class OrderModel {
  String img;
  String price;
  String title;
  String recipe;
  String quantity;
  String requirement;
  String itemnumber;
  String cutprice;
  String ogprice;
  String ogcutprice;
  String discount;
  String shop;
  String ref;
  String date;
  String time;
  String vendorid;
  String foodid;


  OrderModel(
      {
        this.img,
        this.price,
        this.title,
        this.recipe,
        this.quantity,
        this.requirement,
        this.itemnumber,
        this.cutprice,
        this.ogprice,
        this.ogcutprice,
        this.discount,
        this.shop,
        this.date,
        this.time,
        this.ref,
        this.vendorid,
        this.foodid
      });

  fromJson(Map<String, dynamic> json) {
    return OrderModel(
      img : json['img'],
      price : json['price'],
      title : json['title'],
      recipe : json['recipe'],
      quantity : json['quantity'],
      requirement : json['requirement'],
      itemnumber : json['itemnumber'],
      cutprice : json['cutprice'],
      ogprice : json['ogprice'],
      ogcutprice : json['ogcutprice'],
      discount : json['discount'],
      shop : json['shop'],
      date : json['date'],
      time : json['time'],
      ref : json['ref'],
      vendorid : json['vendorid'],
      foodid : json["foodid"],
    );

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['img'] = this.img;
    data['price'] = this.price;
    data['title'] = this.title;
    data['recipe'] = this.recipe;
    data['quantity'] = this.quantity;
    data['requirement'] = this.requirement;
    data['itemnumber'] = this.itemnumber;
    data['cutprice'] = this.cutprice;
    data['ogprice'] = this.ogprice;
    data['ogcutprice'] = this.ogcutprice;
    data['discount'] = this.discount;
    data['shop'] = this.shop;
    data['date'] = this.date;
    data['time'] = this.time;
    data['ref'] = this.ref;
    data['vendorid'] = this.vendorid;
    data["foodid"] = this.foodid;
    return data;
  }

}
