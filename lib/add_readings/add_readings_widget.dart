import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down_template.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddReadingsWidget extends StatefulWidget {
  AddReadingsWidget({Key key}) : super(key: key);

  @override
  _AddReadingsWidgetState createState() => _AddReadingsWidgetState();
}

class _AddReadingsWidgetState extends State<AddReadingsWidget> {
  String dropDownValue;
  TextEditingController textController1;
  TextEditingController textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    dropDownValue = 'Meters/1';
    textController1 = TextEditingController();
    textController2 = TextEditingController();
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
                      'Add Readings',
                      style: FlutterFlowTheme.title2.override(
                        fontFamily: 'Dosis',
                      ),
                    ),
                    Text(
                      'Meter ID',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Dosis',
                      ),
                    ),
                    FlutterFlowDropDown(
                      options: ['Meters/1', 'Meters/2', 'Meters/3', 'Meters/4'],
                      onChanged: (value) {
                        setState(() => dropDownValue = value);
                      },
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 50,
                      textStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Dosis',
                        color: FlutterFlowTheme.primaryColor,
                        fontStyle: FontStyle.italic,
                      ),
                      fillColor: FlutterFlowTheme.secondaryColor,
                      elevation: 2,
                      borderColor: Color(0xFF9067C6),
                      borderWidth: 0,
                      borderRadius: 0,
                      margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
                    ),
                    Text(
                      'Current units',
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
                      'Date of recordings',
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
                    InkWell(
                      onTap: () async {
                        final currentReading = textController1.text;
                        final dateOfRecording = getCurrentTimestamp;

                        final readingsRecordData = createReadingsRecordData(
                          currentReading: currentReading,
                          dateOfRecording: dateOfRecording,
                        );

                        await ReadingsRecord.collection
                            .doc()
                            .set(readingsRecordData);
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
                            'Add Readings',
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
