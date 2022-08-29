import SwiftUI

struct ExerciseDetailsCradView: View {
    @ObservedObject var exerciseManager = ExerciseManager()
    var exercise: Exercise

    var body: some View {
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

                    ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { _ in
                        Image( "sn")
                            .resizable()
                            .cornerRadius(5)
                        .frame(width: 100, height: 100)
                    }
                }
            }
            Spacer()
            // MARK: Exercise variations
            NavigationLink {

            } label: {

            }

        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()

    }
}

struct ExerciseDetailsCradView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetailsCradView(exercise: Exercise.init(id: 3, name: "Big Rami", exercise_base_id: 5, description: "just run", variations: []))
    }
}
