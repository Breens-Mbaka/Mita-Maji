import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterMeterWidget extends StatefulWidget {
  RegisterMeterWidget({Key key}) : super(key: key);

  @override
  _RegisterMeterWidgetState createState() => _RegisterMeterWidgetState();
}

class _RegisterMeterWidgetState extends State<RegisterMeterWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF242038),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 0, 8),
          child: Image.asset(
            'assets/images/logo-icon.svg',
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
        ),
        title: Align(
          alignment: Alignment(-1.2, 0),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 70, 8),
            child: Text(
              'Mita Maji',
              style: FlutterFlowTheme.title1.override(
                fontFamily: 'Dosis',
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 8, 10, 0),
            child: InkWell(
              onTap: () async {
                Navigator.pop(context);
              },
              child: Text(
                '< Back',
                style: FlutterFlowTheme.bodyText2.override(
                  fontFamily: 'Dosis',
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.secondaryColor,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.tertiaryColor,
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Register Meter',
                      style: FlutterFlowTheme.title2.override(
                        fontFamily: 'Dosis',
                      ),
                    ),
                    Text(
                      'Customer name',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Dosis',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                      child: TextFormField(
                        controller: textController1,
                        obscureText: false,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.primaryColor,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.primaryColor,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.secondaryColor,
                          contentPadding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                        ),
                        style: FlutterFlowTheme.bodyText2.override(
                          fontFamily: 'Dosis',
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Text(
                      'Customer phone number',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Dosis',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                      child: TextFormField(
                        controller: textController2,
                        obscureText: false,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.primaryColor,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.primaryColor,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.secondaryColor,
                          contentPadding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                        ),
                        style: FlutterFlowTheme.bodyText2.override(
                          fontFamily: 'Dosis',
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Text(
                      'Opening readings',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Dosis',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                      child: TextFormField(
                        controller: textController3,
                        obscureText: false,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.primaryColor,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.primaryColor,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.secondaryColor,
                          contentPadding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                        ),
                        style: FlutterFlowTheme.bodyText2.override(
                          fontFamily: 'Dosis',
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        final openingReading = textController3.text;
                        final customerName = textController1.text;
                        final customerPhoneNumber = textController2.text;

                        final metersRecordData = createMetersRecordData(
                          openingReading: openingReading,
                          customerName: customerName,
                          customerPhoneNumber: customerPhoneNumber,
                        );

                        await MetersRecord.collection
                            .doc()
                            .set(metersRecordData);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                          color: Color(0xFF242038),
                        ),
                        child: Align(
                          alignment: Alignment(0, 0),
                          child: Text(
                            'Register Meter',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Dosis',
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                color: Color(0xFFCAC4CE),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Image.asset(
                      'assets/images/logo-icon.svg',
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 0, 0, 3),
                    child: Text(
                      'Mita Maji. Copyright 2021.',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Dosis',
                        color: Color(0xFFA37AD9),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
