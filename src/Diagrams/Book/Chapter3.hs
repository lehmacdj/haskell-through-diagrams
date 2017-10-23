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
-- exercise I follow the other ones by a `'`.

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
