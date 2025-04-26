import SpriteKit
import GameplayKit

class GameScene: SKScene {
    private var snake: [SKShapeNode] = []
    private var food: SKShapeNode!
    private var direction: CGVector = CGVector(dx: 10, dy: 0)
    private var gameTimer: Timer?

    override func didMove(to view: SKView) {
        self.backgroundColor = .black
        createSnake()
        spawnFood()
        startGameLoop()
    }

    private func createSnake() {
        let initialPosition = CGPoint(x: frame.midX, y: frame.midY)
        for i in 0..<3 {
            let segment = SKShapeNode(rectOf: CGSize(width: 10, height: 10))
            segment.fillColor = .green
            segment.position = CGPoint(x: initialPosition.x - CGFloat(i * 10), y: initialPosition.y)
            addChild(segment)
            snake.append(segment)
        }
    }

    private func spawnFood() {
        let foodSize = CGSize(width: 10, height: 10)
        food = SKShapeNode(rectOf: foodSize)
        food.fillColor = .red
        food.position = CGPoint(
            x: CGFloat.random(in: 0..<frame.width),
            y: CGFloat.random(in: 0..<frame.height)
        )
        addChild(food)
    }

    private func startGameLoop() {
        gameTimer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            self.updateSnakePosition()
        }
    }

    private func updateSnakePosition() {
        let head = snake.first!
        let newHeadPosition = CGPoint(
            x: head.position.x + direction.dx,
            y: head.position.y + direction.dy
        )

        if newHeadPosition.x < 0 || newHeadPosition.x > frame.width ||
            newHeadPosition.y < 0 || newHeadPosition.y > frame.height {
            gameOver()
            return
        }

        if newHeadPosition == food.position {
            growSnake()
            food.removeFromParent()
            spawnFood()
        }

        for i in (1..<snake.count).reversed() {
            snake[i].position = snake[i - 1].position
        }
        head.position = newHeadPosition
    }

    private func growSnake() {
        let newSegment = SKShapeNode(rectOf: CGSize(width: 10, height: 10))
        newSegment.fillColor = .green
        newSegment.position = snake.last!.position
        addChild(newSegment)
        snake.append(newSegment)
    }

    private func gameOver() {
        gameTimer?.invalidate()
        let gameOverLabel = SKLabelNode(text: "Game Over")
        gameOverLabel.fontSize = 40
        gameOverLabel.fontColor = .white
        gameOverLabel.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(gameOverLabel)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let touchLocation = touch.location(in: self)

        let head = snake.first!
        if abs(touchLocation.x - head.position.x) > abs(touchLocation.y - head.position.y) {
            direction = touchLocation.x > head.position.x ? CGVector(dx: 10, dy: 0) : CGVector(dx: -10, dy: 0)
        } else {
            direction = touchLocation.y > head.position.y ? CGVector(dx: 0, dy: 10) : CGVector(dx: 0, dy: -10)
        }
    }
}