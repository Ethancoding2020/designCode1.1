//
//  CourseDetail.swift
//  designCode1.1
//
//  Created by Ethan on 2020-12-06.
//

import SwiftUI

struct CourseDetail: View {
    var course: Course
    @Binding var show: Bool
    @Binding var active: Bool
    @Binding var activeIndex: Int
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    HStack(alignment: .top) {
                        VStack(alignment: .leading, spacing: 8.0) {
                            Text(course.title)
                                .font(.system(size: 24, weight: .bold))
                            Text(course.subtitle)
                        }
                        Spacer()
                        ZStack {
                            Image(uiImage: course.logo)
                                .opacity(show ? 0 : 1)
                            
                            Image(systemName: "xmark")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.white)
                        }
                        .frame(width: 36, height: 36)
                        .background(Color.black)
                        .clipShape(Circle())
                        .onTapGesture {
                            self.show = false
                            self.active = false
                            self.activeIndex = -1
                        }
                    }
                    Spacer()
                    Image(uiImage: course.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                        .frame(height: 140, alignment: .top)
                }
                .padding(show ? 30 : 20)
                .padding(.top, show ? 30 : 0)
        //        .frame(width: show ? screen.width : screen.width - 60, height: show ? screen.height: 280)
                .frame(maxWidth: show ? .infinity : screen.width - 70, maxHeight: show ? 460 : 280)
                .background(Color(course.color))
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: Color(course.color).opacity(0.3), radius: 20, x: 0, y: 20)
                
                VStack(alignment: .leading, spacing: 30.0) {
                    Text("Take your SwiftUI app to the App Store with advanced techniques like API data, packages and CMS.")
                    
                    Text("About this course")
                        .font(.title).bold()
                    
                    Text("This course is unlike any other. We care about design and want to make sure that you get better at it in the process. It was written for disigners and developers who are passionate about collaborating and building real apps for   iOS and macOS. While it's not one codebase for all apps, you learn once and can apply the techniques and controls to all platfroms with increadible quality, consistncy and performence. It's begginer-friendly, but it's also packed with design tricks and efficient workflows for building great user interfaces and interactions.")
                    
                    Text("Minimal coding experience required, such as in HTML and CSS. Please note that Xcode 11 and Catalina also BigSur are a lot friendlier! I added a bunch of troubleshoots at the end of this page to help you get out of this thing.")
                }
                .padding(30)
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct CourseDetail_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetail(course: courseData2[0], show: .constant(true), active: .constant(true), activeIndex: .constant(-1))
    }
}
