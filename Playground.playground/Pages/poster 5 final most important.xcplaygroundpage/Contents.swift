//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)
canvas.lineColor = .black
/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */
//all spine main bone.
for y in stride(from: 570, through: 150, by: -100){
    for x in stride(from: 50, through: 350, by: 100){
        
        canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x, y: y-50), lineWidth: 13, capStyle: .round, dashed: false)
    }
}

//left side spine bone
for i in stride(from: 35, through: 375, by: 100){
    canvas.drawLine(from: Point(x: i, y: 555), to: Point(x: i+15, y: 565), lineWidth: 5, capStyle: .round, dashed: false)
    canvas.drawLine(from: Point(x: i, y: 545), to: Point(x: i+15, y: 555), lineWidth: 5, capStyle: .round, dashed: false)
    canvas.drawLine(from: Point(x: i, y: 535), to: Point(x: i+15, y: 545), lineWidth: 5, capStyle: .round, dashed: false)
    canvas.drawLine(from: Point(x: i, y: 525), to: Point(x: i+15, y: 535), lineWidth: 5, capStyle: .round, dashed: false)
}



//right side spine bone.
for u in stride(from: 50, through: 375, by: 100){
    canvas.drawLine(from: Point(x: u, y: 565), to: Point(x: u+15, y: 555), lineWidth: 5, capStyle: .round, dashed: false)
    canvas.drawLine(from: Point(x: u, y: 555), to: Point(x: u+15, y: 545), lineWidth: 5, capStyle: .round, dashed: false)
    canvas.drawLine(from: Point(x: u, y: 545), to: Point(x: u+15, y: 535), lineWidth: 5, capStyle: .round, dashed: false)
    canvas.drawLine(from: Point(x: u, y: 535), to: Point(x: u+15, y: 525), lineWidth: 5, capStyle: .round, dashed: false)
    
}

for p in stride(from: 460, through: 150, by: -100){
    for t in stride(from: 30, through: 375, by: 100){
        if p>400{
            
            canvas.drawLine(from: Point(x: t, y: p), to: Point(x: t+40, y: p), lineWidth: 10, capStyle: .round, dashed: false)
            canvas.drawLine(from: Point(x: t, y: p-15), to: Point(x: t+40, y: p-15), lineWidth: 10, capStyle: .round, dashed: false)
            canvas.drawLine(from: Point(x: t, y: p-30), to: Point(x: t+40, y: p-30), lineWidth: 10, capStyle: .round, dashed: false)
            
        } else {
            canvas.drawLine(from: Point(x: t, y: p-5), to: Point(x: t+40, y: p-5), lineWidth: 15, capStyle: .round, dashed: false)
        }
        
        
    
    }
}























//background
canvas.drawRectangle(at: Point(x: 0, y: 200), width: 400, height: 200)

/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")
 
 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
