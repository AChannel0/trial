// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:cereusfirebase/models/cereusplant.dart';
// // import 'dart:async';

// // class FirestoreData {
// //   final FirebaseFirestore db = FirebaseFirestore.instance;

// //   Future<List<CereusPlant>?> getPlants() async {
// //     try {
// //       CollectionReference plantCollection = db.collection("plants");
// //       List<CereusPlant> myPlants = List.empty(growable: true);

// //       QuerySnapshot snapshot = await plantCollection.get();
// //       List<QueryDocumentSnapshot> plantList = snapshot.docs;

// //       for (DocumentSnapshot snap in plantList) {
// //         CereusPlant temp = CereusPlant(
// //           description: snap.get("description"),
// //           imageUrl: snap.get("imageUrl"),
// //           localName: snap.get("localName"),
// //         );
// //         myPlants.add(temp);
// //       }
// //       return myPlants;
// //     } catch (error) {
// //       return null;
// //     }
// //   }
// // }

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'dart:async';

// class FirestoreData {
//   final CollectionReference plantList =
//       FirebaseFirestore.instance.collection('plantsDetails');

//   Future<void> createPlantData(
//       String imageurl,
//       String description,
//       String kingdom,
//       String localname,
//       String scientificname,
//       String family) async {
//     return await plantList.doc().set({
//       'imageurl': imageurl,
//       'description': description,
//       'kingdom': kingdom,
//       'localname': localname,
//       'scientificname': scientificname,
//       'family': family
//     });
//   }

//   Future<List> getPlantsList() async {
//     List<Map<String, dynamic>> itemsList = [];
//     try {
//       await plantList.get().then((QuerySnapshot querySnapshot) {
//         querySnapshot.docs.forEach((DocumentSnapshot documentSnapshot) {
//           Map<String, dynamic>? data = documentSnapshot.data();
//           if (data != null) {
//             itemsList.add(data);
//           }
//         });
//       });
//       return itemsList;
//     } catch (e) {
//       print(e.toString());
//       return [];
//     }
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cereusfirebase/models/firebaseplant.dart';
import 'dart:async';

class FirestoreData {
  final FirebaseFirestore db = FirebaseFirestore.instance;

  // Create functions to fetch data
  Future<List<CereusFirebase>?> getPlants() async {
    try {
      CollectionReference plantCollection = db.collection("plantsDetails");
      List<CereusFirebase> myPlants = List.empty(growable: true);

      // fetch data
      QuerySnapshot snapshot = await plantCollection.get();
      List<QueryDocumentSnapshot> plantList = snapshot.docs;

      for (DocumentSnapshot snap in plantList) {
        // transform the data
        CereusFirebase temp = CereusFirebase(
            imageurl: snap.get("imageurl"),
            scientificname: snap.get("scientificname"),
            localname: snap.get("localname"),
            description: snap.get("description"),
            family: snap.get("family"),
            kingdom: snap.get("kingdom"));
        myPlants.add(temp);
      }
      print(plantList);

      return myPlants;
    } catch (error) {
      print(error);
      return null;
    }
  }
}
