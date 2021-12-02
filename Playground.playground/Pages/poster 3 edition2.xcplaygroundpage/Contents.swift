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
//colors
let orange = Color(hue: 15, saturation: 81, brightness: 88, alpha: 100)
let yellow = Color(hue: 46, saturation: 71, brightness: 97, alpha: 100)
let grey = Color(hue: 78, saturation: 4, brightness: 88, alpha: 100)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)

//background
canvas.fillColor = orange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// draw triangles with yellow and grey
for x in stride(from: 0, through: 400, by: 45){
    for y in stride(from: 200, through: 600, by: 45){
        if y - x <= 200{
            canvas.fillColor = yellow
            
        }else{
            canvas.fillColor = grey
        }
        var triangle: [Point] = []
        triangle.append(Point(x: x, y: y))
        triangle.append(Point(x: x+45, y: y))
        triangle.append(Point(x: x+45, y: y+45))
        canvas.drawCustomShape(with: triangle)
        
    }
}

//draw text
canvas.textColor = grey
canvas.drawText(message: "talking heads", at: Point(x: 25, y: 150), size: 30, kerning: 0)
canvas.drawText(message: "september 12, 13, 14, 1975", at: Point(x: 25, y: 25), size: 8, kerning: 0)
canvas.drawText(message: "friday, saturday, sunday", at: Point(x: 25, y: 40), size: 8, kerning: 0)
canvas.drawText(message: "315 bowery, newyork city", at: Point(x: 150, y: 25), size: 8, kerning: 0)
canvas.drawText(message: "at cbgb and omfug", at: Point(x: 150, y: 40), size: 8, kerning: 0)
canvas.drawText(message: "from brooklyn, the shirts", at: Point(x: 275, y: 25), size: 8, kerning: 0)
canvas.drawText(message: "also appearing:", at: Point(x: 275, y: 40), size: 8, kerning: 0)
