import Foundation

// https://developer.apple.com/documentation/bundleresources/information-property-list/lsapplicationcategorytype

enum Category: String, CaseIterable, Identifiable, Hashable, CustomStringConvertible {
    // Standard Categories
    case books = "public.app-category.books"
    case business = "public.app-category.business"
    case developerTools = "public.app-category.developer-tools"
    case education = "public.app-category.education"
    case entertainment = "public.app-category.entertainment"
    case finance = "public.app-category.finance"
    case foodAndDrink = "public.app-category.food-and-drink"
    case games = "public.app-category.games"
    case graphicsAndDesign = "public.app-category.graphics-and-design"
    case healthAndFitness = "public.app-category.health-and-fitness"
    case lifestyle = "public.app-category.lifestyle"
    case magazinesAndNewspapers = "public.app-category.magazines-and-newspapers"
    case medical = "public.app-category.medical"
    case music = "public.app-category.music"
    case photoAndVideo = "public.app-category.photo-and-video"
    case productivity = "public.app-category.productivity"
    case reference = "public.app-category.reference"
    case shopping = "public.app-category.shopping"
    case socialNetworking = "public.app-category.social-networking"
    case sports = "public.app-category.sports"
    case stickers = "public.app-category.stickers"
    case travel = "public.app-category.travel"
    case utilities = "public.app-category.utilities"
    case weather = "public.app-category.weather"

    // Non-standard or fallback
    case other = ""

    var id: String { self.rawValue }

    var description: String {
        switch self {
        case .books: return "Books"
        case .business: return "Business"
        case .developerTools: return "Developer Tools"
        case .education: return "Education"
        case .entertainment: return "Entertainment"
        case .finance: return "Finance"
        case .foodAndDrink: return "Food & Drink"
        case .games: return "Games"
        case .graphicsAndDesign: return "Graphics & Design"
        case .healthAndFitness: return "Health & Fitness"
        case .lifestyle: return "Lifestyle"
        case .magazinesAndNewspapers: return "Magazines & Newspapers"
        case .medical: return "Medical"
        case .music: return "Music"
        case .photoAndVideo: return "Photo & Video"
        case .productivity: return "Productivity"
        case .reference: return "Reference"
        case .shopping: return "Shopping"
        case .socialNetworking: return "Social Networking"
        case .sports: return "Sports"
        case .stickers: return "Stickers"
        case .travel: return "Travel"
        case .utilities: return "Utilities"
        case .weather: return "Weather"
        case .other: return "Other"
        }
    }

    var symbolName: String { // Renamed from emoji
        switch self {
        case .books: return "book.closed.fill"
        case .business: return "briefcase.fill"
        case .developerTools: return "hammer.fill"
        case .education: return "graduationcap.fill"
        case .entertainment: return "film.fill"
        case .finance: return "banknote.fill"
        case .foodAndDrink: return "fork.knife"
        case .games: return "gamecontroller.fill"
        case .graphicsAndDesign: return "paintbrush.pointed.fill"
        case .healthAndFitness: return "figure.walk"
        case .lifestyle: return "house.fill"
        case .magazinesAndNewspapers: return "newspaper.fill"
        case .medical: return "staroflife.fill"
        case .music: return "music.note"
        case .photoAndVideo: return "photo.on.rectangle.angled"
        case .productivity: return "chart.bar.xaxis"
        case .reference: return "books.vertical.fill"
        case .shopping: return "cart.fill"
        case .socialNetworking: return "message.fill"
        case .sports: return "sportscourt.fill"
        case .stickers: return "smiley.fill"
        case .travel: return "airplane"
        case .utilities: return "wrench.adjustable.fill"
        case .weather: return "sun.max.fill"
        case .other: return "square.grid.3x3.fill"
        }
    }
}
