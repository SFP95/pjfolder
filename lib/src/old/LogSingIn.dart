/*
import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'log_sign_in_model.dart';
export 'log_sign_in_model.dart';

class LogSignInWidget extends StatefulWidget {
  const LogSignInWidget({
    Key? key,
    this.email,
    this.password,
  }) : super(key: key);

  final String? email;
  final String? password;

  @override
  _LogSignInWidgetState createState() => _LogSignInWidgetState();
}

class _LogSignInWidgetState extends State<LogSignInWidget> {
  late LogSignInModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogSignInModel());

    _model.emailAddressController ??= TextEditingController();
    _model.passwordController ??= TextEditingController();
    _model.emailAddressCreateController ??= TextEditingController();
    _model.passwordCreateController ??= TextEditingController();
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
        backgroundColor: Color(0xFF503A2E),
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 60),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'n4pco0zz' */
/* PJ FOLDER *//*
,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Montserrat',
                        color: Color(0xFFBEA291),
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment(0, 0),
                        child: FlutterFlowButtonTabBar(
                          useToggleButtonStyle: false,
                          isScrollable: true,
                          labelStyle: FlutterFlowTheme.of(context).titleMedium,
                          unselectedLabelStyle:
                          FlutterFlowTheme.of(context).titleMedium,
                          labelColor: Color(0xFFBEA291),
                          borderWidth: 0,
                          borderRadius: 0,
                          elevation: 0,
                          labelPadding:
                          EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                          tabs: [
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                '5oamsw10' */
/* Sign In *//*
,
                              ),
                            ),
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                '4lt391nf' */
/* Sign Up *//*
,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24, 24, 24, 24),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 20, 20, 0),
                                    child: TextFormField(
                                      controller: _model.emailAddressController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                        FFLocalizations.of(context).getText(
                                          'imwhbhex' */
/* Email Address *//*
,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                          fontFamily: 'Poppins',
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontSize: 15,
                                        ),
                                        hintText:
                                        FFLocalizations.of(context).getText(
                                          '4zgnl4i5' */
/* Enter your email... *//*
,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF503A2E),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF997C6C),
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFBEA291),
                                        contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 20, 24),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        fontSize: 20,
                                      ),
                                      validator: _model
                                          .emailAddressControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 12, 20, 0),
                                    child: TextFormField(
                                      controller: _model.passwordController,
                                      obscureText: !_model.passwordVisibility,
                                      decoration: InputDecoration(
                                        labelText:
                                        FFLocalizations.of(context).getText(
                                          '7rcvr13f' */
/* Password *//*
,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                          fontFamily: 'Poppins',
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontSize: 15,
                                        ),
                                        hintText:
                                        FFLocalizations.of(context).getText(
                                          'cdkzed07' */
/* Enter your password... *//*
,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF503A2E),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF997C6C),
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFBEA291),
                                        contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 20, 24),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                                () => _model.passwordVisibility =
                                            !_model.passwordVisibility,
                                          ),
                                          focusNode:
                                          FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.passwordVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: Color(0xFF503A2E),
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF0F1113),
                                      ),
                                      validator: _model
                                          .passwordControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 24, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        GoRouter.of(context).prepareAuthEvent();

                                        final user =
                                        await authManager.signInWithEmail(
                                          context,
                                          _model.emailAddressController.text,
                                          _model.passwordController.text,
                                        );
                                        if (user == null) {
                                          return;
                                        }

                                        context.goNamedAuth(
                                            'HomePage', mounted);
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'gkpdzbv8' */
/* Sign In *//*
,
                                      ),
                                      options: FFButtonOptions(
                                        width: 230,
                                        height: 50,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                        iconPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                        color: Color(0xFF6C4C3A),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFBEA291),
                                        ),
                                        elevation: 3,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24, 24, 24, 24),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 20, 20, 0),
                                    child: TextFormField(
                                      controller:
                                      _model.emailAddressCreateController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                        FFLocalizations.of(context).getText(
                                          'hufa10s5' */
/* Email Address *//*
,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                          fontFamily: 'Poppins',
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontSize: 20,
                                        ),
                                        hintText:
                                        FFLocalizations.of(context).getText(
                                          'rdi33dvt' */
/* Enter your email... *//*
,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF997C6C),
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFBEA291),
                                        contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 20, 24),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Montserrat',
                                        color: Color(0xFF0F1113),
                                      ),
                                      maxLines: null,
                                      validator: _model
                                          .emailAddressCreateControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 12, 20, 0),
                                    child: TextFormField(
                                      controller:
                                      _model.passwordCreateController,
                                      obscureText:
                                      !_model.passwordCreateVisibility,
                                      decoration: InputDecoration(
                                        labelText:
                                        FFLocalizations.of(context).getText(
                                          '1s50wr0k' */
/* Password *//*
,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                          fontFamily: 'Montserrat',
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontSize: 10,
                                        ),
                                        hintText:
                                        FFLocalizations.of(context).getText(
                                          's4b12fp0' */
/* Enter your password... *//*
,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF997C6C),
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFBEA291),
                                        contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 20, 24),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                                () => _model
                                                .passwordCreateVisibility =
                                            !_model
                                                .passwordCreateVisibility,
                                          ),
                                          focusNode:
                                          FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.passwordCreateVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF0F1113),
                                      ),
                                      validator: _model
                                          .passwordCreateControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 24, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        GoRouter.of(context).prepareAuthEvent();

                                        final user = await authManager
                                            .createAccountWithEmail(
                                          context,
                                          _model.emailAddressCreateController
                                              .text,
                                          _model.passwordCreateController.text,
                                        );
                                        if (user == null) {
                                          return;
                                        }

                                        context.goNamedAuth(
                                            'HomePage', mounted);
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'svsuy5tb' */
/* Create Account *//*
,
                                      ),
                                      options: FFButtonOptions(
                                        width: 230,
                                        height: 50,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                        iconPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                        color: Color(0xFF6C4C3A),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFBEA291),
                                        ),
                                        elevation: 3,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              FlutterFlowIconButton(
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
            ],
          ),
        ),
      ),
    );
  }
}
*/
