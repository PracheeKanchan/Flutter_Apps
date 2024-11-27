// ignore_for_file: unused_field

import 'package:image_picker/image_picker.dart';

class CustomImagePicker{

  final ImagePicker image_Picker = ImagePicker();
  XFile? _image;  // Variable to store the picked image
  

  // Function to pick an image from the gallery
  Future<void> _pickImageFromGallery() async {

    final XFile? pickedFile = await image_Picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      _image=pickedFile;
    }
  }

  // Function to capture an image using the camera
  Future<void> _pickImageFromCamera() async {

    final XFile? pickedFile = await image_Picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
        _image = pickedFile;
    }
  }

}