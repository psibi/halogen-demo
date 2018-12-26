module Footer where

import Prelude
import Data.Maybe (Maybe(..))
import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.Properties as HP
import Data.Unit
import Data.Void

data Query a = NoQuery a

footer :: forall m. H.Component HH.HTML Query Unit Void m
footer =
  H.component
    { initialState: const unit
    , render
    , eval
    , receiver: const Nothing
    }
  where
    render :: Unit -> H.ComponentHTML Query
    render state = HH.button [ HP.title "hello world"] [HH.text "ok"]

    eval :: Query ~> H.ComponentDSL Unit Query Void m
    eval = case _ of
      NoQuery next -> pure next
