import Combine
import Foundation


class RecipePosting: ObservableObject {
    
    @Published var meal_title: String = ""
    @Published var description: String = ""
    @Published var serves: Int = 0
    @Published var poster: String = "currently harcoded"
    @Published var location: String = "also harcoded"

    func post(prepTime: Int, cookTime: Int) {
        print("posting")
        print("meal title: ", String($meal_title))
        print("description: ", String($description))
        print("servings: ", String($serves))
        print("poster: ", String($poster))
        print("location: ", String($location))
    }
    
}


class RecipeTimer: ObservableObject, Identifiable {
    private var startTime: Date?
    private var accumulatedTime:TimeInterval = 0
    private var timer: Cancellable?
    
    
    @Published var isRunning = false {
        didSet {
            if self.isRunning {
                self.start()
            } else {
                self.stop()
            }
        }
    }
    @Published private(set) var elapsedTime: TimeInterval = 0
    
    let id = UUID()
    
    private func start() -> Void {
        self.timer?.cancel()
        self.timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect().sink { _ in
            self.elapsedTime = self.getElapsedTime()
        }
        self.startTime = Date()
    }
    
    private func stop() -> Void {
        self.timer?.cancel()
        self.timer = nil
        self.accumulatedTime = self.getElapsedTime()
        self.startTime = nil
    }
    
    func reset() -> Void {
        self.accumulatedTime = 0
        self.elapsedTime = 0
        self.startTime = nil
        self.isRunning = false
    }
    
    private func getElapsedTime() -> TimeInterval {
        return -(self.startTime?.timeIntervalSinceNow ??     0)+self.accumulatedTime
    }
}
