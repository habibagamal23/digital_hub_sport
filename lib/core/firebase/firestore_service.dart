// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class FirestoreService {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//
//   Future<void> addUser(Map<String, dynamic> userData) async {
//     try {
//       await _firestore.collection(FirebaseConstants.usersCollection).add(userData);
//     } catch (e) {
//       rethrow;
//     }
//   }
//
//   Stream<QuerySnapshot> getUsers() {
//     return _firestore.collection(FirebaseConstants.usersCollection).snapshots();
//   }
// }flutterfire configure
