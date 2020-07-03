generate:
	sourcery

build:
	swift build

build-cross:
	swift build -Xswiftc '-DCROSSPLATFORM'

dev:
	swift package generate-xcodeproj

upgrade:
	echo "Not implemented"

clean:
	rm -rf .build

reinstall:
	echo "Not implemented"

lint:
	swiftlint
	# swiftformat --lint Sources

fmt:
	swiftlint autocorrect
	swift-format --recursive --in-place Sources/ Package.swift
