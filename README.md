# LSAppCategory

A Swift package providing `AppCategory`, a strongly-typed enum for Apple's `LSApplicationCategoryType` [constants](https://developer.apple.com/documentation/bundleresources/information-property-list/lsapplicationcategorytype).

This makes it easier and safer to work with application categories in your Swift projects. The `AppCategory` enum includes cases for standard Apple-defined categories (including various game sub-categories) and provides useful properties:

*   `rawValue`: The original string constant (e.g., `"public.app-category.business"`).
*   `id`: Same as `rawValue`, useful for `Identifiable` conformance.
*   `description`: A human-readable string (e.g., `"Business"`).
*   `sfSymbol`: An SFSymbol name string (e.g., `"briefcase.fill"`).
*   `emoji`: An emoji string (e.g., "💼").

## Example Usage

Assuming you have added `LSAppCategory` as a dependency to your project:

```swift
import LSAppCategory

let category = AppCategory.developerTools

print("Category: \(category.description)")
// Output: Category: Developer Tools
print("SF Symbol: \(category.sfSymbol)")
// Output: SF Symbol: hammer.fill
print("Emoji: \(category.emoji)")
// Output: Emoji: 🛠️
print("Raw Value: \(category.rawValue)")
// Output: Raw Value: public.app-category.developer-tools
```

## Installation

### Swift Package Manager

Add the following to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/hewig/LSAppCategory.git", branch: "main"),
]
```

And add `LSAppCategory` to your target's dependencies:

```swift
targets: [
    .target(
        name: "YourTarget",
        dependencies: ["LSAppCategory"]
    ),
]
```

### Xcode

1. Open your Xcode project.
2. Go to File > Swift Packages > Add Package Dependency...
3. Enter the URL of this repository: `https://github.com/hewig/LSAppCategory.git`
4. Select the branch `main`.
5. Add the package to your target.

## License

[MIT License](LICENSE)
