//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 300
let preferredHeight = 300
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Teach the turtle how to move from the origin (bottom-left corner) to the centre of the canvas
func turtleToMiddleOfCanvas() {
    
    // Move turtle to middle of bottom edge of canvas
    turtle.penUp()
    turtle.forward(steps: canvas.width / 2)

    // Move turtle to dead centre of canvas
    turtle.left(by: 90)
    turtle.penUp()
    turtle.forward(steps: canvas.height / 2)

    // Turn the turtle to the right
    turtle.right(by: 90)
}


// Actually get the turtle to move to the centre of the canvas
turtleToMiddleOfCanvas()

// Begin drawing an arrow
let squareSize = 10
turtle.drawSelf()   // Start
turtle.penDown()
turtle.forward(steps: 5 * squareSize)
turtle.right(by: 90)
turtle.forward(steps: 2 * squareSize)
turtle.left(by: 135)
turtle.forward(steps: Int(3.0 * Double(2).squareRoot() * Double(squareSize)))
turtle.left(by: 90)
turtle.forward(steps: Int(3.0 * Double(2).squareRoot() * Double(squareSize)))
turtle.left(by: 135)
turtle.forward(steps: 2 * squareSize)
turtle.right(by: 90)
turtle.forward(steps: 5 * squareSize)
turtle.left(by: 90)
turtle.forward(steps: 2 * squareSize)
turtle.left(by: 90)
turtle.drawSelf()   // End



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
