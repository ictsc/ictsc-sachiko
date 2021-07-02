import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/router/app_router.gr.dart';
import 'package:ictsc_sachiko/view_model/common/authentication_state_notifier.dart';

class AdminGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final context = router.navigatorKey.currentContext;

    final user = context?.read(auth).user;

    print(user?.userGroup?.isFullAccess);

    if (user?.userGroup?.isFullAccess ?? false) {
      resolver.next();
    } else {
      router.push(const SignInRoute());
    }
  }
}
