//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
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

// Move the origin from the bottom-left corner of the canvas to it's centre point
canvas.translate(to: Point(x: canvas.width / 2,
                           y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)

// back to origin
func goToOrigin() {
    p.goto(dx: Double(p.currentPosition().x) * -1.0, dy: Double(p.currentPosition().y) * -1.0)}
    
//draw centre lines
p.drawTo(dx: 100, dy: 100)
goToOrigin()
p.drawTo(dx: 100, dy: -100)
goToOrigin()
p.drawTo(dx: -100, dy: 100)
goToOrigin()
p.drawTo(dx: -100, dy: -100)
goToOrigin()
p.drawTo(dx: 40, dy: 100)
goToOrigin()
p.drawTo(dx: 100, dy: 60)
goToOrigin()
p.drawTo(dx: -40, dy: -100)
goToOrigin()
p.drawTo(dx: -100, dy: -60)
goToOrigin()
p.drawTo(dx: -100, dy: 60)
p.drawTo(dx: 200, dy: -120)
goToOrigin()
p.drawTo(dx: -40, dy: 100)
p.drawTo(dx: 80, dy: -200)

//outside lines
goToOrigin()
p.goto(dx: -100, dy: -100)
p.drawTo(dx: 0, dy: 200)
p.goto(dx: 200, dy: 0)
p.drawTo(dx: 0, dy: -200)

//draw inside lines
goToOrigin()
p.goto(dx: 40, dy: 100)
p.drawTo(dx: 0, dy: -200)
p.goto(dx: -80, dy: 0)
p.drawTo(dx: 0, dy: 200)
goToOrigin()
p.goto(dx: 40, dy: 60)
p.drawTo(dx: -80, dy: 0)
p.goto(dx: 0, dy: -120)
p.drawTo(dx: 80, dy: 0)
goToOrigin()
p.goto(dx: -40, dy: -100)
p.drawTo(dx: 40, dy: 40)
p.drawTo(dx: 40, dy: -40)
p.goto(dx: 0, dy: 200)
p.drawTo(dx: -40, dy: -40)
p.drawTo(dx: -40, dy: 40)
goToOrigin()
p.goto(dx: -60, dy: -35)
p.drawTo(dx: 0, dy: 70)
p.goto(dx: -20, dy: 10)
p.drawTo(dx: 0, dy: -90)
goToOrigin()
p.goto(dx: 60, dy: 35)
p.drawTo(dx: 0, dy: -70)
p.goto(dx: 20, dy: -10)
p.drawTo(dx: 0, dy: 90)

//draw lines on four corner
goToOrigin()
p.goto(dx: -100, dy: 100)
p.drawTo(dx: 20, dy: 0)
p.drawTo(dx: 40, dy: -40)
goToOrigin()
p.goto(dx: 100, dy: 100)
p.drawTo(dx: -20, dy: 0)
p.drawTo(dx: -40, dy: -40)
goToOrigin()
p.goto(dx: -100, dy: -100)
p.drawTo(dx: 20, dy: 0)
p.drawTo(dx: 40, dy: 40)
goToOrigin()
p.goto(dx: 100, dy: -100)
p.drawTo(dx: -20, dy: 0)
p.drawTo(dx: -40, dy: 40)
//shape outside
goToOrigin()
p.goto(dx: -180, dy: 20)
    func shape1() {
        p.turn(degrees: 30)
        p.addArc(radius: 35, angle: 120)
        p.drawTo(dx: 50, dy: -31)
        p.drawTo(dx: -50, dy: -31)
}
shape1()
goToOrigin()
p.turn(degrees: 210)
p.goto(dx: -180, dy: -80)
shape1()

goToOrigin()
p.goto(dx: 140, dy: 100)

func shape2(){
    p.turn(degrees: 60)
    p.addArc(radius: 45, angle: 120)
    p.drawTo(dx: 19, dy: 38)
    p.drawTo(dx: -18, dy: 38)

}
shape2()
goToOrigin()
p.goto(dx: 140, dy: -20)
p.turn(degrees: 180)
shape2()

//four corner
goToOrigin()
p.goto(dx: 100, dy: 80)
p.drawTo(dx: 60, dy:80 )
p.drawTo(dx: -80, dy: -60)
p.goto(dx: -160, dy: 0)
p.drawTo(dx: -80, dy: 60)
p.drawTo(dx: 60, dy: -80)
p.goto(dx: 0, dy: -160)
p.drawTo(dx: -60, dy: -80)
p.drawTo(dx: 80, dy: 60)
p.goto(dx: 160, dy: 0)
p.drawTo(dx: 80, dy: -60)
p.drawTo(dx: -60, dy: 80)
