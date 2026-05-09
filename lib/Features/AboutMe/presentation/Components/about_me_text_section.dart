import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:muhammad_essam_portfolio/Core/components/SheardComponents/box_widget.dart';
import 'package:muhammad_essam_portfolio/Core/components/SheardComponents/cv_download_button.dart';
import 'package:muhammad_essam_portfolio/Core/components/SheardComponents/hover_effect_widget.dart';
import 'package:muhammad_essam_portfolio/Features/AboutMe/presentation/controller/cubit.dart';

import '../../../../Core/Network/Local/cache_helper.dart';
import '../../../../Core/Network/Local/constant.dart';
import '../../../../Core/constants/colors.dart';
import '../../../../Core/constants/text.dart';
import '../../../../routes/routes.dart';
import '../controller/state.dart';

class AboutMeTextSection extends StatelessWidget {
  const AboutMeTextSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AboutMeCubit, AboutMeState>(
      builder: (context, state) {
        return Column(
          spacing: 32,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextBody16(
              'Hello, i’m ${CacheHelper.get(key: AppStorage.name)}!',
              color: grayColor,
            ),
            TextBody16(
              CacheHelper.get(key: AppStorage.objective),
              color: grayColor,
              maxLines: 100,
            ),
            Row(
              spacing: 32,
              children: [
                HoverEffectWidget(
                  child: BoxWidget(
                    child: TextBody16(
                      'Read more ->',
                      color: Colors.white,
                    ),
                    color: mainColor,
                  ),
                  onTap: () {
                    context.go(Routes.aboutMeScreen);
                  },
                ),
                CvDownloadButton(),
              ],
            )
          ],
        );
      },
    );
  }
}
