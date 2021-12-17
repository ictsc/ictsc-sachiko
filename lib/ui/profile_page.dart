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
    (ref) => ProfilePageStateNotifier(const ProfilePageState(), ref),
  );

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
          child: Column(
            children: [
              const Gap(40),
              SizedBox(
                width: 1024,
                child: ProblemCard(
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'プロフィール',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Gap(8),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: Theme.of(context).dividerColor,
                        ),
                        const Gap(32),
                        ProfileTextForm(
                          label: '表示名',
                          isRequired: true,
                          controller: profileProvider.displayNameController,
                          hintText: '名前（ニックネーム）',
                        ),
                        const Gap(32),
                        const Text('所属チーム'),
                        const Gap(4),
                        Text(
                          user.userGroup?.name ?? '',
                        ),
                        const Gap(32),
                        ProfileTextForm(
                          label: '自己紹介',
                          hintText: '自己紹介',
                          minLines: 3,
                          controller:
                              profileProvider.selfIntroductionController,
                        ),
                        const Gap(32),
                        SizedBox(
                          width: 512,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ProfileTextForm(
                                    size: 242,
                                    label: 'GitHubユーザー名',
                                    hintText: 'ユーザー名のみを入力',
                                    controller:
                                        profileProvider.githubIdController,
                                  ),
                                  ProfileTextForm(
                                    size: 242,
                                    label: 'Twitterユーザー名',
                                    hintText: '@マークなしで入力',
                                    controller:
                                        profileProvider.twitterIdController,
                                  ),
                                ],
                              ),
                              const Gap(32),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ProfileTextForm(
                                    size: 242,
                                    label: 'Facebookユーザー名',
                                    hintText: 'ユーザー名のみを入力',
                                    controller:
                                        profileProvider.facebookIdController,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Gap(32),
                        ElevatedButton(
                          onPressed: profileProvider.onSaveButton(
                            context: context,
                            key: formKey,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('更新する'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileTextForm extends HookWidget {
  final TextEditingController controller;
  final bool isRequired;
  final String label;
  final String? hintText;
  final double size;
  final int? minLines;

  const ProfileTextForm({
    required this.controller,
    this.isRequired = false,
    required this.label,
    this.size = 512,
    this.hintText,
    this.minLines,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const Gap(4),
            if (isRequired)
              const Text(
                '*',
                style: TextStyle(color: Colors.red),
              ),
          ],
        ),
        const Gap(4),
        SizedBox(
          width: size,
          child: TextFormField(
            maxLines: minLines != null ? null : 1,
            minLines: minLines,
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              border: const OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
