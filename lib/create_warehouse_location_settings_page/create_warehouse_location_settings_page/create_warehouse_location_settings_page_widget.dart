import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/weight/label_input/label_input_widget.dart';
import 'package:flutter/material.dart';
import 'create_warehouse_location_settings_page_model.dart';
export 'create_warehouse_location_settings_page_model.dart';

class CreateWarehouseLocationSettingsPageWidget extends StatefulWidget {
  const CreateWarehouseLocationSettingsPageWidget({super.key});

  @override
  State<CreateWarehouseLocationSettingsPageWidget> createState() =>
      _CreateWarehouseLocationSettingsPageWidgetState();
}

class _CreateWarehouseLocationSettingsPageWidgetState
    extends State<CreateWarehouseLocationSettingsPageWidget> {
  late CreateWarehouseLocationSettingsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => CreateWarehouseLocationSettingsPageModel());
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
              '9q9w233p' /* Warehouse location settings */,
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
                'adpkn5it' /* Save */,
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
                  model: _model.labelInputModel,
                  updateCallback: () => safeSetState(() {}),
                  child: LabelInputWidget(
                    label: FFLocalizations.of(context).getText(
                      'rncjznaj' /* Warehouse location */,
                    ),
                    readOnly: false,
                    maxLines: 5,
                    required: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
