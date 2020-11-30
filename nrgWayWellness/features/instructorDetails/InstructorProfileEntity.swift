//
//  InstructorProfileEntity.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/7/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

struct InstructorProfileInstructorVideo : Identifiable {
    var id : Int
    var name : String
    var image : String
    var description : String
}

var instructorProfileEntityMock =
    InstructorProfileInstructorVideo(id: 0,
                            name: "Kane",
                            image: "28",
                            description: "In the code, we use a RoundedRectangle and its stroke modifier to create the rounded border. You can modify the color and line width to adjust its appearance. To create a button with different styles, you can just use another shape object to draw the border. Say, you can replace the RoundedRectangle with Capsule to create a border like this:")
     

