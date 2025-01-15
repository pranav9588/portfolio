import 'dart:html' as html;
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_portfolio_web/app/color_manager.dart';
import 'package:my_portfolio_web/extra_resources/widgets/common_text_widget.dart';

class AnimatedDownloadButton extends StatefulWidget {
  const AnimatedDownloadButton({super.key});

  @override
  _AnimatedDownloadButtonState createState() => _AnimatedDownloadButtonState();
}

class _AnimatedDownloadButtonState extends State<AnimatedDownloadButton> {
  bool _isDownloading = false;
  bool _isDownloaded = false;

  Future<void> _downloadFile(String url, String fileName) async {
    setState(() {
      _isDownloading = true;
    });

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final Uint8List fileBytes = response.bodyBytes;
        final blob = html.Blob([fileBytes]);
        final blobUrl = html.Url.createObjectUrlFromBlob(blob);

        final anchor = html.AnchorElement(href: blobUrl)
          ..target = 'blank'
          ..download = fileName
          ..click();

        html.Url.revokeObjectUrl(blobUrl);

        setState(() {
          _isDownloaded = true;
        });
      } else {
        debugPrint('Error: Unable to download file.');
      }
    } catch (e) {
      debugPrint('Error downloading file: $e');
    } finally {
      setState(() {
        _isDownloading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorManager.orange,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: MaterialButton(
        onPressed: () {
          if (!_isDownloaded && !_isDownloading) {
            const fileUrl = 'https://example.com/sample.pdf'; // Replace with your URL
            const fileName = 'sample.pdf'; // Replace with your file name
            _downloadFile(fileUrl, fileName);
          }
        },
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: CommonTextWidget(
              text:   _isDownloading
                    ? "Downloading..."
                    : _isDownloaded
                    ? "Downloaded"
                    : "Download CV",
                key: ValueKey<String>(_isDownloading
                    ? "Downloading..."
                    : _isDownloaded
                    ? "Downloaded"
                    : "Download CV"),
                fontWeight: FontWeight.w800, fontSize: 16,
              ),
            ),
            const SizedBox(width: 12),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: _isDownloading
                  ? SizedBox(
                key: const ValueKey("spinner"),
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 2.0,
                  color: ColorManager.orange,
                ),
              )
                  : Icon(
                _isDownloaded ? Icons.check : Icons.download,
                key: ValueKey<String>(
                    _isDownloaded ? "check" : "download"),
                color: ColorManager.orange,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
