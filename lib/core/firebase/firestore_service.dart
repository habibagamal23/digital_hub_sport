import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /// Add a document to a collection
  Future<void> addDocument(String collectionPath, String documentId,
      Map<String, dynamic> data) async {
    try {
      await _firestore.collection(collectionPath).doc(documentId).set(data);
    } catch (e) {
      throw Exception('Failed to add document: $e');
    }
  }

  /// Update a document in a collection
  Future<void> updateDocument(String collectionPath, String documentId,
      Map<String, dynamic> data) async {
    try {
      await _firestore.collection(collectionPath).doc(documentId).update(data);
    } catch (e) {
      throw Exception('Failed to update document: $e');
    }
  }

  /// Delete a document from a collection
  Future<void> deleteDocument(String collectionPath, String documentId) async {
    try {
      await _firestore.collection(collectionPath).doc(documentId).delete();
    } catch (e) {
      throw Exception('Failed to delete document: $e');
    }
  }

  /// Get a document from a collection
  Future<Map<String, dynamic>> getDocument(
      String collectionPath, String documentId) async {
    try {
      final doc =
          await _firestore.collection(collectionPath).doc(documentId).get();
      if (doc.exists) {
        return doc.data()!;
      } else {
        throw Exception('Document does not exist');
      }
    } catch (e) {
      throw Exception('Failed to get document: $e');
    }
  }

  /// Get a stream of documents in a collection
  Stream<List<Map<String, dynamic>>> getCollectionStream(
      String collectionPath) {
    try {
      return _firestore.collection(collectionPath).snapshots().map((snapshot) {
        return snapshot.docs.map((doc) => doc.data()).toList();
      });
    } catch (e) {
      throw Exception('Failed to get collection stream: $e');
    }
  }

  /// Get a stream of a single document
  Stream<Map<String, dynamic>> getDocumentStream(
      String collectionPath, String documentId) {
    try {
      return _firestore
          .collection(collectionPath)
          .doc(documentId)
          .snapshots()
          .map((doc) {
        if (doc.exists) {
          return doc.data()!;
        } else {
          throw Exception('Document does not exist');
        }
      });
    } catch (e) {
      throw Exception('Failed to get document stream: $e');
    }
  }
}
