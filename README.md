# flutter_sample

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Flutter Version Management
### install w/ brew
1. brew tap leoafarias/fvm
2. brew install fvm

### install w/ dart
1. dart pub global activate fvm

### Setup
1. Add path
```sh:.zshrc
export PATH="$PATH:$HOME/.pub-cache/bin"
```
2. fvm install

## melos
### install
```sh
dart pub global activate melos
```

## Setup
1. melos bootstrap
2. melos generate:localize
3. melos generate

## Check Dependencies
```sh
melos list --graph
```
