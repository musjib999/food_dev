
import 'package:flutter/material.dart';

  // int counter = 1;


class AddedCartItem extends StatelessWidget {
  AddedCartItem({this.imagePath, this.itemTitle, this.itemPrice});

  final String imagePath;
  final String itemTitle;
  final String itemPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 80.0,
            margin: EdgeInsets.all(10.0),
            child: Image.asset(imagePath),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                itemTitle,
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              Text(
                itemPrice,
                style: TextStyle(color: Colors.red, fontSize: 20.0),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(
              10.0,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    
                  },
                ),
                Text(
                  '1',
                  style: TextStyle(fontSize: 25.0),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



// class AddedCartItem extends StatefulWidget {
//   AddedCartItem({this.imagePath, this.itemTitle, this.itemPrice});

//   final String imagePath;
//   final String itemTitle;
//   final String itemPrice;

//   @override
//   _AddedCartItemState createState() => _AddedCartItemState();
// }

// class _AddedCartItemState extends State<AddedCartItem> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Container(
//             width: 80.0,
//             margin: EdgeInsets.all(10.0),
//             child: Image.asset(
//               'images/pizza.png'
//             ),
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text(
//                 'Cool',
//                 style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 '10',
//                 style: TextStyle(color: Colors.red, fontSize: 20.0),
//               ),
//             ],
//           ),
//           Container(
//             margin: EdgeInsets.all(
//               10.0,
//             ),
//             decoration: BoxDecoration(
//               border: Border.all(
//                 color: Colors.grey,
//               ),
//               borderRadius: BorderRadius.circular(7.0),
//             ),
//             child: Row(
//               children: <Widget>[
//                 IconButton(
//                   icon: Icon(Icons.delete),
//                   onPressed: () {
//                     setState(() {
//                       counter--;
//                     });
                    
//                   },
//                 ),
//                 Text(
//                   counter.toString(),
//                   style: TextStyle(fontSize: 25.0),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.add),
//                   onPressed: () {
//                     setState(() {
//                                           counter++;

//                     });
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }