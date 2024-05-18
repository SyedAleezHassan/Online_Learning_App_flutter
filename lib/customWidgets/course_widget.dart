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

List<Map<String, String>> favoriteItems = [];

class _ProductCardState extends State<ProductCard> {
  void toggleFavorite(
      String itemName, String itemDec, String imgUrl, num price) {
    setState(() {
      // if (favoriteItems.contains(itemName)) {
      //   favoriteItems.remove(itemName);
      // } else {
      //   favoriteItems.add({"name": itemName});
      // }
      if (favoriteItems.any((item) => item.containsValue(itemName))) {
        favoriteItems.removeWhere((item) => item.containsValue(itemName));
      } else {
        favoriteItems.add({
          'name': itemName,
          "decription": itemDec,
          "imgurl": imgUrl,
          "price": price.toString()
        });
      }
    });
  }

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
                print(favoriteItems);
              },
              icon: Icon(Icons.favorite_outline_outlined)),
        ],
      ),
    );
  }
}
