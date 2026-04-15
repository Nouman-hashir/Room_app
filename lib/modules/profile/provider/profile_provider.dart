import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileProvider extends ChangeNotifier {
  bool isEnabled = true;
  final ImagePicker _picker = ImagePicker();

  File? _profileImage;
  File? get profileImage => _profileImage;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void toggleSwitch(bool value) {
    isEnabled = value;
    notifyListeners();
  }

  Future<void> pickImage({required ImageSource source}) async {
    try {
      _isLoading = true;
      notifyListeners();

      final XFile? file = await _picker.pickImage(source: source);

      if (file != null) {
        _profileImage = File(file.path);
      }
    } catch (e) {
      debugPrint("Error picking image: $e");
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}