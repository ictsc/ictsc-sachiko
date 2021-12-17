import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/service/user_api.dart';
import 'package:ictsc_sachiko/view_model/model/user_list_page_state.dart';
import 'package:state_notifier/state_notifier.dart';

final userListPageProvider = StateNotifierProvider.autoDispose<
    UserListPageStateNotifier, UserListPageState>(
  (ref) => UserListPageStateNotifier(const UserListPageState(), ref),
);

class UserListPageStateNotifier extends StateNotifier<UserListPageState>
    with LocatorMixin {
  UserListPageStateNotifier(UserListPageState state, this.ref) : super(state) {
    fetchUserGroup();
  }

  final ProviderReference ref;

  Future<void> fetchUserGroup() async {
    await ref.read(userProvider).findAllUserGroups().then(
          (result) => result.when(
            success: (response) {
              state = state.copyWith(userGroups: response.data);
            },
            failure: (_) {},
          ),
        );
  }
}
