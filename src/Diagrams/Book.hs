module Diagrams.Book
    ( rendered
    , draw
    ) where

import Diagrams.Prelude
import Diagrams.Backend.SVG
import System.Directory

ensureDirExists :: IO ()
ensureDirExists = createDirectoryIfMissing True "diagrams"

rendered :: FilePath -> Diagram B -> IO ()
rendered f d = ensureDirExists >> renderSVG filename (mkWidth 1000) d
    where filename = "diagrams/" ++ f ++ ".svg"

draw :: Diagram B -> IO ()
draw = rendered "tmp"
