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

// Draw an arrow of variable size
func drawArrow(unitLengthOf squareSize: Int, drawingSelf: Bool) {
    
    // Begin drawing an arrow
    if drawingSelf {
        turtle.drawSelf()   // Start
    }
    turtle.penDown()
    turtle.forward(steps: 5 * squareSize)
    turtle.right(by: 90)
    turtle.forward(steps: 1 * squareSize)
    turtle.left(by: 135)
    turtle.forward(steps: Int(2.0 * Double(2).squareRoot() * Double(squareSize)))
    turtle.left(by: 90)
    turtle.forward(steps: Int(2.0 * Double(2).squareRoot() * Double(squareSize)))
    turtle.left(by: 135)
    turtle.forward(steps: 1 * squareSize)
    turtle.right(by: 90)
    turtle.forward(steps: 5 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: 2 * squareSize)
    turtle.left(by: 90)
    if drawingSelf {
        turtle.drawSelf()   // End
    }

}

// Draw a row of arrows
func drawRowOfArrows(count: Int) {
    
    // Use a loop to draw many arrows in a row
    for _ in 1...count {
        
        drawArrow(unitLengthOf: size, drawingSelf: debugEnabled)
        turtle.penUp()
        turtle.forward(steps: 7 * size)

    }

}

// Draw two small arrows next to one another
let size = 4
let debugEnabled = false

turtle.penUp()
turtle.setX(to: 25)
turtle.setY(to: 25)

for _ in 1...2 {
    
    // Draw a row
    turtle.setPenColor(to: .black)
    drawRowOfArrows(count: 8)

    // Get turned around and in position to draw a new row
    turtle.drawSelf()
    turtle.left(by: 90)
    turtle.penUp()
    turtle.forward(steps: 5 * size)
    turtle.left(by: 90)
    turtle.forward(steps: 2 * size)
    turtle.drawSelf()
    turtle.penUp()

    // Draw a new row
    turtle.setPenColor(to: .red)
    turtle.penUp()
    turtle.forward(steps: 8 * 7 * size)

    // Get turned around and in position to draw a new row
    turtle.drawSelf()
    turtle.right(by: 180)
    turtle.forward(steps: 2 * size)
    turtle.drawSelf()
    turtle.penUp()

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
