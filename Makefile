PUBSPEC_YAML = $(shell find . -name pubspec.yaml)
PUBSPEC_LOCK = $(PUBSPEC_YAML:.yaml=.lock)

# Runs `flutter pub get` in the packages that `pubspec.yaml` was modified.
pub_get: $(PUBSPEC_LOCK)

%pubspec.lock: %pubspec.yaml
	@cd $(@D) && \
	flutter pub get

# Runs `flutter pub get` in all the project packages.
pub_get_all:
	@find . -name pubspec.yaml -exec echo "### Getting packages for {}" \; \
	-execdir flutter pub get \;

# Runs `flutter pub run build_runner build` in all the project packages.
generate_sources_all:
	@find . -name pubspec.yaml -exec echo "### Generating sources for {}" \; \
	-execdir flutter pub run build_runner build --delete-conflicting-outputs \;

# Runs `flutter clean` in all the project packages.
clean_all:
	@find . -name pubspec.yaml -exec echo "### Cleaning {}" \; \
	-execdir flutter clean \;

.PHONY: pub_get pub_get_all generate_sources_all clean_all
