# Radar 

An attempt to recreate a bug with Xcode linking/building which has been reported to Apple.

See: [Bug Report](https://openradar.appspot.com/radar?id=5003831867867136)

## Summary:

I am unable to build due a linking error only when I build for testing when code coverage is enabled. If I turn off code coverage the build for testing is successful. I have added 2 framework targets with their own test targets which may be a contributing factor.

## Steps to Reproduce:

1. Create a new iOS app project with a test target
2. Add an external Xcode project as a dependency
3. Add a framework target with tests
4. Add another framework test with tests
5. Enable code coverage in the build scheme
6. Build for testing

## Expected Results:

The build should be successful for building the app target with or without test targets.

## Actual Results:

Linking fails to the external project dependency. 

## Version:

Xcode 8.2.1

## Notes:

This is yet another reason many developers working with Xcode use as an excuse for not adding tests. Overcoming these build errors is time consuming and costly and ultimately it affects users who either end up using crashy apps or do not get features which were cut due to time wasted with getting Xcode to work.

---

Attempts so far to recreate the problem with a fresh Xcode configuration have not been successful. This project includes 2 external projects references as Xcode projects and 2 internally referenced framework targets. Bitcode has been disabled for all projects and one of the embedded and linked external libraries includes a compiled C library like the project which has the problem which cannot be shared because it is confidential work.

What this project does not do is include a C library which has been compiled without bitcode enabled. That could be the next step to try to recreate the problem.
