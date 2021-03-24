
import SwiftUI

struct ContentView: View {
    let nightlyTasks = ["Check all windows", "Check all doors", "Check that the safe is locked", "Inspect security cameras", "Clear ice from sidewalks", "Document \"strange and unusual\" occurrences"]
    let weeklyTasks = ["Check inside all vacant rooms", "Walk the perimiter of the property"]
    
    let monthlyTasks = ["Test security alarm", "Test motion detectors", "Test smoke alarms"]
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    // MARK: Nightly tasks
                    List {
                        Section(header: HStack {
                            Text(Image(systemName: "moon.stars"))
                                .foregroundColor(.yellow)
                                .font(.title3)
                                .fontWeight(.heavy)
                            Text("Nightly Tasks")
                                .underline()
                                .font(.title3)
                                .foregroundColor(.yellow)
                                .fontWeight(.heavy)
                                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                        }) {
                            ForEach(nightlyTasks, id: \.self, content: {
                                taskName in Text(taskName)
                            })
                        }
                        Section(header: HStack {
                            Text(Image(systemName: "sunrise"))
                                .foregroundColor(.yellow)
                                .font(.title3)
                                .fontWeight(.heavy)
                            Text("Weekly Tasks")
                                .underline()
                                .font(.title3)
                                .foregroundColor(.yellow)
                                .fontWeight(.heavy)
                                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                        }) {
                            ForEach(weeklyTasks, id: \.self, content: {
                                taskName in Text(taskName)
                            })
                        }
                        Section (header: HStack {
                            Text(Image(systemName: "calendar"))
                                .foregroundColor(.yellow)
                                .font(.title3)
                                .fontWeight(.heavy)
                            Text("Monthly Tasks")
                                .underline()
                                .font(.title3)
                                .foregroundColor(.yellow)
                                .fontWeight(.heavy)
                                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                        }) {
                            ForEach(monthlyTasks, id: \.self, content: {
                                taskName in Text(taskName)
                            })
                        }
                    }.listStyle(GroupedListStyle())

            }
            Spacer()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
