import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_flutter_app/controllers/db_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdminProvider extends ChangeNotifier{
  List<QueryDocumentSnapshot> categories=[];
  StreamSubscription<QuerySnapshot>? _categorySubscription;

  int totalCategories= 0;
  AdminProvider(){
    getCategories();
  }

  // Get all the categories
  void getCategories(){
    _categorySubscription?.cancel();
    _categorySubscription= DbService().readCategories().listen((snapshot){
      categories= snapshot.docs;
      totalCategories= snapshot.docs.length;
      notifyListeners();
    });
  }
}