
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omalin_mobprog/constants.dart';
import 'package:omalin_mobprog/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class NewsfeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int? numOfLikes;
  final bool? hasImage;

  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes,
    this.hasImage, required String avatarPath,
  });

  @override
  Widget build(BuildContext context) {
  final screenUtilSp = ScreenUtil().setSp(10);
  final screenUtilWidth = ScreenUtil().setWidth(10);
  final screenUtilFontUserNameSize = ScreenUtil().setSp(15);
  final screenUtilIconSize = ScreenUtil().setSp(15);

    return Card(
      margin: EdgeInsets.all(screenUtilSp),
      child: Padding(
        padding: EdgeInsets.all(screenUtilSp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.person),
                SizedBox(width: screenUtilWidth),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: screenUtilFontUserNameSize,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: date,
                          fontSize: 12.sp,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 3.w),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: screenUtilIconSize,
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: 5.h),
            CustomText(
              text: postContent,
              fontSize: 12.sp,
              color: Colors.black,
            ),
            SizedBox(height: 5.h),
            hasImage == true
                ? Image.asset(
                    'assets/images/nyek_mo.jpg',
                    fit: BoxFit.cover,
                  )
                : const SizedBox.shrink(),
             hasImage == true
                ? Image.asset(
                    'assets/images/cat_mo.jpg',
                    fit: BoxFit.cover,
                  )
                : const SizedBox.shrink(),    
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.thumb_up, color: fbPrimary),
                  label: CustomText(
                    text: (numOfLikes ?? 0).toString(),
                    fontSize: 12.sp,
                    color: fbDarkPrimary,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: CustomText(
                    text: 'Comment',
                    fontSize: 12.sp,
                    color: fbDarkPrimary,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.redo, color:fbDarkPrimary),
                  label: CustomText(
                    text: 'Share',
                    fontSize: 12.sp,
                    color: fbDarkPrimary,
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              children: [
                const Icon(Icons.person),
                SizedBox(width: 10.w),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: CustomText(
                      text: 'Write a comment...',
                      fontSize: 11.sp,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            const CustomText(
              text: 'View all comments',
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
