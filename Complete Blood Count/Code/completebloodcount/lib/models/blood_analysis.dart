// ignore_for_file: unused_element

class BloodAnalysis {
  // ignore: unused_field
  late final int _patientID = 0;
  // ignore: unused_field
  late final String _results = '';

  late final double _haemoglobin;
  late final double _haematocrit;
  late final double _rbcsCount;
  late final double _mcv;
  late final double _mch;
  late final double _mchc;
  late final double _rdwCv;
  late final double _plateletCount;
  // ignore: unused_field
  late final double _totalLeucocytic;

  late final double _neutrophils;
  late final double _lymphocytes;
  late final double _monocytes;
  late final double _eosinophils;
  late final double _basophils;

  BloodAnalysis(
      {required double haemog,
      required double haemato,
      required double rbcs,
      required double mcv,
      required double mch,
      required double mchc,
      required double rdwCv,
      required double platelet,
      required double total,
      required double neutro,
      required double lympho,
      required double mono,
      required double eosino,
      required double baso}) {
    _setHaemoglobin(haemoglobin: haemog);
    _setHaematocrit(haematocrit: haemato);
    _setRbcsCount(rbcs: rbcs);
    _setMcv(mcv: mcv);
    _setMch(mch: mch);
    _setMchc(mchc: mchc);
    _setRdwcv(rdwCv: rdwCv);
    _setPlateletCount(plateletCount: platelet);
    _setTotalLeucocytic(totalLeucocytic: total);
    _setNeutrophils(neutrophils: neutro);
    _setLymphocytes(lyphoctyes: lympho);
    _setMonoCytes(monoCytes: mono);
    _setEosinophils(eosinophils: eosino);
    _setBasophils(basophils: baso);
  }

  _setHaemoglobin({required double haemoglobin}) {
    _haemoglobin = haemoglobin;
  }

  _setHaematocrit({required double haematocrit}) {
    _haematocrit = haematocrit;
  }

  _setRbcsCount({required double rbcs}) {
    _rbcsCount = rbcs;
  }

  _setMcv({required double mcv}) {
    _mcv = mcv;
  }

  _setMch({required double mch}) {
    _mch = mch;
  }

  _setMchc({required double mchc}) {
    _mchc = mchc;
  }

  _setRdwcv({required double rdwCv}) {
    _rdwCv = rdwCv;
  }

  _setPlateletCount({required double plateletCount}) {
    _plateletCount = plateletCount;
  }

  _setTotalLeucocytic({required double totalLeucocytic}) {
    _totalLeucocytic = totalLeucocytic;
  }

  _setNeutrophils({required double neutrophils}) {
    _neutrophils = neutrophils;
  }

  _setLymphocytes({required double lyphoctyes}) {
    _lymphocytes = lyphoctyes;
  }

  _setMonoCytes({required double monoCytes}) {
    _monocytes = monoCytes;
  }

  _setEosinophils({required double eosinophils}) {
    _eosinophils = eosinophils;
  }

  _setBasophils({required double basophils}) {
    _basophils = basophils;
  }

  _getHaemoglobin() {
    final hemoglobinLow = {
      'Iron, vitamin B12',
      'folate deficiency',
      'bone marrow damage',
      'leukemia',
      'lymphoma',
      'acute',
      'chronic blood loss',
      'red blood cell hemolysis'
    };
    final hemoglobinHigh = {
      'Dehydration',
      'renal problems',
      'pulmonary disease',
      'congenital heart disease',
      'polycythemia vera'
    };

    if (_haemoglobin < 11.5) {
      return hemoglobinLow;
    } else if (_haemoglobin > 15.5) {
      return hemoglobinHigh;
    } else {
      return 'Normal';
    }
  }

  _getHaematocrit() {
    final hemotocritLow = {
      'Iron, vitamin B12',
      'folate deficiency'
          'bone marrow damage',
      'leukemia',
      'lymphoma',
      'acute',
      'chronic blood loss'
          'red blood cell hemolysis'
    };
    final hemotocritHigh = {
      'Dehydration',
      'renal problems',
      'pulmonary disease',
      'congenital heart disease',
      'polycythemia vera'
    };
    if (_haematocrit < 36) {
      return hemotocritLow;
    } else if (_haematocrit > 45) {
      return hemotocritHigh;
    } else {
      return 'Normal';
    }
  }

  _getRbcs() {
    final rbcsLow = {
      'Iron, vitamin B12',
      'folate deficiency'
          'bone marrow damage',
      'leukemia',
      'lymphoma',
      'acute',
      'chronic blood loss',
      'red blood cell hemolysis'
    };
    final rbcsHigh = {
      'Dehydration',
      'renal problems',
      'pulmonary disease',
      'congenital heart disease',
      'polycythemia vera'
    };

    if (_rbcsCount < 4) {
      return rbcsLow;
    } else if (_rbcsCount > 5.2) {
      return rbcsHigh;
    } else {
      return 'Normal';
    }
  }

  _getMcv() {
    final mcvLow = {'Iron deficiency'};
    final mcvHigh = {'Vitamin B12 or folate deficiency'};
    if (_mcv < 80) {
      return mcvLow;
    } else if (_mcv > 100) {
      return mcvHigh;
    } else {
      return 'Normal';
    }
  }

  _getMch() {
    final mchLow = {'Iron deficiency'};
    final mchHigh = {'Vitamin B12 or folate deficiency'};
    if (_mch < 27) {
      return mchLow;
    } else if (_mch > 33) {
      return mchHigh;
    } else {
      return 'Normal';
    }
  }

  _getMchc() {
    final mchcLow = {'Iron deficiency'};
    final mchcHigh = {'Sickle cell disease', 'hereditary spherocytosis'};
    if (_mchc < 31) {
      return mchcLow;
    } else if (_mchc > 37) {
      return mchcHigh;
    } else {
      return 'Normal';
    }
  }

  _getRdwCv() {
    final rdwLow = {'Generally not a concern'};
    final rdwHigh = {
      'Iron deficiency',
      'vitamin B12',
      'folate deficiency',
      'recent blood loss'
    };
    if (_rdwCv < 11.5) {
      return rdwLow;
    } else if (_rdwCv > 15) {
      return rdwHigh;
    } else {
      return 'Normal';
    }
  }

  _getPlateletCount() {
    final plateletCountLow = {
      'Bone marrow failure',
      'chemotherapy',
      'viral infections',
      'lupus',
      'pernicious anemia (due to vitamin B12 deficiency)',
      'leukemia'
          'lymphoma',
      'sequestration in the spleen',
      'certain medications'
    };
    final plateletCountHigh = {
      'Leukemia',
      'myeloproliferative disorders (which cause blood cells to grow abnormally in bone marrow)',
      'inflammatory conditions'
    };
    if (_plateletCount < 150) {
      return plateletCountLow;
    } else if (_plateletCount > 450) {
      return plateletCountHigh;
    } else {
      return 'Normal';
    }
  }

  _getNeutrophils() {
    final neutrophilsLow = {
      'Immunosuppression',
      'bone marrow failure',
      'chemotherapy'
    };
    final neutrophilsHigh = {
      'Corona Virus',
      'Infection',
      'inflammation',
      'leukemia',
      'intense exercise',
      'stress',
      'corticosteroids'
    };
    if (_neutrophils < 2) {
      return neutrophilsLow;
    } else if (_neutrophils > 7) {
      return neutrophilsHigh;
    } else {
      return 'Normal';
    }
  }

  _getLymphocytes() {
    final lymphocytesLow = {
      'Corona Virus',
      'Immunosuppression',
      'HIV-AIDS',
      'bone marrow failure',
      'chemotherapy'
    };
    final lymphocytesHigh = {'Viral infections', 'leukemia', 'lymphoma'};
    if (_lymphocytes < 1) {
      return lymphocytesLow;
    } else if (_lymphocytes > 4.8) {
      return lymphocytesHigh;
    } else {
      return 'Normal';
    }
  }

  _getMonoCytes() {
    final monoCytesLow = {
      'Immunosuppression',
      'bone marrow failure',
      'chemotherapy'
    };
    final monoCytesHigh = {
      'Chronic infections',
      'autoimmune diseases',
      'leukemia'
    };
    if (_monocytes < 0.2) {
      return monoCytesLow;
    } else if (_monocytes > 1) {
      return monoCytesHigh;
    } else {
      return 'Normal';
    }
  }

  _getEosinophils() {
    final eosinophilsLow = {'Generally not a concern'};
    final eosinophilsHigh = {'Parasitic infections'};
    if (_eosinophils < 0.1) {
      return eosinophilsLow;
    } else if (_eosinophils > 0.45) {
      return eosinophilsHigh;
    } else {
      return 'Normal';
    }
  }

  _getBasophils() {
    final basophilsLow = {'Generally not a concern'};
    final basophilsHigh = {'Active allergic response'};
    if (_basophils < 0) {
      return basophilsLow;
    } else if (_basophils > 0.1) {
      return basophilsHigh;
    } else {
      return 'Normal';
    }
  }

  getTranslate() {
    return 'ربما تكون مصاب بفيرس كورونا لذلك حاول التواصل مع الطبيب';
  }

  getResults() {
    bool flag = true;
    if (_getNeutrophils() != 'Normal' && _getLymphocytes() != 'Normal') {
      for (String i in _getNeutrophils()) {
        if (i == 'Corona Virus') {
          print(i);
          flag = true;
          break;
        } else {
          flag = false;
          break;
        }
      }
      for (String i in _getLymphocytes()) {
        if (i == 'Corona Virus') {
          flag = true;
          break;
        } else {
          flag = false;
          break;
        }
      }
      if (flag == true) {
        return 'Maybe you have Corona Virus because your Lymphocytes is low and your Neutrophils is high if you have any syndrome please go to the doctor.';
      } else {
        return '';
      }
    } else {
      return 'Normal From Corona';
    }
  }
}
