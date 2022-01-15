// ignore_for_file: use_key_in_widget_constructors, unused_field, prefer_typing_uninitialized_variables

import 'package:completebloodcount/Screens/menu_screen.dart';
import 'package:completebloodcount/models/blood_analysis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  late final String _haemo;
  late final String _pcv;
  late final String _rbcs;
  late final String _mcv;
  late final String _mch;
  late final String _mchc;
  late final String _rdw;
  late final String _platCount;
  late final String _totalCount;
  late final BloodAnalysis user;

  late final _neto;
  late final _lympho;
  late final _mono;
  late final _eos;
  late final _baso;
  Report({
    required String h,
    required String pcv,
    required String rbcs,
    required String mcv,
    required String mch,
    required String mchc,
    required String rdw,
    required String plat,
    required String total,
    required String n,
    required String l,
    required String m,
    required String e,
    required String b,
  }) {
    _haemo = h;
    _pcv = pcv;
    _rbcs = rbcs;
    _mcv = mcv;
    _mch = mch;
    _mchc = mchc;
    _rdw = rdw;
    _platCount = plat;
    _totalCount = total;
    _neto = n;
    _lympho = l;
    _mono = m;
    _eos = e;
    _baso = b;
    user = BloodAnalysis(
        haemog: double.parse(_haemo),
        haemato: double.parse(_pcv),
        rbcs: double.parse(_rbcs),
        mcv: double.parse(_mcv),
        mch: double.parse(_mch),
        mchc: double.parse(_mchc),
        rdwCv: double.parse(_rdw),
        platelet: double.parse(_platCount),
        total: double.parse(_totalCount),
        neutro: double.parse(_neto),
        lympho: double.parse(_lympho),
        mono: double.parse(_mono),
        eosino: double.parse(_eos),
        baso: double.parse(_baso));
  }
  @override
  Widget build(BuildContext context) {
    return Menu(
      'Report',
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              user.getResults(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
