// @dart=2.12
import 'package:flutter/widgets.dart';

/// An interface for manipulating the selection, to be used by the implementor
/// of the toolbar widget.
abstract class ZefyrTextSelectionDelegate with TextSelectionDelegate {
  bool openLinkEnabled = true;
  String selectedLink = '';

  void openLink(String url);
}
