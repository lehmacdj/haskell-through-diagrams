module Diagrams.Book.Chapter3 where

import Diagrams.Book.Prelude
import Diagrams.Prelude

-- Hello! Welcome to the solutions to exercises. Don't look at them too much. It
-- is important to actually attempt to build stuff in order to become a better
-- programmer. Ocassionally I will also explain what is going on my solutions
-- because they use more features than you probably know sometimes (but only
-- within reason). Examples will always be a "Diagram" (or as you can see in the
-- type specification they are all `Diagram B`s. To view the diagram run
-- `draw <exercise-name>` in GHCi. If I provide multiple solutions to the same
-- exercise I append something to the end of the exercise from a `'` for a small
-- modification to `_wrong` for a variant that doesn't produce the correct
-- result.

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
