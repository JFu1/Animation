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

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
//add the ability to draw a tilted rectangle to the canvs structure.
extension Canvas {
    func drawtiltedrectangle(xPosition: Int, yPosition: Int) {
        var rectangle: [Point] = []
        rectangle.append(Point(x: xPosition, y: yPosition+30))
        rectangle.append(Point(x: xPosition+20, y: yPosition+50))
        rectangle.append(Point(x: xPosition+50, y: yPosition+20))
        rectangle.append(Point(x: xPosition+30, y: yPosition))
        canvas.drawCustomShape(with: rectangle)
    }
}

// start righting
canvas.drawShapesWithFill = true

// custom shape with absolute co-ordinates
// make a list of vertices
var trianglevertices: [Point] = []          //empty list of point instances
trianglevertices.append(Point(x: 0, y: 50))
trianglevertices.append(Point(x: 50, y: 50))
trianglevertices.append(Point(x: 25, y: 60))
// tell the canvas to draw the triangle
canvas.drawCustomShape(with: trianglevertices)







for xposition in stride(from: 0, through: 350, by: 50){
  
    for yposition in stride(from: 0, through: 550, by: 50){
        
        //canvas draw anchor
        canvas.fillColor = .red
        canvas.drawEllipse(at: Point(x: xposition, y: yposition), width: 5, height: 5)
    // tilted rectangle
        canvas.fillColor = .blue

        canvas.drawtiltedrectangle(xPosition: xposition, yPosition: yposition)
        
    }
    
    
}


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
