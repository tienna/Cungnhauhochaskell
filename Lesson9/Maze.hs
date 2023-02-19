-- Step 1
data Move = GoForward | GoLeft | GoRight

data Maze = FoundExit | HitWall | Passage Maze Maze Maze deriving (Show)

-- Step 2
move :: Maze -> Move -> Maze
move HitWall _ = HitWall
move FoundExit _ = FoundExit
move (Passage x _ _) GoLeft = x
move (Passage _ x _) GoForward = x
move (Passage _ _ x) GoRight = x

-- Step 3
testMaze :: Maze
testMaze = Passage HitWall (Passage FoundExit HitWall HitWall) (Passage HitWall (Passage HitWall HitWall HitWall) HitWall)

-- Step 4
solveMaze' :: Maze -> [Move] -> Maze
solveMaze' = foldl move

-- Step 5
showCurrentChoice :: Maze -> String
showCurrentChoice HitWall = "You've hit a wall!"
showCurrentChoice FoundExit = "YOU'VE FOUND THE EXIT!!"
showCurrentChoice _ = "You're still inside the maze. Choose a path, brave adventurer: GoLeft, GoRight, or GoForward."

-- Step 6
solveMaze :: Maze -> [Move] -> String
solveMaze l m = showCurrentChoice $ foldl move l m