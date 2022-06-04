import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<File?> pickImage(ImageSource source) async {
  final ImagePicker picker = ImagePicker();

  final XFile? image = await picker.pickImage(source: source);

  final File? file = File(image!.path);

  if (file != null) {
    return file;
  }
}

showSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}
