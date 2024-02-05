import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  @override
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final ImagePicker _picker = ImagePicker();
  XFile? _image;

  Future<void> _getImage(ImageSource source) async {
    final XFile? image = await _picker.pickImage(source: source);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image == null
                ? const Text('No image selected.')
                : Image.file(File(_image!.path)),
            ElevatedButton(
              onPressed: () {
                _getImage(ImageSource.camera);
              },
              child: const Text('Take a picture'),
            ),
            ElevatedButton(
              onPressed: () {
                _getImage(ImageSource.gallery);
              },
              child: const Text('Select from gallery'),
            ),
          ],
        ),
      ),
    );
  }
}
