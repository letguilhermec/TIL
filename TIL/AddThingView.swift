import SwiftUI

struct AddThingView: View {
  @Environment(\.dismiss) var dismiss
  @ObservedObject var someThings: ThingStore
  @State private var thing = ""
  @FocusState private var thingIsFocused: Bool

  var body: some View {
    VStack {
      TextField("Thing I Learned", text: $thing)
        .textFieldStyle(.roundedBorder)
        .disableAutocorrection(true)
        .focused($thingIsFocused)
        .onAppear {
          thingIsFocused = true
        }
        .padding()
      Button("Done") {
        if thing != "" {
          someThings.things.append(thing)
        }
        dismiss()
      }
      Spacer()
    }
    .environment(\.textCase, nil)
  }
}

struct AddThingView_Previews: PreviewProvider {
  static var previews: some View {
    AddThingView(someThings: ThingStore())
  }
}
