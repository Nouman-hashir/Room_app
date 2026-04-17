import '../../../app.dart';

class ReviewCard extends StatelessWidget {
  final String image;
  final String review;
  final int rating;
  final int index;
  final VoidCallback? onTap;

  const ReviewCard({
    super.key,
    required this.image,
    required this.review,
    this.rating = 4,
    this.onTap,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
        color: AppColors.grey100,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(3.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.white, width: 3.w),
            ),
            child: CircleAvatar(
              radius: 28.r,
              backgroundImage: AssetImage(image),
            ),
          ),
          15.verticalSpace,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "“",
                style: TextStyle(
                  fontSize: 30.sp,
                  color: AppColors.primaryColor,
                ),
              ),
              Expanded(
                child: Text(
                  review,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.subtitle2.copyWith(
                    fontSize: 14.sp,
                    color: Colors.black54,
                    height: 1.5,
                  ),
                ),
              ),
              Text(
                "”",
                style: TextStyle(
                  fontSize: 30.sp,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          15.verticalSpace,
          Consumer<ReviewsProvider>(
            builder: (context, provider, child) {
              final rating = provider.getRating(index);
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (i) {
                  return GestureDetector(
                    onTap: () {
                      provider.setRating(index, i + 1);
                    },
                    child: Icon(
                      Icons.star,
                      color: i < rating
                          ? AppColors.orange
                          : Colors.grey.shade300,
                    ),
                  );
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
