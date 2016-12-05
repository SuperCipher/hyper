module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)
import Hyper.HTML.DSL (h1, html, text)
import Hyper.Server (Port(..), runServer)

main :: forall e. Eff ( console :: CONSOLE | e ) Unit                
main = runServer (Port 3000) (html (h1 (text "Hello, Hyper!")))



