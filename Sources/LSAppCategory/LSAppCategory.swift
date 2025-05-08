import Foundation

public enum AppCategory: String, CaseIterable, Identifiable, Hashable, Codable {
    case business = "public.app-category.business"
    case developerTools = "public.app-category.developer-tools"
    case education = "public.app-category.education"
    case entertainment = "public.app-category.entertainment"
    case finance = "public.app-category.finance"
    case games = "public.app-category.games" // General games category
    case actionGames = "public.app-category.action-games"
    case adventureGames = "public.app-category.adventure-games"
    case arcadeGames = "public.app-category.arcade-games"
    case boardGames = "public.app-category.board-games"
    case cardGames = "public.app-category.card-games"
    case casinoGames = "public.app-category.casino-games"
    case diceGames = "public.app-category.dice-games"
    case educationalGames = "public.app-category.educational-games"
    case familyGames = "public.app-category.family-games"
    case kidsGames = "public.app-category.kids-games"
    case musicGames = "public.app-category.music-games"
    case puzzleGames = "public.app-category.puzzle-games"
    case racingGames = "public.app-category.racing-games"
    case rolePlayingGames = "public.app-category.role-playing-games"
    case simulationGames = "public.app-category.simulation-games"
    case sportsGames = "public.app-category.sports-games"
    case strategyGames = "public.app-category.strategy-games"
    case triviaGames = "public.app-category.trivia-games"
    case wordGames = "public.app-category.word-games"
    case graphicsDesign = "public.app-category.graphics-design"
    case healthFitness = "public.app-category.healthcare-fitness" // Note: raw value uses 'healthcare-fitness'
    case lifestyle = "public.app-category.lifestyle"
    case medical = "public.app-category.medical"
    case music = "public.app-category.music"
    case news = "public.app-category.news"
    case photography = "public.app-category.photography"
    case productivity = "public.app-category.productivity"
    case reference = "public.app-category.reference"
    case socialNetworking = "public.app-category.social-networking"
    case sports = "public.app-category.sports"
    case travel = "public.app-category.travel"
    case utilities = "public.app-category.utilities"
    case video = "public.app-category.video"
    case weather = "public.app-category.weather"

    // Non-standard or fallback
    case other = ""

    public var id: String {
        self.rawValue
    }

    public init(string: String?) {
        guard let string = string else {
            self = .other
            return
        }
        self = Self(rawValue: string) ?? .other
    }

    public var sfSymbol: String {
        switch self {
        case .business: return "briefcase.fill"
        case .developerTools: return "hammer.fill"
        case .education: return "graduationcap.fill"
        case .entertainment: return "film.fill"
        case .finance: return "banknote.fill"
        case .games: return "gamecontroller.fill"
        case .actionGames: return "figure.martial.arts"
        case .adventureGames: return "map.fill"
        case .arcadeGames: return "star.circle.fill"
        case .boardGames: return "checkerboard.rectangle"
        case .cardGames: return "suit.heart.fill"
        case .casinoGames: return "dollarsign.circle.fill"
        case .diceGames: return "die.face.5.fill"
        case .educationalGames: return "brain.filled.head.profile"
        case .familyGames: return "figure.2.and.child.holdinghands"
        case .kidsGames: return "teddybear.fill"
        case .musicGames: return "music.mic.circle.fill"
        case .puzzleGames: return "puzzlepiece.extension.fill"
        case .racingGames: return "flag.checkered.2.crossed"
        case .rolePlayingGames: return "shield.lefthalf.filled.slash"
        case .simulationGames: return "gearshape.2.fill"
        case .sportsGames: return "figure.basketball"
        case .strategyGames: return "brain.head.profile"
        case .triviaGames: return "questionmark.diamond.fill"
        case .wordGames: return "textformat.abc"
        case .graphicsDesign: return "paintbrush.pointed.fill"
        case .healthFitness: return "heart.fill"
        case .lifestyle: return "house.fill"
        case .medical: return "staroflife.fill"
        case .music: return "music.note"
        case .news: return "newspaper.fill"
        case .photography: return "camera.fill"
        case .productivity: return "chart.bar.xaxis"
        case .reference: return "books.vertical.fill"
        case .socialNetworking: return "message.fill"
        case .sports: return "sportscourt.fill"
        case .travel: return "airplane"
        case .utilities: return "wrench.adjustable.fill"
        case .video: return "video.fill"
        case .weather: return "sun.max.fill"
        case .other: return "square.grid.3x3.fill"
        }
    }

    public var emoji: String {
        switch self {
        case .business: return "💼"
        case .developerTools: return "🛠️"
        case .education: return "🎓"
        case .entertainment: return "🎬"
        case .finance: return "💰"
        case .games, .actionGames, .adventureGames, .arcadeGames, .boardGames, .cardGames, .casinoGames, .diceGames, .educationalGames, .familyGames, .kidsGames, .musicGames, .puzzleGames, .racingGames, .rolePlayingGames, .simulationGames, .sportsGames, .strategyGames, .triviaGames, .wordGames:
            return "🎮"
        case .graphicsDesign: return "🎨"
        case .healthFitness: return "💪"
        case .lifestyle: return "🧘‍♀️"
        case .medical: return "⚕️"
        case .music: return "🎵"
        case .news: return "📰"
        case .photography: return "📸"
        case .productivity: return "📝"
        case .reference: return "📖"
        case .socialNetworking: return "💬"
        case .sports: return "⚽"
        case .travel: return "✈️"
        case .utilities: return "🔧"
        case .video: return "🎥"
        case .weather: return "☀️"
        case .other: return "📁"
        }
    }
}

extension AppCategory: CustomStringConvertible {
    public var description: String {
        if self == .other {
            return "Other"
        }
        let last = String(self.rawValue.split(separator: ".").last!)
        return last.replacingOccurrences(of: "-", with: " ").capitalized
    }
}
