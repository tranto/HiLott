//
//  MainView.swift
//  hiLott
//
//  Created by tranto on 20/4/20.
//  Copyright © 2020 Tran To. All rights reserved.
//

import SwiftUI
import LotteryFactory

struct MainView: View {

    @State var startGreeting = "Hello world"

    var body: some View {
        VStack {
            Text(startGreeting)
                .padding()

            Button(action: {
                let factory = LotteryFactory(numOfMembers: Team.getAvailableGuys().count)
                let index = factory.doLottery()
                self.startGreeting = "\(Team.getAvailableGuys()[index].name.uppercased()) is the winner"
            }, label: {
                Text("Roll dice")
                    .background(Color.white)
                    .foregroundColor(Color.black)
                    .font(.title)
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.black, lineWidth: 5)
                    )
            })
        }.padding(.vertical, 40)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
