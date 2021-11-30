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
import CoreFoundation
import Darwin

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

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
// all colors
let green = Color(hue: 99, saturation: 54, brightness: 72, alpha: 100)
let grey = Color(hue: 84, saturation: 4, brightness: 88, alpha: 100)


//draw background from 0,0 - 400-400
canvas.lineColor = .black
canvas.highPerformance = true
for background in stride(from: 0, through: 400, by: 1){
    canvas.drawLine(from: Point(x: background, y: 0), to: Point(x: background, y: 400))
}
canvas.highPerformance = false

//white circles
canvas.fillColor = grey
for i in stride(from: 0, through: 400, by: 40){
    for u in stride(from: 0, through: 400, by: 40){
    if i + u <= 400{
        canvas.drawEllipse(at: Point(x: u, y: i), width: 35, height: 35)
    }}
}


//circles
canvas.fillColor = green
for i in stride(from: 0, through: 400, by: 40){
    for u in stride(from: 0, through: 400, by: 40){
        if i + u > 400 || u == 0 || i == 0{
        canvas.drawEllipse(at: Point(x: i, y: u), width: 35, height: 35)
        }}
                            
}
canvas.highPerformance = true
//background 2
canvas.lineColor = green
for bg in stride(from: 0, through: 400, by: 1){
    canvas.drawLine(from: Point(x: bg, y: 400), to: Point(x: bg, y: 600))
}
canvas.highPerformance = false

canvas.drawText(message: "pixies", at: Point(x: 20, y: 420), size: 65, kerning: 0)
canvas.drawText(message: "9 pm over 21", at: Point(x: 20, y: 515), size: 10, kerning: 0)
canvas.drawText(message: "december 13 1986", at: Point(x: 20, y: 530), size: 10, kerning: 0)
canvas.drawText(message: "saturday", at: Point(x: 20, y: 545), size: 10, kerning: 0)
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
