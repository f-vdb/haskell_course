

data Shape = Circle Float Float Float | Retangle Float Float Float Float
    deriving (Show)

area :: Shape -> Float
area (Circle _ _ r) = pi * r^2
area (Retangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)



-- Type Synonyms
type Radius = Float
data Point = Point Float Float deriving (Show)
data 'Shape = 'Circle Point Float | 'Retangle Point Point
   deriving (Show)

'area :: 'Shape -> Float
'area ('Circle _ _ x) = pi * r^2
'area ('Retangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 -y 1)
