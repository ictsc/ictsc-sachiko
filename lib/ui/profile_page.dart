import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ictsc_sachiko/ui/common/header.dart';
import 'package:ictsc_sachiko/ui/problem_list_page.dart';
import 'package:ictsc_sachiko/view_model/common/auth_state_notifier.dart';
import 'package:ictsc_sachiko/view_model/model/profile_page_state.dart';
import 'package:ictsc_sachiko/view_model/profile_page_state_notifier.dart';

class ProfilePage extends HookWidget {
  final profilePageStateProvider = StateNotifierProvider.autoDispose<
          ProfilePageStateNotifier, ProfilePageState>(
      (ref) => ProfilePageStateNotifier(const ProfilePageState(), ref));

  @override
  Widget build(BuildContext context) {
    final authState = useProvider(authStateProvider);
    final profileProvider = useProvider(profilePageStateProvider.notifier);

    final user = authState.user;

    if (user == null) {
      return Container();
    }

    final formKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: Header(appBar: AppBar()),
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              const Gap(40),
              // TODO タイトル？
              SizedBox(
                width: 1024,
                child: ProblemCard(
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('プロフィール',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(fontWeight: FontWeight.bold)),
                        const Gap(8),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: Theme.of(context).dividerColor,
                        ),
                        const Gap(24),
                        const Text('表示名'),
                        const Gap(4),
                        SizedBox(
                          width: 512,
                          child: TextFormField(
                            controller: profileProvider.displayNameController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const Gap(16),
                        const Text('所属チーム'),
                        const Gap(4),
                        Text(
                          user.userGroup?.name ?? '',
                        ),
                        const Gap(36),
                        ElevatedButton(
                            onPressed:
                                profileProvider.onSaveButton(context: context, key: formKey),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('更新する'),
                            ))
                      ],
                    ),
                  ),
                ),
              )
            ]),
          ),
        ));
  }
}
