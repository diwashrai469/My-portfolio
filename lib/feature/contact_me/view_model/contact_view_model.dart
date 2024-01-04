import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/core/base_model/base_model.dart';
import 'package:myportfolio/core/services/toast_services.dart';

class ContactViewModel extends BaseModel {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  Future<void> submitMessgae(
      {String? name, String? email, String? subject, String? message}) async {
    setLoading(true);
    try {
      CollectionReference portfolioCollection =
          FirebaseFirestore.instance.collection('myportfolio');

      await portfolioCollection.add(
        {'name': name, 'email': email, 'subject': subject, 'message': message},
      );

      ToastService().s(
          "Thank you for providing your information. I will respond to you shortly.");
      emailController.clear();
      nameController.clear();
      subjectController.clear();
      messageController.clear();
      setLoading(false);
    } catch (e) {
      ToastService().e("Somthing went wrong. Please try again later.$e");
      setLoading(false);
    }
  }
}
