module Diagrams.Book.Chapter4 where

import Diagrams.Book.Prelude
import Diagrams.Prelude

import Data.List (intersperse)

ch4LinkedList = connects $ hcat $ intersperse (strut 1) $ map c ["1", "2", "3"]
   where
      c l = (circle 1 <> text l) # named l
      connects = connectOutside "1" "2" . connectOutside "2" "3"
