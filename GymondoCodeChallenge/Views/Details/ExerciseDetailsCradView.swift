import SwiftUI

struct ExerciseDetailsCradView: View {

    var body: some View {
        VStack {
            // MARK: Exercise title
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title.weight(.medium))
            Spacer()
            // MARK: Exercise description
            Text("in eine aufrechte Position setzen, bei der die Beine hüftbreit geöffnet sind den Rücken, die Knie und die Oberschenkelaußenseite an die jeweiligen Polster pressen mit den Händen an den Griffen festhalten die Oberschenkel bis zum Anschlagpunkt der Hebelarme auseinander drücken danach die Beine wieder zusammen führen das Gesäß nicht vom Sitz abheben beim Auseinanderdrücken der Hebelarme aus- und beim Zusammenführen einatme")
                .font(.callout)
                .multilineTextAlignment(.leading)
                .lineLimit(.none)
            Spacer()
            // MARK: Exercise images
            ScrollView(.horizontal, showsIndicators: true) {
                HStack {
                    ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { _ in
                        Image("sn")
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
        ExerciseDetailsCradView()
    }
}
