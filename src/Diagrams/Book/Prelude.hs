module Diagrams.Book.Prelude
    ( rendered
    ) where

import System.Directory
import Diagrams.Prelude
import Diagrams.Backend.SVG

ensureDirExists :: IO ()
ensureDirExists = createDirectoryIfMissing True "diagrams"

rendered :: FilePath -> Diagram B -> IO ()
rendered f d = ensureDirExists >> renderSVG filename (mkWidth 400) d
    where filename = "diagrams/" ++ f ++ ".svg"
