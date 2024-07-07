import 'package:flutter/material.dart';
import 'package:learning_app_fyp/data/courseData.dart';

class ProductCard extends StatefulWidget {
  final String imageUrl;
  final String productName;
  final String description;
  final num price;
  final int indexxx;

  ProductCard({
    required this.imageUrl,
    required this.productName,
    required this.description,
    required this.price,
    required this.indexxx,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  List<Map<String, String>> favoriteItems = [];
  // String? itemName;
  // toggleFavorite(String itemName, String itemDec, String imgUrl, num price) {
  //   setState(() {
  //     if (favoriteItems.any((item) => item.containsValue(itemName))) {
  //       favoriteItems.removeWhere((item) => item.containsValue(itemName));
  //     } else {
  //       favoriteItems.add({
  //         'name': itemName,
  //         "decription": itemDec,
  //         "imgurl": imgUrl,
  //         "price": price.toString()
  //       });
  //     }
  //   });
  //   print(favoriteItems);
  //   print(favoriteItems.length);
  //   // print(favoriteItems.any((item) => item.containsValue(itemName)));
  //   // return itemName;
  // }
//naya wala
  void toggleFavorite(
      String itemName, String itemDec, String imgUrl, num price) {
    // setState(() {
    // if (favoriteItems.contains(itemName)) {
    //   favoriteItems.remove(itemName);
    // } else {
    //   favoriteItems.add({"name": itemName});
    // }
    // if (favoriteItems.any((item) => item.containsValue(itemName))) {
    //   favoriteItems.removeWhere((item) => item.containsValue(itemName));
    // } else {
    favoriteItems.add({
      'name': itemName,
      "decription": itemDec,
      "imgurl": imgUrl,
      "price": price.toString()
    });
    // }
    print(favoriteItems);
    // });
  }

  var tog;

  //  bool containsTitle = favoriteItems.any((item) => item['name'] == itemName);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7.0),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 7.0,
            offset: Offset(0, 0.3),
          ),
        ],
      ),
      width: 300,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              widget.imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          //yaha se column
          Column(
            children: [
              Text(
                widget.productName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                widget.description,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 10),
              Text(
                '\$${widget.price}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[700],
                ),
              ),
            ],
          ),

          IconButton(
              onPressed: () {
                toggleFavorite(
                  courseData[widget.indexxx]["courseName"],
                  courseData[widget.indexxx]["courseDescription"],
                  courseData[widget.indexxx]["imgUrl"],
                  courseData[widget.indexxx]["price"],
                );
              },
              icon: Icon(Icons.favorite_outline_outlined)),

          // IconButton(
          //   onPressed: () {
          //     toggleFavorite(
          //       courseData[widget.indexxx]["courseName"],
          //       courseData[widget.indexxx]["courseDescription"],
          //       courseData[widget.indexxx]["imgUrl"],
          //       courseData[widget.indexxx]["price"],
          //     );
          //     // tog = toggleFavorite(
          //     //   courseData[widget.indexxx]["courseName"],
          //     //   courseData[widget.indexxx]["courseDescription"],
          //     //   courseData[widget.indexxx]["imgUrl"],
          //     //   courseData[widget.indexxx]["price"],
          //     // );
          //     // print(tog);
          //     print(favoriteItems);
          //     // print(favoriteItems.any((item) => item.containsValue(tog)));

          //     // print(itemName);
          //     // print(d);
          //     // print(itemName);
          //   },
          //   icon: Icon(
          //     favoriteItems.any((item) => item['name'] == tog)
          //         ? Icons.favorite
          //         : Icons.favorite_border,
          //     color: favoriteItems.any((item) => item['name'] == tog)
          //         ? Colors.red
          //         : null,
          //   ),
          // )
        ],
      ),
    );
  }
}
// bool isFavorite = favoriteItems.any((item) => item.containsValue(itemName));
