import '../../../app.dart';

class CarImageSlider extends StatelessWidget {
  const CarImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<BookingProvider>();

    return Container(
      height: 170.h,
      padding:  EdgeInsets.all(18.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.grey300),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: provider.pageController,
            itemCount: provider.images.length,
            onPageChanged: provider.onPageChanged,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: Image.asset(
                  provider.images[index],
                ),
              );
            },
          ),
          Positioned(
            left: 0,
            child: GestureDetector(
              onTap: provider.previous,
              child: _arrowButton(Icons.arrow_back_ios)
            ),
          ),
          Positioned(
            right: 0,
            child: GestureDetector(
              onTap: provider.next,
              child: _arrowButton(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }

  Widget _arrowButton(IconData icon) {
    return Container(
      padding: EdgeInsets.all(10.w),
      decoration: const BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 18, color: AppColors.primaryColor),
    );
  }
}