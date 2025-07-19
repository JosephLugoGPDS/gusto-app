import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/gen/l10n/l10n.dart';
import 'package:app/core/resources/colors.dart';
import 'package:app/logic/splash/version_app/version_app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VersionLabel extends StatelessWidget {
  const VersionLabel({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<VersionAppCubit, String>(
      builder: (_, state) => Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Text(
          '${l10n.splashAppVersionLabel} $state',
          style: context.textTheme.displayMedium
              ?.copyWith(color: AppColors.whiteColor),
        ),
      ),
    );
  }
}
