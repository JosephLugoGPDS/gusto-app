import 'package:app/data/models/dropdown_model.dart';
import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/gen/assets.gen.dart/assets.gen.dart';
import 'package:app/core/resources/colors.dart';
import 'package:app/logic/dropdown_open/dropdown_open_cubit.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeDropdownConfig {
  const ThemeDropdownConfig({
    this.hint,
    required this.value,
    required this.dropdownItems,
    required this.onChanged,
    this.selectedItemBuilder,
    this.hintAlignment,
    this.hintTextStyle,
    this.valueAlignment = Alignment.center,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonPadding,
    this.buttonDecoration,
    this.buttonColor,
    this.buttonElevation,
    this.iconSize,
    this.iconEnabledColor,
    this.iconDisabledColor,
    this.itemHeight,
    this.itemPadding,
    this.dropdownHeight,
    this.dropdownWidth,
    this.dropdownPadding,
    this.dropdownDecoration,
    this.dropdownElevation,
    this.scrollbarRadius,
    this.scrollbarThickness,
    this.scrollbarAlwaysShow,
    this.offset,
    this.borderColor,
    this.selectedAlignment = Alignment.center,
    this.darkMode = false,
    this.arrowColor,
    this.textSelectedColor,
    this.backgroundSelectedColor,
    this.hintColor,
    this.textSelectedButtonColor,
    this.activeButtonColor,
    this.errorText,
    this.showSearchBox = false,
    this.searchHintText,
    this.searchController,
    this.labelText,
  });
  final String? hint;
  final String? value;
  final List<DropdownModel> dropdownItems;
  final ValueChanged<DropdownModel> onChanged;
  final DropdownButtonBuilder? selectedItemBuilder;
  final Alignment? hintAlignment;
  final Alignment? valueAlignment;
  final Alignment? selectedAlignment;
  final double? buttonHeight, buttonWidth;
  final EdgeInsetsGeometry? buttonPadding;
  final BoxDecoration? buttonDecoration;
  final Color? buttonColor;
  final int? buttonElevation;
  final double? iconSize;
  final Color? iconEnabledColor;
  final Color? iconDisabledColor;
  final double? itemHeight;
  final EdgeInsetsGeometry? itemPadding;
  final double? dropdownHeight, dropdownWidth;
  final EdgeInsetsGeometry? dropdownPadding;
  final BoxDecoration? dropdownDecoration;
  final int? dropdownElevation;
  final Radius? scrollbarRadius;
  final double? scrollbarThickness;
  final bool? scrollbarAlwaysShow;
  final Offset? offset;
  final Color? borderColor;
  final Color? arrowColor;
  final Color? hintColor;
  final Color? activeButtonColor;
  final Color? textSelectedColor;
  final Color? textSelectedButtonColor;
  final Color? backgroundSelectedColor;
  final bool darkMode;
  final TextStyle? hintTextStyle;
  final String? errorText;
  final bool showSearchBox;
  final String? searchHintText;
  final TextEditingController? searchController;
  final String? labelText;
}

class ThemeDropdown extends StatelessWidget {
  const ThemeDropdown({required this.config, super.key});
  final ThemeDropdownConfig config;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DropdownOpenCubit(),
      child: ThemeDropdownView(config: config),
    );
  }
}

//
class ThemeDropdownView extends StatelessWidget {
  final ThemeDropdownConfig config;

  const ThemeDropdownView({required this.config, super.key});

  @override
  Widget build(BuildContext context) {
    final isActive = config.dropdownItems.isNotEmpty;
    final dropdownItems = List.from(config.dropdownItems);
    final openCubit = context.read<DropdownOpenCubit>();
    final textTheme = context.textTheme;

    return Column(
      children: [
        BlocBuilder<DropdownOpenCubit, bool>(
          builder: (context, stateOpen) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                config.labelText != null
                    ? Container(
                        margin: const EdgeInsets.only(bottom: 0),
                        child: Text(
                          config.labelText!,
                          style: context.textTheme.bodyMedium,
                        ),
                      )
                    : const SizedBox(),
                Theme(
                  data: Theme.of(context).copyWith(
                    focusColor: AppColors.primaryColor.withOpacity(0.1),
                    highlightColor: AppColors.grayBorderColor,
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      //

                      //
                      onMenuStateChange: openCubit.changeOpen,
                      isExpanded: true,
                      hint: Container(
                        alignment: config.hintAlignment ?? Alignment.center,
                        child: Text(
                          config.hint ?? "",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: textTheme.bodyMedium?.copyWith(
                            color: config.hintColor ?? AppColors.iconColor,
                          ),
                        ),
                      ),
                      value: config.value,
                      style: textTheme.bodyMedium?.copyWith(
                        color: AppColors.iconColor,
                      ),

                      items: dropdownItems.map((item) {
                        return DropdownMenuItem<String>(
                          value: item.id,
                          alignment: Alignment.center,
                          child: Container(
                            padding: config.itemPadding ??
                                EdgeInsets.only(left: 14.w, right: 14.w),
                            width: config.buttonWidth ?? double.infinity,
                            alignment:
                                config.valueAlignment ?? Alignment.center,
                            color: item.id == config.value
                                ? config.backgroundSelectedColor
                                : null,
                            child: Text(
                              item.description,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: textTheme.bodyMedium?.copyWith(
                                color: item.id == config.value
                                    ? config.textSelectedColor
                                    : AppColors.iconColor,
                              ),
                            ),
                          ),
                        );
                      }).toList(), // Convert Iterable to List
                      onChanged: isActive
                          ? (id) => config.onChanged(
                                dropdownItems.firstWhere((e) => e.id == id),
                              )
                          : null,

                      selectedItemBuilder: (ctx) => dropdownItems
                          .map(
                            (e) => Container(
                              alignment: config.selectedAlignment,
                              color: isActive
                                  ? null
                                  : (config.activeButtonColor ??
                                      AppColors.whiteColor),
                              child: Text(
                                e.description,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: textTheme.titleSmall?.copyWith(
                                  fontSize: 14.sp,
                                  color: config.textSelectedColor ??
                                      AppColors.primaryColor,
                                ),
                              ),
                            ),
                          )
                          .toList(), // Convert Iterable to List
                      iconStyleData: IconStyleData(
                        icon: isActive
                            ? (stateOpen
                                ? Assets.images.shared.icArrowUp.svg(
                                    colorFilter: ColorFilter.mode(
                                      config.arrowColor ?? AppColors.iconColor,
                                      BlendMode.srcIn,
                                    ),
                                  )
                                : Assets.images.shared.icArrowDown.svg(
                                    colorFilter: ColorFilter.mode(
                                      config.arrowColor ?? AppColors.iconColor,
                                      BlendMode.srcIn,
                                    ),
                                  ))
                            : const SizedBox(),
                        iconSize: config.iconSize ?? 12,
                        iconEnabledColor: isActive
                            ? config.iconDisabledColor
                            : AppColors.grayBorderColor,
                        iconDisabledColor: isActive
                            ? config.iconDisabledColor
                            : AppColors.grayBorderColor,
                      ),
                      buttonStyleData: ButtonStyleData(
                        height: config.buttonHeight ?? 42.h,
                        width: config.buttonWidth ?? 288.w,
                        padding: config.buttonPadding ??
                            const EdgeInsets.only(left: 14, right: 14),
                        decoration: config.buttonDecoration ??
                            BoxDecoration(
                              borderRadius: stateOpen
                                  ? BorderRadius.only(
                                      topLeft: Radius.circular(5.r),
                                      topRight: Radius.circular(5.r),
                                    )
                                  : BorderRadius.circular(5.r),
                              border: Border.all(
                                color: config.borderColor ?? Colors.transparent,
                              ),
                              color: isActive
                                  ? (config.buttonColor ?? AppColors.whiteColor)
                                  : AppColors.grayBorderColor,
                            ),
                        elevation: config.buttonElevation,
                      ),
                      menuItemStyleData: MenuItemStyleData(
                        height: config.itemHeight ?? 42.h,
                        padding: EdgeInsets.zero,
                      ),
                      dropdownStyleData: DropdownStyleData(
                        maxHeight: config.dropdownHeight ?? 210.h,
                        width: config.dropdownWidth ?? 288.w,
                        padding: config.dropdownPadding,
                        decoration: config.dropdownDecoration ??
                            BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                              border: Border.all(
                                color: config.borderColor ?? Colors.transparent,
                              ),
                            ),
                        elevation: config.dropdownElevation ?? 8,
                        offset: config.offset ?? const Offset(0, 1),
                        isOverButton: false,
                        scrollbarTheme: ScrollbarThemeData(
                          radius:
                              config.scrollbarRadius ?? Radius.circular(12.r),
                          thickness: config.scrollbarThickness != null
                              ? WidgetStatePropertyAll<double>(
                                  config.scrollbarThickness!,
                                )
                              : null,
                          thumbVisibility: config.scrollbarAlwaysShow != null
                              ? WidgetStatePropertyAll<bool>(
                                  config.scrollbarAlwaysShow!,
                                )
                              : null,
                        ),
                      ),

                      dropdownSearchData: config.showSearchBox
                          ? DropdownSearchData<String>(
                              // Specify String type here
                              searchController: config.searchController,
                              searchInnerWidgetHeight: 50,
                              searchInnerWidget: Container(
                                height: 50,
                                padding: EdgeInsets.all(8.r),
                                child: TextFormField(
                                  controller: config.searchController,
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: AppColors.iconColor,
                                  ),
                                  decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10.w,
                                      vertical: 8.h,
                                    ),
                                    hintText:
                                        config.searchHintText ?? 'Buscar...',
                                    hintStyle: textTheme.bodyMedium?.copyWith(
                                      color: AppColors.textHintColor,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                        8.r,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              searchMatchFn: (item, searchValue) {
                                final dropdownItem = dropdownItems.firstWhere(
                                  (element) => element.id == item.value,
                                );
                                return dropdownItem.description
                                    .toLowerCase()
                                    .contains(searchValue.toLowerCase());
                              },
                            )
                          : null,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        if (config.errorText != null)
          Padding(
            padding: EdgeInsets.only(top: 4.h, left: 16.w),
            child: Text(
              config.errorText!,
              style: context.textTheme.bodySmall?.copyWith(
                color: AppColors.errorColor,
              ),
            ),
          ),
      ],
    );
  }
}
