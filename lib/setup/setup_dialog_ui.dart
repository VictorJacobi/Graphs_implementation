import 'package:flutter/cupertino.dart';
import 'package:graph_implementation/app/app.locator.dart';
import 'package:graph_implementation/enum/dialog_enum.dart';
import 'package:stacked_services/stacked_services.dart';
// import 'package:vesti_founders_app/app/app.locator.dart';
// import 'package:vesti_founders_app/ui/dialog/pending.dart';
// import 'package:vesti_founders_app/ui/style/color.dart';
// import 'package:vesti_founders_app/core/enums/dialog_type.dart';
// import 'package:vesti_founders_app/ui/dialog/inactive.dart';
// import 'package:vesti_founders_app/ui/dialog/inactive.dart';


void setupDialogUi() {
  var dialogService = locator<DialogService>();
  final builders = {
    DialogType.pending: (context, sheetRequest, completer) =>
  SizedBox(),
        // PendingCustomDialog(request: sheetRequest, completer: completer),
    DialogType.inActive: (context, sheetRequest, completer) =>
        SizedBox(),
        // InactiveCustomDialog(request: sheetRequest, completer: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}

