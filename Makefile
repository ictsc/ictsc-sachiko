.PHONY: run build-runner build-runner-no-cache

run:
	fvm flutter run -d chrome --web-port=3030 --web-renderer=html

build-runner:
	fvm flutter pub run build_runner build

build-runner-no-cache:
	fvm flutter pub run build_runner build --delete-conflicting-outputs