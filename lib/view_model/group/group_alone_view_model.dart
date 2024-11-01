import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GroupAloneViewModel extends GetxController {
  /* ------------------------------------------------------ */
  /* -------------------- DI Fields ----------------------- */
  /* ------------------------------------------------------ */
  // 필요한 repository 주입 예정

  /* ------------------------------------------------------ */
  /* ----------------- Private Fields --------------------- */
  /* ---------ㅊ--------------------------------------------- */
  final RxBool _isLoading = false.obs;
  final TextEditingController _groupCodeController = TextEditingController();
  final TextEditingController _newGroupNameController = TextEditingController();

  /* ------------------------------------------------------ */
  /* ----------------- Public Fields ---------------------- */
  /* ------------------------------------------------------ */
  bool get isLoading => _isLoading.value;
  TextEditingController get groupCodeController => _groupCodeController;
  TextEditingController get newGroupNameController => _newGroupNameController;

  @override
  void onInit() {
    super.onInit();
    // Dependency Injection
    // repository 주입
  }

  @override
  void onReady() async {
    super.onReady();
    // 초기 데이터 로드가 필요한 경우
  }

  @override
  void onClose() {
    _groupCodeController.dispose();
    _newGroupNameController.dispose();
    super.onClose();
  }

  /* ------------------------------------------------------ */
  /* ----------------- Public Methods -------------------- */
  /* ------------------------------------------------------ */

  Future<void> createNewGroup() async {
    try {
      final groupName = _newGroupNameController.text.trim();
      if (groupName.isEmpty) {
        // 에러 처리 (그룹 이름이 비어있음)
        return;
      }

      _isLoading.value = true;

      // 그룹 생성 로직 구현
      // await _groupRepository.createGroup(groupName);

      // 성공 처리
      _newGroupNameController.clear();
    } catch (e) {
      print('Error creating group: $e');
      // 에러 처리
    } finally {
      _isLoading.value = false;
    }
  }

  Future<void> joinGroup() async {
    try {
      final groupCode = _groupCodeController.text.trim();
      if (groupCode.isEmpty) {
        // 에러 처리 (그룹 코드가 비어있음)
        return;
      }

      _isLoading.value = true;

      // 그룹 참여 로직 구현
      // await _groupRepository.joinGroup(groupCode);

      // 성공 처리
      _groupCodeController.clear();
    } catch (e) {
      print('Error joining group: $e');
      // 에러 처리
    } finally {
      _isLoading.value = false;
    }
  }
}
