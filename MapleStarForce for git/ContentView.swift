//
//  ContentView.swift
//  MapleStarForce
//
//  Created by hyobeom seo on 2022/09/10.
//

import SwiftUI

struct ContentView: View {
    let item = Item(star: 0, num: 0, dec: 0, per: 95, per2: 0)
    @State var countingStar: Int = 0
    @State var comment: String = " "
    
    var body: some View {
        
        VStack {
            HStack(alignment: .center) {
                Text("메소").foregroundColor(Color(red: 1.54, green: 1.32, blue: 0.40)) +
                Text("를 사용하여 장비를 강화합니다.")
            }.frame(width: /*@START_MENU_TOKEN@*/380.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/).background(Color(red: 0.42, green: 0.39, blue: 0.32))
                .cornerRadius(15)
                
            HStack {
                Image("Arcane").resizable().frame(width: 150, height: 150).padding()
                
                VStack {
                    if item.star == 0 {
                        Text("0 -> 1 성")
                    } else {
                        Text("\(item.star)->\(item.star + 1) 성")
                    }
                    if item.star == 25 {
                        Text("강화가 완료되었습니다.")
                    } else if item.chanceTime == 2 {
                        Text("성공확률 : 100% ")
                    } else {
                        Text("성공확률 : \(item.percentage)%")
                    }
                    if item.chanceTime != 2 {
                        if item.star <= 10 || item.star == 15 || item.star == 20  {
                            Text("실패확률 : \(String(100 - (Double(item.percentage) - item.destoryPercentage)))")
                        } else {
                            Text("실패(하락)확률 : \(String(100 - (Double(item.percentage) - item.destoryPercentage))) ")
                        }
                    }
                    if item.destoryPercentage > 0 && item.chanceTime != 2 {
                        Text("파괴확률 : \(String(item.destoryPercentage))")
                    }
                }
            }
            Button(action: {
                reinforce(item: item)
                
                countingStar = item.star
                
                if item.decision == 1 {
                    comment = "성공"
                }
                if item.decision == 2 {
                    comment = "실패"
                }
                if item.decision == 3 {
                    comment = "펑"
                }
                
                if item.chanceTime == 2 {
                    comment = "실패, 찬스타임"
                }
            })
            {
                Text("강화")
                    .fontWeight(.heavy)
            }.frame(width: 240, height: 80, alignment: .center)
            
            
            Text(comment).padding()
            
            Text("Star :  \(String(countingStar))")
        }.frame(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: 600).background(Color(red: 0.69, green: 0.60, blue: 0.51))
            .cornerRadius(10)
        
        Button(action: {
            item.chanceTime = 0
            item.decision = 0
            item.star = 0
            countingStar = 0
            comment = "초기화 되었습니다"
        })
        {
            Text("초기화")
                .fontWeight(.regular)
                .foregroundColor(Color.red)
                
        }.frame(width: 240, height: 80, alignment: .center)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
