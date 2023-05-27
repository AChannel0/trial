import 'package:flutter/material.dart';
import 'package:cereusfirebase/models/cereusplant.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CereusProvider extends InheritedWidget {
  final cereus = <CereusPlant>[];

  CereusProvider({Key? key, Widget? child}) : super(key: key, child: child!);

  Future<void> fetchData() async {
    cereus.clear();
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection('cereus').get();

      querySnapshot.docs.forEach((doc) {
        final cereusPlant = CereusPlant(
          localName: doc["localName"],
          descriptionplant: doc["descriptionplant"],
          imageUrl: doc["imrl"],
        );
        cereus.add(cereusPlant);
      });
    } catch (e) {
      print('Error fetching cereus: $e');
    }

    print('Fetched ${cereus.length} cereus');
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  static CereusProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CereusProvider>();
  }
}
