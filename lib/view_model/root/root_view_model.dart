import 'package:get/get.dart';
import 'package:toplearth/model/root/user_state.dart';
import 'package:toplearth/repository/user/user_repository.dart';

class RootViewModel extends GetxController {
  /* ------------------------------------------------------ */
  /* ----------------- Static Fields ---------------------- */
  /* ------------------------------------------------------ */
  static const duration = Duration(milliseconds: 200);

  /* ------------------------------------------------------ */
  /* -------------------- DI Fields ----------------------- */
  /* ------------------------------------------------------ */
  late final UserRepository _userRepository;

  /* ------------------------------------------------------ */
  /* ----------------- Private Fields --------------------- */
  /* ------------------------------------------------------ */
  late final RxInt _selectedIndex;
  late final Rx<UserState> _userState;

  /* ------------------------------------------------------ */
  /* ----------------- Public Fields ---------------------- */
  /* ------------------------------------------------------ */
  int get selectedIndex => _selectedIndex.value;
  UserState get userState => _userState.value;

  @override
  void onInit() {
    super.onInit();
    // Dependency Injection
    _userRepository = Get.find<UserRepository>();

    // Initialize private fields
    _selectedIndex = 1.obs;
    _userState = UserState.initial().obs;
  }

  @override
  void onReady() async {
    super.onReady();

    await _userRepository.readUserState().then((value) {
      _userState.value = value;
    });
  }

  void fetchIndex(int index) {
    _selectedIndex.value = index;
  }
}
