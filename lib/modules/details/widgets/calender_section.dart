
import '../../../app.dart';

class CalenderSection extends StatelessWidget {
  const CalenderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<BookingProvider>();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.grey100,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: TableCalendar(
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: provider.focusedDay,

        calendarFormat: CalendarFormat.month,
        availableCalendarFormats: const {
          CalendarFormat.month: 'Month'
        },
        startingDayOfWeek: StartingDayOfWeek.monday,
        selectedDayPredicate: (day) {
          return isSameDay(provider.selectedDay, day);
        },
        onDaySelected: (selected, focused) {
          if (!provider.isEnabled(selected)) return;

         provider.selectDay(selected, focused);
        },
        enabledDayPredicate: (day) {
          return provider.isEnabled(day);
        },
        calendarStyle: CalendarStyle(
          selectedDecoration: BoxDecoration(
            color: AppColors.primaryColor,
            shape: BoxShape.circle,
          ),
          todayDecoration: BoxDecoration(
            color: AppColors.primaryColor.withAlpha(50),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}