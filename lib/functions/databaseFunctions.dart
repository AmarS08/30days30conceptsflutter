import 'package:cloud_firestore/cloud_firestore.dart';

create(String collectionName, documentName, name, animal, int age) async {
  await FirebaseFirestore.instance
      .collection(collectionName)
      .doc(documentName)
      .set({
    'name': name,
    'animal': animal,
    'age': age,
  });
  print(
      "-------------------------------Data Base Updated==============================");
}

update(String collectionName, documentName, field, var newFieldValue) async {
  await FirebaseFirestore.instance
      .collection(collectionName)
      .doc(documentName)
      .update({
    field: newFieldValue,
  });
  print(
      "-------------------------------Data Base Updated==============================");
}

delete(String collectionName, documentName) async {
  await FirebaseFirestore.instance
      .collection(collectionName)
      .doc(documentName)
      .delete();
  print(
      "###########################################Document Deleted#####################################");
}
