import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'list_pjs_model.dart';
export 'list_pjs_model.dart';

class ListPjsWidget extends StatefulWidget {
  const ListPjsWidget({Key? key}) : super(key: key);

  @override
  _ListPjsWidgetState createState() => _ListPjsWidgetState();
}

class _ListPjsWidgetState extends State<ListPjsWidget> {
  late ListPjsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListPjsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFBEA291),
        appBar: AppBar(
          backgroundColor: Color(0xFF503A2E),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFFBEA291),
              size: 30,
            ),
            onPressed: () async {
              context.pushNamed('HomePage');
            },
          ),
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(60, 0, 0, 0),
            child: Text(
              FFLocalizations.of(context).getText(
                '153fhhy3' /* List Characters */,
              ),
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Poppins',
                color: Color(0xFFBEA291),
                fontSize: 22,
              ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 10, 8, 0),
                    child: GridView(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 5,
                      ),
                      scrollDirection: Axis.vertical,
                      children: [
                        Container(
                          width: 368.9,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF997C6C),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'edgd2lef' /* Nombre Pj */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Color(0xFF503A2E),
                                  size: 30,
                                ),
                                onPressed: () async {
                                  context.pushNamed('PjProfile');
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 368.9,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF997C6C),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'olkgvjl8' /* Nombre Pj */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Color(0xFF503A2E),
                                  size: 30,
                                ),
                                onPressed: () async {
                                  context.pushNamed('PjProfile');
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 368.9,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF997C6C),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '7957qqf6' /* Nombre Pj */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Color(0xFF503A2E),
                                  size: 30,
                                ),
                                onPressed: () async {
                                  context.pushNamed('PjProfile');
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 368.9,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF997C6C),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'u79j9m5u' /* Nombre Pj */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Color(0xFF503A2E),
                                  size: 30,
                                ),
                                onPressed: () async {
                                  context.pushNamed('PjProfile');
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 368.9,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF997C6C),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '79kgjwsm' /* Nombre Pj */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Color(0xFF503A2E),
                                  size: 30,
                                ),
                                onPressed: () async {
                                  context.pushNamed('PjProfile');
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 368.9,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF997C6C),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'ho96suyg' /* Nombre Pj */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Color(0xFF503A2E),
                                  size: 30,
                                ),
                                onPressed: () async {
                                  context.pushNamed('PjProfile');
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 368.9,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF997C6C),
                          ),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('newpj');
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'gba5oygp' /* Nombre Pj */,
                                  ),
                                  style:
                                  FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 60,
                                  icon: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color(0xFF503A2E),
                                    size: 30,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('PjProfile');
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 10),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 50,
                        borderWidth: 1,
                        buttonSize: 60,
                        fillColor: Color(0xFF503A2E),
                        icon: Icon(
                          Icons.add,
                          color: Color(0xFFBEA291),
                          size: 30,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
