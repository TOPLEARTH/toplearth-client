import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// 필요한 repository import 추가
// import 'package:toplearth/repository/commit/commit_repository.dart';

class CalendarViewModel extends GetxController {
  /* ------------------------------------------------------ */
  /* -------------------- DI Fields ----------------------- */
  /* ------------------------------------------------------ */
  // late final CommitRepository _commitRepository;

  /* ------------------------------------------------------ */
  /* ----------------- Private Fields --------------------- */
  /* ------------------------------------------------------ */
  final Rx<DateTime> _focusedDay = DateTime.now().obs;
  final Rx<DateTime?> _selectedDay = Rx<DateTime?>(null);
  final RxMap<DateTime, int> _commitData = <DateTime, int>{}.obs;
  final RxBool _isLoading = false.obs;

  /* ------------------------------------------------------ */
  /* ----------------- Public Fields ---------------------- */
  /* ------------------------------------------------------ */
  DateTime get focusedDay => _focusedDay.value;
  DateTime? get selectedDay => _selectedDay.value;
  bool get isLoading => _isLoading.value;
  Map<DateTime, int> get commitData => _commitData;

  @override
  void onInit() {
    super.onInit();
    // Dependency Injection
    // _commitRepository = Get.find<CommitRepository>();

    // 임시 데이터 (실제로는 repository에서 가져올 데이터)
    _commitData.addAll({
      DateTime(2024, 10, 27): 1,
      DateTime(2024, 10, 26): 4,
      DateTime(2024, 10, 14): 3,
      DateTime(2024, 10, 20): 1,
      DateTime(2024, 10, 25): 3,
    });
  }

  @override
  void onReady() async {
    super.onReady();
    await fetchCommitData();
  }

  /* ------------------------------------------------------ */
  /* ----------------- Public Methods -------------------- */
  /* ------------------------------------------------------ */

  Future<void> fetchCommitData() async {
    try {
      _isLoading.value = true;
      // 실제 데이터 fetch 로직
      // final commits = await _commitRepository.getCommits();
      // _commitData.value = commits;
    } catch (e) {
      print('Error fetching commit data: $e');
    } finally {
      _isLoading.value = false;
    }
  }

  void updateSelectedDay(DateTime selectedDay, DateTime focusedDay) {
    _selectedDay.value = selectedDay;
    _focusedDay.value = focusedDay;
    update();
  }

  int getCommitCount(DateTime date) {
    final normalized = DateTime(date.year, date.month, date.day);
    return _commitData[normalized] ?? 0;
  }

  Color getCommitColor(int commitCount) {
    if (commitCount == 0) return Colors.transparent;
    if (commitCount == 1) return const Color(0xFF2B3C5C);
    if (commitCount >= 2 && commitCount <= 3) return const Color(0xFF385B93);
    if (commitCount >= 4 && commitCount <= 5) return const Color(0xFF457AC9);
    if (commitCount >= 6) return const Color(0xFF5498FF);
    return Colors.transparent;
  }

  List<FlSpot> getTimeData() {
    // 예시 데이터
    return [
      const FlSpot(19, 10),
      const FlSpot(19.5, 25),
      const FlSpot(20, 15),
      const FlSpot(20.5, 30),
    ];
  }
}
