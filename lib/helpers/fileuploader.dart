import 'dart:async';

import 'package:dio/dio.dart';
import 'package:wetrac/config/env.dart';
import 'package:wetrac/config/http.dart';

class FileUploader {
  FileUploader(
    this.imageLink,
  ) {
    _uploadFile(imageLink);

    _controller = new StreamController<Map<String, dynamic>>(
      // onListen: _onListen,
      onCancel: _onCancel,
    );
  }

  double _progressValue = 0;
  final imageLink;
  final http = HttpClient().httpIncercept;

  StreamController<Map<String, dynamic>> _controller;
  Stream<Map<String, dynamic>> get stream => _controller.stream;

  _uploadFile(dynamic imageLink) async {
    try {
      final fileName = imageLink.path.split('/').last as String;
      var formData = FormData.fromMap({
        "file": await MultipartFile.fromFile(
          imageLink.path as String,
          filename: fileName,
        ),
      });

      final response = await http.post(
        env.baseUrl + '/uploads/uploadStoreHardwareImage',
        data: formData,
        onSendProgress: (int sent, int total) {
          // print("$sent $total");
          _progressValue = ((sent * 100) / total);
          _progressValue = double.parse((_progressValue.toStringAsFixed(0)));

          _controller.add({
            'progress': _progressValue,
            'id': null,
          });
        },
      );

      final responseData = response.data;
      String fileId = responseData['id'] as String;

      _controller.add({
        'progress': 100.0,
        'id': fileId,
      });

      if (fileId != null) _controller.close();
    } catch (error) {
      if (_controller != null) _controller.close();
      throw error;
    }
  }

  _onCancel() {
    _controller.close();
  }
}
