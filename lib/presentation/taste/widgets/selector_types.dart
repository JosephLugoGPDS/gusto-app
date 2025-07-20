import 'package:app/core/bloc/result_state.dart';
import 'package:app/core/gen/l10n/l10n.dart';
import 'package:app/core/resources/colors.dart';
import 'package:app/data/models/dropdown_model.dart';
import 'package:app/injectable.dart';
import 'package:app/logic/taste_types/taste_types_cubit.dart';
import 'package:app/presentation/widgets/theme_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SelectorTypes extends StatelessWidget {
  const SelectorTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TasteTypesCubit>(),
      child: BlocBuilder<TasteTypesCubit, ResultState<List<DropdownModel>>>(
        builder: (context, state) {
          return state.whenOrNull(
                  data: (data) => Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: ThemeDropdown(
                          config: ThemeDropdownConfig(
                            value: data.first.id,
                            dropdownItems: data,
                            borderColor: AppColors.primaryColor,
                            buttonColor: Colors.transparent,
                            onChanged: (value) {
                              Fluttertoast.showToast(
                                  msg: context.l10n.notImplemented,
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: AppColors.onPrimaryColor,
                                  textColor: AppColors.whiteColor,
                                  fontSize: 16.sp);
                            },
                            darkMode: false,
                            arrowColor: AppColors.primaryColor,
                            valueAlignment: Alignment.centerLeft,
                            backgroundSelectedColor: AppColors.primaryColor,
                            textSelectedButtonColor: AppColors.whiteColor,
                            dropdownWidth: 240.w,
                            buttonWidth: 240.w,
                            buttonHeight: 30.h,
                            itemHeight: 30.h,
                            hintColor: AppColors.whiteColor,
                            hintAlignment: Alignment.centerLeft,
                            selectedAlignment: Alignment.centerLeft,
                            offset: Offset(-2.w, 1.h),
                            hint: context.l10n.selectTypes,
                          ),
                        ),
                      )) ??
              const SizedBox();
        },
      ),
    );
  }
}
