import 'package:flutter/material.dart';

class TextLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(left: 20, bottom: 5, right: 20, top: 20),
            child: Text(
              'About Us',
              style: TextStyle(
                  color: Color.fromARGB(255, 23, 25, 43),
                  fontFamily: 'CrimsonText',
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            )),
        Divider(),
        Padding(
          padding: EdgeInsets.only(left: 20, bottom: 10, right: 20, top: 20),
          child: Text(
            "Welcome, dear user! \n\nCereus is a collection of tropical cacti that are known for putting on a spectacular, aromatic exhibit in the evening. These fascinating plants have captured the attention of people all around the world and have become a popular addition to many households. \n\nHowever, there is much more to these plants than just their beauty. Cacti have been found to have numerous health benefits, including anti-inflammatory and anti-oxidant properties, making them a valuable addition to a healthy lifestyle. In addition to their health benefits, cacti are also important for the Earth's delicate ecosystems. They are adapted to survive in harsh environments and are able to conserve water, making them an essential part of many desert and arid landscapes. \n\nThe Cereus application is designed to inspire people to appreciate, study, and protect cacti plants. With this app, users can learn more about the different types of cacti, their unique features, and their natural habitats. \n\nStay tuned for more features coming soon! We are constantly working to improve the user experience and provide even more valuable information about these incredible plants. \n\nIf you have any feedback or questions, please don't hesitate to contact us at 092-234-567. We would love to hear from you and are always open to suggestions for how we can improve the app.",
            style: TextStyle(
                color: Color.fromARGB(255, 66, 75, 114),
                fontFamily: 'CrimsonText',
                fontSize: 18),
          ),
        ),
      ],
    );
  }
}
