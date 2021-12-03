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
 //Draw a line, dead centre
//canvas.lineColor = .purple
//canvas.drawLine(from: Point(x: 200, y: 0), to: Point(x: 200, y: 400), lineWidth: 400, capStyle: .butt, dashed: false)
//canvas.drawLine(from: Point(x: 0, y: 200), to: Point(x: 400, y: 200), lineWidth: 400, capStyle: .butt, dashed: false)
//
//canvas.lineColor = .yellow
//canvas.drawLine(from: Point(x: 200, y: 0), to: Point(x: 200, y: 400), lineWidth: 375, capStyle: .butt, dashed: false)
//canvas.drawLine(from: Point(x: 0, y: 200), to: Point(x: 400, y: 200), lineWidth: 375, capStyle: .butt, dashed: false)
//
//canvas.lineColor = .purple
//canvas.drawLine(from: Point(x: 200, y: 0), to: Point(x: 200, y: 400), lineWidth: 350, capStyle: .butt, dashed: false)
//canvas.drawLine(from: Point(x: 0, y: 200), to: Point(x: 400, y: 200), lineWidth: 350, capStyle: .butt, dashed: false)
//
//canvas.lineColor = .red
//canvas.drawLine(from: Point(x: 200, y: 0), to: Point(x: 200, y: 400), lineWidth: 325, capStyle: .butt, dashed: false)
//canvas.drawLine(from: Point(x: 0, y: 200), to: Point(x: 400, y: 200), lineWidth: 325, capStyle: .butt, dashed: false)
//
//canvas.lineColor = .purple
//canvas.drawLine(from: Point(x: 200, y: 0), to: Point(x: 200, y: 400), lineWidth: 300, capStyle: .butt, dashed: false)
//canvas.drawLine(from: Point(x: 0, y: 200), to: Point(x: 400, y: 200), lineWidth: 300, capStyle: .butt, dashed: false)
//
//canvas.lineColor = .yellow
//canvas.drawLine(from: Point(x: 200, y: 0), to: Point(x: 200, y: 400), lineWidth: 275, capStyle: .butt, dashed: false)
//canvas.drawLine(from: Point(x: 0, y: 200), to: Point(x: 400, y: 200), lineWidth: 275, capStyle: .butt, dashed: false)
//
//canvas.lineColor = .purple
//canvas.drawLine(from: Point(x: 200, y: 0), to: Point(x: 200, y: 400), lineWidth: 250, capStyle: .butt, dashed: false)
//canvas.drawLine(from: Point(x: 0, y: 200), to: Point(x: 400, y: 200), lineWidth: 250, capStyle: .butt, dashed: false)
//
//canvas.lineColor = .red
//canvas.drawLine(from: Point(x: 200, y: 0), to: Point(x: 200, y: 400), lineWidth: 225, capStyle: .butt, dashed: false)
//canvas.drawLine(from: Point(x: 0, y: 200), to: Point(x: 400, y: 200), lineWidth: 225, capStyle: .butt, dashed: false)
//
//canvas.lineColor = .purple
//canvas.drawLine(from: Point(x: 200, y: 0), to: Point(x: 200, y: 400), lineWidth: 200, capStyle: .butt, dashed: false)
//canvas.drawLine(from: Point(x: 0, y: 200), to: Point(x: 400, y: 200), lineWidth: 200, capStyle: .butt, dashed: false)




for x in stride(from: 400, through: 50, by: -25){
    if x .isMultiple(of: 50) {
        canvas.lineColor = .purple
    } else if x % 100 == 75 {
        canvas.lineColor = .black
    } else if x % 100 == 25 {
        canvas.lineColor = .white
    }

canvas.drawLine(from: Point(x: 200, y: 0), to: Point(x: 200, y: 400), lineWidth: x, capStyle: .butt, dashed: false)
                canvas.drawLine(from: Point(x: 0, y: 200), to: Point(x: 400, y: 200), lineWidth: x, capStyle: .butt, dashed: false)

}
