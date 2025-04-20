import 'package:cloud_firestore/cloud_firestore.dart';

class DbService{
  Stream<QuerySnapshot> readCategories(){
    return FirebaseFirestore.instance.collection("shop_categories").snapshots();
  }

  Future createCategories({required Map<String, dynamic> data})async{
    await FirebaseFirestore.instance.collection("shop_categories").add(data);
  }

  Future updateCategories({required String docId, required  Map <String, dynamic> data})async{
    await FirebaseFirestore.instance.collection("shop_categories").doc(docId).update(data);
  }
  Future deleteCategories({required String docId})async{
    await FirebaseFirestore.instance.collection("shop_categories").doc(docId).delete();
  }
}