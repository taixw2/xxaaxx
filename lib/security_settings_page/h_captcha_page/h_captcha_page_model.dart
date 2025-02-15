import '/flutter_flow/flutter_flow_util.dart';
import '/weight/label_input/label_input_widget.dart';
import 'h_captcha_page_widget.dart' show HCaptchaPageWidget;
import 'package:flutter/material.dart';

class HCaptchaPageModel extends FlutterFlowModel<HCaptchaPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for LabelInput component.
  late LabelInputModel labelInputModel1;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel2;

  @override
  void initState(BuildContext context) {
    labelInputModel1 = createModel(context, () => LabelInputModel());
    labelInputModel2 = createModel(context, () => LabelInputModel());
  }

  @override
  void dispose() {
    labelInputModel1.dispose();
    labelInputModel2.dispose();
  }
}
