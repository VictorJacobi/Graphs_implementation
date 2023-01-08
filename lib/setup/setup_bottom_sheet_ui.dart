import 'package:flutter/cupertino.dart';
import 'package:graph_implementation/app/app.locator.dart';
import 'package:graph_implementation/enum/bottomsheet_enum.dart';
import 'package:stacked_services/stacked_services.dart';
// import 'package:vesti_founders_app/app/app.locator.dart';
// import 'package:vesti_founders_app/core/enums/bottom_sheet_type.dart';
// import 'package:vesti_founders_app/ui/bottomsheet/form_bottomsheet.dart';
//
// import '../bottomsheet/phone_verification/phone_verification_bottom_sheet.dart';

void setupBottomSheetUi() {
  final bottomSheetService = locator<BottomSheetService>();

  final builders = {
     BottomSheetType.formBottomSheet: (
         context,
         sheetRequest,
         Function(SheetResponse) completer,
         ) =>
         SizedBox(),
  };

  bottomSheetService.setCustomSheetBuilders(builders);
}
