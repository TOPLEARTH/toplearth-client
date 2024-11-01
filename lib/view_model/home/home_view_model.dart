import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  /* ------------------------------------------------------ */
  /* -------------------- DI Fields ----------------------- */
  /* ------------------------------------------------------ */

  /* ------------------------------------------------------ */
  /* ----------------- Private Fields --------------------- */
  /* ------------------------------------------------------ */
  final _isLoading = false.obs;

  /* ------------------------------------------------------ */
  /* ----------------- Public Fields ---------------------- */
  /* ------------------------------------------------------ */

  get isLoading => _isLoading.value;
  @override
  void onInit() {
    super.onInit();
    // Dependency Injection

    // Initialize private fields
  }

  @override
  void onReady() async {
    super.onReady();
  }
  /* ---------------- Function Fields ---------------------*/
}
