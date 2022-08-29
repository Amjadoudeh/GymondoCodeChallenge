import Foundation
import Combine

enum ExercisesState {
    case loading
    case loaded(exercies: [Exercise])
    case error
}

enum ExerciseDetailState {
    case loading
    case loaded(exercies: [Exercise])
    case error
}

class ExercisesViewModel: ObservableObject {
    @Published var state: ExercisesState = .loading
    var cancellables = Set<AnyCancellable>()
    private var exerciseService: ExerciseManager
    init(exerciseService: ExerciseManager) {
        self.exerciseService = exerciseService

        self.exerciseService.$exercises.sink {
            self.state = .loaded(exercies: $0)
        }.store(in: &cancellables)
    }

    func loadExercises() {
        state = .loading
        self.exerciseService.fetchExcercises()
    }
    
}


class ExerciseDetailsViewModel: ObservableObject {
    @Published var state: ExerciseDetailState = .loading
    var cancellables = Set<AnyCancellable>()
    private var exerciseService: ExerciseManager
    init(exerciseService: ExerciseManager) {
        self.exerciseService = exerciseService

        self.exerciseService.$exercises.sink {
            self.state = .loaded(exercies: $0)
        }.store(in: &cancellables)
    }

    func loadExerciseImages(exerciseID: Int) {
        state = .loading
        self.exerciseService.fetchExcerciseImages(exerciseID: exerciseID)
    }
}
