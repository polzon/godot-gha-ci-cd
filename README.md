Collection of Github Actions for use for Godot projects. I've designed these for easy modification rather then to blindly use as-is. The actions should have comments that explain how to modify.

## Priority goals:

* Clean up for public use and easier modification, decoupling itchio deployment.
* Make `gdformat`/`gdscript-lint` checks optional.
* Make `gdunit4` tests optional, and add support to easily switch to `GUT` for projects using that instead.

## Near-term goals:

* Properly fix Android AAB exports, and rework APK exports.
* GitHub Pages support.
* Workflow to build Godot export templates from source, then upload as an artifact for other workflows.

## Later date goals:

* Add Mono/C# build support.
* Steam exports. (Need to get a Steam page first)
* Play Store exports.


## Maybe one day, but probably not:

* OSX export support. (I don't want to pay $100/yr for a developer license on a platform I don't use or can test on)
