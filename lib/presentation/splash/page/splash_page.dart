import 'package:app/core/gen/assets.gen.dart/assets.gen.dart';
import 'package:app/injectable.dart';
import 'package:app/core/bloc/result_state.dart';
import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/navigation/route.dart';
import 'package:app/core/resources/colors.dart';
import 'package:app/logic/splash/verify_session/verify_session_cubit.dart';
import 'package:app/logic/splash/verify_session/verify_session_event.dart';
import 'package:app/presentation/widgets/painter/diagonal_painter.dart';
import 'package:app/presentation/widgets/version_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late VerifySessionCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = getIt<VerifySessionCubit>();
    _cubit.add(const CheckSession());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifySessionCubit, ResultState<bool>>(
      bloc: _cubit,
      listener: (context, state) {
        state.whenOrNull(
          data: (checked) {
            if (checked) {
              Navigator.of(context)
                  .pushReplacementNamed(getIt<Routes>().preferences);
            } else {
              //TODO: add login
            }
          },
          error: (error) {
            // ErrorDialog()
            //     .show(context);
          },
        );
      },
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SizedBox(
          width: context.width,
          height: context.height,
          child: CustomPaint(
            painter: DiagonalPainter(heightClip: 60.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.images.shared.brandWhiteSvg.svg(
                  width: 200.w,
                  height: 200.h,
                ),
                SizedBox(height: 100.h),
                const VersionLabel(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
