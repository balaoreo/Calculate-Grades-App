//
//  ContentView.swift
//  Grades
//
//  Created by Keona Balaoro on 9/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var score = ""
    @State var gradeStr = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("Enter exam score: ")
                TextField(" Your Score", text: $score)
                    .padding()
            }.padding()
            Button("Assign Your Grade") {
                let examscore = Double(score)
                if examscore! >= 90.0 {
                    gradeStr = "A"
                } else if examscore! >= 80.0 {
                    gradeStr = "B"
                } else if examscore! >= 70.0 {
                    gradeStr = "C"
                } else if examscore! >= 60.0 {
                    gradeStr = "D"
                } else {
                    gradeStr = "F"
                }
            } .buttonStyle(.borderedProminent)
            
            Text("Your Grade is: \(gradeStr)")
                .frame(maxWidth: .infinity,  alignment: .leading)
                .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
