import SwiftUI

struct AddThingView: View {
  @Environment(\.dismiss) var dismiss

  var body: some View {
    VStack {
      Button("Done") {
        dismiss()
      }
      Spacer()
    }
  }
}

struct AddThingView_Previews: PreviewProvider {
  static var previews: some View {
    AddThingView()
  }
}
