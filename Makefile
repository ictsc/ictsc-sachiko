.PHONY: run build-runner build-runner-no-cache

run:
	flutter run -d chrome --web-port=3030 --web-renderer=html

build-runner:
	flutter pub run build_runner build

build-runner-no-cache:
	flutter pub run build_runner build --delete-conflicting-outputs