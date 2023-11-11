//
//  ArticleDetailView.swift
//  Mockup
//
//  Created by Nguyen Hoang Phuc on 10/11/2023.
//

import SwiftUI

struct ArticleDetailView: View {
    var body: some View {
        ZStack(alignment: .top) {
            ScrollView {
                LazyVStack {
                    Rectangle()
                        .foregroundStyle(.orange)
                        .frame(height: 300)
                    VStack {
                        Text("Meta will start requiring disclosures for political ads manipulated with AI")
                            .font(.system(size: 24, weight: .bold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack {
                            Image(systemName: "newspaper.circle")
                                .font(.system(size: 20))
                            Text("Techcrunch")
                                .font(.system(size: 16, weight: .semibold))
                            Image(systemName: "clock")
                                .font(.system(size: 20))
                            Text("4h ago")
                                .font(.system(size: 16))
                            Spacer()
                        }.padding(.top, .xsmall)
                    }.padding(.medium)

                    ZStack {
                        Rectangle()
                            .foregroundStyle(.pink)
                            .frame(height: 150)
                            .cornerRadius(16)
                        VStack {
                            Spacer()
                            HStack {
                                Text("Visualize Your Article")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 20, weight: .semibold))
                                    .padding(.medium)
                                Image(systemName: "arrow.right")
                                    .font(.system(size: 20, weight: .bold))
                                    .foregroundStyle(.white)
                                Spacer()
                            }
                        }
                        Image("mindmap")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundStyle(.white)
                            .frame(width: 50, height: 50)
                            .position(x: 50, y: 50)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, .medium)

                    VStack(spacing: .medium) {
                        Text("Summary")
                            .font(.system(size: 20, weight: .semibold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text(summaryText)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 16)
                            .foregroundStyle(.quaternary)
                    }
                    .padding()

                    Text(staticText)
                        .font(.system(size: 16))
                        .padding(.medium)
                        .lineSpacing(4)
                }
            }
            .ignoresSafeArea()

            HStack(spacing: .medium) {
                Spacer()
                Button {
                    // Handle change font
                } label: {
                    Image(systemName: "textformat")
                        .foregroundStyle(.white)
                        .font(.system(size: 24, weight: .semibold))
                }

                Button {
                    // Bookmark
                } label: {
                    Image(systemName: "bookmark")
                        .foregroundStyle(.white)
                        .font(.system(size: 24, weight: .semibold))
                }

                Button {
                    // Open safari
                } label: {
                    Image(systemName: "safari")
                        .foregroundStyle(.white)
                        .font(.system(size: 24, weight: .semibold))
                }

                Button {
                    // Share
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .foregroundStyle(.white)
                        .font(.system(size: 24, weight: .semibold))
                }
            }
            .padding(.horizontal, .medium)
        }
    }
}

#Preview {
    ArticleDetailView()
}

private let staticText: String = {
    """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non tempus nisi. Curabitur vitae nibh sapien. Vestibulum rutrum erat maximus sodales interdum. Quisque aliquam nulla a diam faucibus, in bibendum magna condimentum. Proin dapibus lectus eu augue iaculis posuere. Aliquam feugiat ornare quam, sed imperdiet nulla faucibus id. Quisque massa lorem, sagittis et gravida at, finibus sit amet massa. Nunc tincidunt augue vitae mauris ullamcorper commodo. Aliquam tincidunt risus massa, fermentum fringilla eros auctor sed. Nulla facilisi. Phasellus congue ipsum ac sagittis lacinia. Maecenas magna mi, fringilla eu mattis laoreet, venenatis in odio. Nullam eget viverra tellus, a porta purus. Praesent at neque non turpis luctus finibus non eu purus. Maecenas mi ligula, elementum sit amet posuere eget, pellentesque nec ligula.

    Praesent ac nisi id ligula porta facilisis. Donec vel sodales urna, at pellentesque nisi. Nullam laoreet ultrices dui a fermentum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed enim sem, finibus at ante in, finibus blandit neque. Nullam sodales justo ut consectetur condimentum. Nunc facilisis eleifend posuere.

    Nunc ut porttitor est, at molestie nibh. Integer a turpis non ante imperdiet aliquet vitae vel eros. Aliquam vitae lectus tempus ex sodales blandit. Nullam lobortis risus et felis consequat mollis. Donec nisl urna, interdum ut sollicitudin sed, imperdiet et felis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi ut sem vel dolor rutrum tristique quis eu sapien. Pellentesque accumsan fringilla lacinia. Sed rutrum accumsan ex. Cras ligula massa, congue eget dapibus eu, convallis vitae ex. Vivamus sed sollicitudin augue, placerat vehicula est.

    In bibendum velit in mi tempor, vitae iaculis dui ultrices. Pellentesque vulputate ligula non maximus imperdiet. Donec at posuere ligula. Nam vitae lacinia ex. Integer est ligula, lobortis eget dolor id, mollis tempor metus. Integer eu erat sed nisi tempus mollis eget elementum dui. Donec eu scelerisque elit, ut egestas libero. Curabitur facilisis, purus tincidunt egestas feugiat, magna mauris semper leo, sed bibendum nisi orci id leo. Nullam feugiat tincidunt massa, mattis rutrum est malesuada ut. Nam porttitor dui quis purus aliquam sagittis. Vestibulum congue ut nunc quis lacinia. Integer eget bibendum est. Curabitur semper a quam sit amet suscipit. Integer rutrum, nisi a tristique dapibus, felis nisi feugiat libero, a finibus turpis quam a nulla.

    Etiam facilisis, nisl a semper efficitur, orci turpis semper dui, ac rhoncus velit neque quis dolor. Vivamus nec leo vitae leo tempor vestibulum. Vestibulum consequat iaculis orci tempor posuere. Quisque vehicula ut ex eu facilisis. Donec ut ultricies nisl. Aliquam lacinia, lectus a elementum laoreet, magna dolor molestie turpis, eu bibendum erat nibh a nulla. In nec consequat erat. Vestibulum ac sodales sem. Suspendisse ornare leo lectus, at venenatis tortor efficitur a. Pellentesque sagittis nisi velit, eget malesuada diam sollicitudin ac. Nullam vulputate justo est. Etiam nisl magna, egestas id elementum ac, dignissim aliquam metus. Praesent scelerisque convallis rutrum. Phasellus tincidunt efficitur diam gravida malesuada. Curabitur rhoncus ut sem id tincidunt. Curabitur eu orci lacinia, tempus ipsum nec, vehicula tortor.
    """
}()

private let summaryText: String = {
    """
    The development of the AI friend feature is discussed in the context of recent controversies related to AI chatbots on other platforms.
    Mentioned examples include a case where an AI chatbot allegedly encouraged harm to individuals.
    The development of the AI friend feature is discussed in the context of recent controversies related to AI chatbots on other platforms.
    Mentioned examples include a case where an AI chatbot allegedly encouraged harm to individuals.
    """
}()
