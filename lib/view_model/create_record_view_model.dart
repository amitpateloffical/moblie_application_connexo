import 'package:connexo/view/add_record/record_pages/activity_log_page.dart';
import 'package:connexo/view/add_record/record_pages/additional_information_page.dart';
import 'package:connexo/view/add_record/record_pages/change_closure_page.dart';
import 'package:connexo/view/add_record/record_pages/change_detail_page.dart';
import 'package:connexo/view/add_record/record_pages/evaluation_page.dart';
import 'package:connexo/view/add_record/record_pages/group_comment_page.dart';
import 'package:connexo/view/add_record/record_pages/q_a_approval_comments_page.dart';
import 'package:connexo/view/add_record/record_pages/q_a_review_page.dart';
import 'package:connexo/view/add_record/record_pages/risk_assessment_page.dart';

import 'package:flutter/material.dart';

import '../base/base.dart';
import '../view/add_record/record_pages/general_options_page.dart';

class CreateRecordViewModel extends BaseViewModel {
  int _selectedOptionIndex = 0;
  String _selectedSite = '';

  @override
  void onReady() {
    // TODO: implement onReady
    selectedOptionIndex = 0;
    super.onReady();
  }

  String get selectedSite => _selectedSite;
  set selectedSite(String value) {
    _selectedSite = value;
    notifyListeners();
  }

  int get selectedOptionIndex => _selectedOptionIndex;

  set selectedOptionIndex(int value) {
    _selectedOptionIndex = value;
    notifyListeners();
  }

  final List<String> processList = [
    'Internal Audit',
    'External Audit',
    'CAPA',
    'Audit Program',
    'Lab Incident',
    'Risk Assessment',
    'Root Cause Analysis',
    'Change Control',
    'Management Review'
  ];
  final List<String> options = [
    'General Information',
    'Change Detail',
    'QA Review',
    'Evaluation',
    'Additional Information',
    'Group Comments',
    'Risk Assessment',
    'QA Approval Comments',
    'Change Closure',
    'Activity Log'
  ];

  final List<String> siteLocationList = [
    'KSA',
    'Egypt',
    'Estonia',
    'ESH - North America',
    'Global',
    'Jordan',
    'India',
    'QMS - Asia',
    'QMS - EMEA',
    'SQM - APAC',
    'QMS - South America'
  ];
  final List<Widget> pages = [
    const GeneralOptionsPage(),
    const ChangeDetailPage(),
    const QAReviewPage(),
    const EvaluationPage(),
    const AdditionalInformationPage(),
    const GroupCommentPage(),
    const RiskAssessmentPage(),
    const QAApprovalCommentsPage(),
    const ChangeClosurePage(),
    const ActivityLogPage()
  ];
}
