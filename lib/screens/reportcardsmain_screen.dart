import 'package:flutter/material.dart';

class ReportcardmainScreen extends StatefulWidget {
  const ReportcardmainScreen({super.key});

  @override
  State<ReportcardmainScreen> createState() => _ReportcardmainScreenState();
}

class _ReportcardmainScreenState extends State<ReportcardmainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( physics: BouncingScrollPhysics(),
          child: Column(
        children: [],
      )),
    );
  }
}
