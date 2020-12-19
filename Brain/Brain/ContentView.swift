//
//  ContentView.swift
//  Brain
//
//  Created by Jordan Singer on 12/14/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
                    List {
                        NavigationLink(destination: Text("Detail View")) {
                            HStack(spacing: 16) {
                                ZStack {
                                    Text("🧠")
                                        .font(.largeTitle)
                                }.frame(width: 56, height: 56).background(Color(UIColor.systemPink.withAlphaComponent(0.12))).cornerRadius(56)
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Brain")
                                        .font(.title2)
                                    Text("25.43915 years old")
                                        .font(.callout)
                                }
                            }
                            .padding(.vertical, 4)
                        }
                        
                        Section {
                            HStack {
                                ZStack {
                                    Image(systemName: "powersleep").font(.callout)
                                        .foregroundColor(.white)
                                }.frame(width: 28, height: 28).background(Color.purple).cornerRadius(6)
                                Text("Sleep Mode")
                                
                                Spacer()
                                Toggle("", isOn: .constant(false))
                            }
                            
                            HStack {
                                ZStack {
                                    Image(systemName: "target").font(.callout)
                                        .foregroundColor(.white)
                                }.frame(width: 28, height: 28).background(Color.green).cornerRadius(6)
                                Text("Focus Mode")
                                
                                Spacer()
                                Toggle("", isOn: .constant(true))
                            }
                            NavigationLink(destination: Text("Detail View")) {
                                HStack {
                                    ZStack {
                                        Image(systemName: "bolt.fill").font(.callout)
                                            .foregroundColor(.white)
                                    }.frame(width: 28, height: 28).background(Color.yellow).cornerRadius(6)
                                    Text("Energy")
                                    
                                    Spacer()
                                    Text("72%").foregroundColor(.secondary)
                                }
                            }
                            
                            NavigationLink(destination: Text("Detail View")) {
                                HStack {
                                    ZStack {
                                        Image(systemName: "clock.arrow.circlepath").font(.callout)
                                            .foregroundColor(.white)
                                    }.frame(width: 28, height: 28).background(Color.orange).cornerRadius(6)
                                    Text("Memories")
                                    
                                    Spacer()
                                }
                            }
                            
                            NavigationLink(destination: Text("Detail View")) {
                                HStack {
                                    ZStack {
                                        Image(systemName: "bed.double.fill").font(.callout)
                                            .foregroundColor(.white)
                                    }.frame(width: 28, height: 28).background(Color(UIColor.systemTeal)).cornerRadius(6)
                                    Text("Bed Time")
                                    
                                    Spacer()
                                }
                            }
                            
                        }
                        
                        Section {
                            NavigationLink(destination: Text("Detail View")) {
                                HStack {
                                    ZStack {
                                        Image(systemName: "eye.fill").font(.callout)
                                            .foregroundColor(.white)
                                    }.frame(width: 28, height: 28).background(Color.blue).cornerRadius(6)
                                    Text("Sight")
                                }
                            }
                            NavigationLink(destination: Text("Detail View")) {
                                HStack {
                                    ZStack {
                                        Image(systemName: "ear.fill").font(.callout)
                                            .foregroundColor(.white)
                                    }.frame(width: 28, height: 28).background(Color.orange).cornerRadius(6)
                                    Text("Hearing")
                                }
                            }
                            NavigationLink(destination: Text("Detail View")) {
                                HStack {
                                    ZStack {
                                        Image(systemName: "hand.raised.fill").font(.callout)
                                            .foregroundColor(.white)
                                    }.frame(width: 28, height: 28).background(Color.green).cornerRadius(6)
                                    Text("Touch")
                                }
                            }
                            NavigationLink(destination: Text("Detail View")) {
                                HStack {
                                    ZStack {
                                        Image(systemName: "nose.fill").font(.callout)
                                            .foregroundColor(.white)
                                    }.frame(width: 28, height: 28).background(Color.purple).cornerRadius(6)
                                    Text("Smell")
                                }
                            }
                            NavigationLink(destination: Text("Detail View")) {
                                HStack {
                                    ZStack {
                                        Image(systemName: "mouth.fill").font(.callout)
                                            .foregroundColor(.white)
                                    }.frame(width: 28, height: 28).background(Color.red).cornerRadius(6)
                                    Text("Taste")
                                }
                            }
                        }
                        
                        Section {
                            NavigationLink(destination: Text("Detail View")) {
                                HStack {
                                    ZStack {
                                        Image(systemName: "gear").font(.callout)
                                            .foregroundColor(.white)
                                    }.frame(width: 28, height: 28).background(Color.gray).cornerRadius(6)
                                    Text("General")
                                }
                            }
                        }
                    }
                    .navigationBarTitle("Settings")
                    .listStyle(GroupedListStyle())
                }
                .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
