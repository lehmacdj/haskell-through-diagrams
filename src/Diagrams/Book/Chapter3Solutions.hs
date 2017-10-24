module Diagrams.Book.Chapter3Solutions where

import Diagrams.Book.Prelude
import Diagrams.Prelude

-- Hello! Welcome to the solutions to exercises. Don't look at them too much. It
-- is important to actually attempt to build stuff in order to become a better
-- programmer. Ocassionally I will also explain what is going on my solutions
-- because they use more features than you probably know sometimes (but only
-- within reason). To view the diagram run `draw <exercise-name>` in GHCi. If I
-- provide multiple solutions to the same exercise I append something to the
-- end of the exercise from a `'` for a small modification to `_wrong` for a
-- variant that doesn't produce the correct result.

-- I define t then combine them together twice.
-- In GHCi you could have done the same thing with:
--
-- λ> let t = triangle 1 # lc black # fc blue
-- λ> draw $ translate (r2 (0.5, 0)) t === (t ||| t)
--
-- `where` is just the same as `let` except it lets you put the definition after
-- the place where you use it.
ch3ex1 = translate (r2 (0.5, 0)) t === (t ||| t) where
    t = triangle 1 # lc black # fc blue

-- You could have also done this exercise using `centerX`.
ch3ex1' = translate t === (t ||| t) # centerX where
    t = triangle 1 # lc black # fc blue

-- If you want to you can also position the parts of your code like the diagram
-- you are trying to draw. Formatting is fairly flexible, you just need to make
-- sure that each logically new thing is indented to a new level, it is fickle
-- and has terrible error messages though.
ch3ex1_formatted =     t
                      ===
                   (t ||| t) # centerX
   where t = triangle 1 # lc black # fc blue

-- Note the parenthesis are actually necessary here. If you don't include them
-- you will end up with two triangles above one triangle.
ch3ex1_wrong = t === t ||| t where
    t = triangle 1 # lc black # fc blue

-- First we create the circle, then the stem, then we align the origins to the
-- top and bottom, before combining the two diagrams.
ch3ex2 = a <> s where
   a = circle 1 # fc red # alignT
   s = rect 0.1 0.2 # fc saddlebrown # alignB

-- We create a hexagon and rotate it 30 degrees. Next we scale it along the X
-- axis then, show its origin.
-- This is mostly a stepping stone for creating the next exercise.
ch3ex3 = hexagon 0.2 # rotate (30 @@ deg)
                     # fc green
                     # scaleX 0.5
                     # alignB
                     # showOrigin

-- We modify the leaf from the previous exercise by rotating it and then add
-- it to the the apple we built in exercise 2.
-- Notice that, the origin stays in the same place on rotating allowing us to
-- have a nice origin for combining the leaves with the rest of the apple.
ch3ex4 = l1 <> ch3ex2 <> l2 where
   l = hexagon 0.2 # rotate (30 @@ deg) # scaleX 0.5 # fc green # alignB
   l1 = l # rotateBy 0.2
   l2 = l # rotateBy (-0.1)

ch3ex5 = undefined
