import SwiftUI

struct AddThingView: View {
  @Environment(\.dismiss) var dismiss
  @Binding var someThings: ThingStore
  @State private var thing = ""

  var body: some View {
    VStack {
      TextField("Thing I Learned", text: $thing)
        .textFieldStyle(.roundedBorder)
        .autocapitalization(.allCharacters)
        .disableAutocorrection(true)
        .padding()
      Button("Done") {
        someThings.things.append(thing)
        dismiss()
      }
      Spacer()
    }
  }
}

struct AddThingView_Previews: PreviewProvider {
  static var previews: some View {
    AddThingView(someThings: .constant(ThingStore()))
  }
}
