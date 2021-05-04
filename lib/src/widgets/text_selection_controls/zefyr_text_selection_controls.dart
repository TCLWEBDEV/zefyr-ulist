// @dart=2.12
import 'package:flutter/widgets.dart';
import 'package:zefyr/src/widgets/text_selection_controls/zefyr_text_selection_delegate.dart';

/// An interface for building the selection UI, to be provided by the
/// implementor of the toolbar widget.
///
/// Override text operations such as [handleCut] if needed.
abstract class ZefyrTextSelectionControls with TextSelectionControls {
  /// Whether the current selection of the text field managed by the given
  /// `delegate` can be extended to include the entire content of the text
  /// field.
  ///
  /// Subclasses can use this to decide if they should expose the open url
  /// functionality to the user.
  bool canOpenLink(ZefyrTextSelectionDelegate delegate) {
    return delegate.openLinkEnabled &&
        // ignore: unnecessary_null_comparison
        delegate.selectedLink != null &&
        delegate.selectedLink.isNotEmpty;
  }

  void handleOpenLink(ZefyrTextSelectionDelegate delegate) {
    delegate.openLink(delegate.selectedLink);
  }
}
