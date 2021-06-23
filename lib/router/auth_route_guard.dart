import 'package:auto_route/auto_route.dart';
import 'package:ictsc_sachiko/router/app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // return SignInRoute
    router.root.push(AppAuthRoute(
      onComplete: () {
        router.removeLast();
        resolver.next();
      },
    ));
  }
}
