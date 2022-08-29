import SwiftUI
import Kingfisher

struct ExerciseDetailsCradView: View {
    @ObservedObject var viewModel: ExerciseDetailsViewModel

    var body: some View {
        Group {
            switch viewModel.state {
            case .loaded(exercies: let exercise):
                VStack {
                    // MARK: Exercise title
                    Text(exercise.name)
                        .font(.title.weight(.medium))
                    Spacer()
                    // MARK: Exercise description
                    Text(exercise.description
                        .removeHTML()
                        .removeLine()
                    )
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .lineLimit(.none)
                    Spacer()
                    // MARK: Exercise images
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack {
                            ForEach(exercise.images ?? []) { image in
                                KFImage(URL(string: image.image))
                                    .resizable()
                                    .cornerRadius(5)
                                    .frame(width: 100, height: 100)
                                    .padding()
                            }
                        }
                    }
                    Spacer()

                    // MARK: Exercise variations
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack {
                            ForEach(exercise.variations , id: \.self) { variation in
                                Text(String(variation))
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()

            default:
                EmptyView()
            }
        }.onAppear {
            viewModel.loadExercise()
        }
    }
}
