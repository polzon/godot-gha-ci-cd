Collection of Github Actions for use for Godot projects. I've designed these for easy modification rather then to blindly use as-is. The actions should have comments that explain how to modify.

## Priority goals:

* Clean up for public use and easier modification, decoupling itchio deployment.
* Make `gdformat`/`gdscript-lint` checks optional.
* Make `gdunit4` tests optional, and add support to easily switch to `GUT` for projects using that instead.

## Near-term goals:

* Make Godot version global and configurable, rather then my hardcoded values.
* Properly fix Android AAB exports, and rework APK exports.
* OSX export support.
* GitHub Pages support.
* Decouple some logic like the nightly commit checks into a dedicated script.

## Later date goals:

* Add Mono/C# build support.
* Steam exports.
* Play Store exports.
