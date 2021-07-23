.PHONY: run build-runner

run:
	flutter run -d chrome --web-port=3030 --web-renderer=html

build-runner:
	flutter pub run build_runner build