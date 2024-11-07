import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/text_strings.dart';

class YHomeCategories extends StatelessWidget {
  const YHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.0,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (_, index) => YVerticalImageText(
          image: YImages.google,
          title: YTexts.categoryText,
          onTap: () {},
        ),
      ),
    );
  }
}
