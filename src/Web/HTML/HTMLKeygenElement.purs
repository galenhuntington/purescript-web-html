module Web.HTML.HTMLKeygenElement
  ( HTMLKeygenElement
  , toHTMLElement
  , read
  , autofocus
  , setAutofocus
  , challenge
  , setChallenge
  , disabled
  , setDisabled
  , form
  , keytype
  , setKeytype
  , name
  , setName
  , type_
  , willValidate
  , validity
  , validationMessage
  , checkValidity
  , setCustomValidity
  , labels
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.NodeList (NodeList)
import Web.HTML.HTMLElement (HTMLElement)
import Web.HTML.HTMLFormElement (HTMLFormElement)
import Web.HTML.ValidityState (ValidityState)

foreign import data HTMLKeygenElement :: Type

toHTMLElement :: HTMLKeygenElement -> HTMLElement
toHTMLElement = unsafeCoerce

read :: Foreign -> F HTMLKeygenElement
read = unsafeReadTagged "HTMLKeygenElement"

foreign import autofocus :: HTMLKeygenElement -> Effect Boolean
foreign import setAutofocus :: Boolean -> HTMLKeygenElement -> Effect Unit

foreign import challenge :: HTMLKeygenElement -> Effect String
foreign import setChallenge :: String -> HTMLKeygenElement -> Effect Unit

foreign import disabled :: HTMLKeygenElement -> Effect Boolean
foreign import setDisabled :: Boolean -> HTMLKeygenElement -> Effect Unit

form :: HTMLKeygenElement -> Effect (Maybe HTMLFormElement)
form = map toMaybe <<< _form

foreign import _form :: HTMLKeygenElement -> Effect (Nullable HTMLFormElement)

foreign import keytype :: HTMLKeygenElement -> Effect String
foreign import setKeytype :: String -> HTMLKeygenElement -> Effect Unit

foreign import name :: HTMLKeygenElement -> Effect String
foreign import setName :: String -> HTMLKeygenElement -> Effect Unit

foreign import type_ :: HTMLKeygenElement -> Effect String

foreign import willValidate :: HTMLKeygenElement -> Effect Boolean

foreign import validity :: HTMLKeygenElement -> Effect ValidityState

foreign import validationMessage :: HTMLKeygenElement -> Effect String

foreign import checkValidity :: HTMLKeygenElement -> Effect Boolean

foreign import setCustomValidity :: String -> HTMLKeygenElement -> Effect Unit

foreign import labels :: HTMLKeygenElement -> Effect NodeList