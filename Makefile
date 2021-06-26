.PHONY: run run-build

run:
	flutter run -d chrome --web-port=3030 --web-renderer=html

run-build:
	flutter pub run build_runner build