import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/weight/label_input/label_input_widget.dart';
import 'package:flutter/material.dart';
import 'h_captcha_page_model.dart';
export 'h_captcha_page_model.dart';

class HCaptchaPageWidget extends StatefulWidget {
  const HCaptchaPageWidget({super.key});

  @override
  State<HCaptchaPageWidget> createState() => _HCaptchaPageWidgetState();
}

class _HCaptchaPageWidgetState extends State<HCaptchaPageWidget> {
  late HCaptchaPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HCaptchaPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 54.0,
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: 24.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              '4xj903nk' /* HCaptcha */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'SF Pro Display',
                  color: Colors.white,
                  fontSize: 17.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
          ),
          actions: [
            FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: FFLocalizations.of(context).getText(
                '6m5ia4kb' /* Save */,
              ),
              options: FFButtonOptions(
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: const Color(0x00FF7D00),
                textStyle: FlutterFlowTheme.of(context).displayMedium.override(
                      fontFamily: 'SF Pro Display',
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
                elevation: 0.0,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.labelInputModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: const LabelInputWidget(
                    label: 'HCaptcha key',
                    readOnly: false,
                    required: false,
                  ),
                ),
                wrapWithModel(
                  model: _model.labelInputModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: const LabelInputWidget(
                    label: 'HCaptcha Secret',
                    readOnly: false,
                    required: false,
                  ),
                ),
              ].divide(const SizedBox(height: 12.0)),
            ),
          ),
        ),
      ),
    );
  }
}
