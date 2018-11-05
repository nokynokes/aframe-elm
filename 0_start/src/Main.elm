module Main exposing (..)

import Html exposing (..)
import Html.Lazy exposing (lazy)
import Html.Events exposing (onClick)
import Color exposing (..)
import AFrame exposing (..)
import AFrame.Primitives exposing (sphere, box, sky)
import AFrame.Primitives.Attributes exposing (..)
import AFrame.Primitives.Cursor exposing (..)
import AFrame.Primitives.Camera exposing (..)
import AFrame.Animations exposing (..)


type alias Model =
    Bool


type Msg
    = Clicked



init : ( Model, Cmd Msg )
init =
    (True, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Clicked ->
          (not model) ! []


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


view : Model -> Html Msg
view m =
    scene []
      [ camera [ ] [ cursor [color black] [] ]
      , sky [ shader "balliedscope"] []
      ]









main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , subscriptions = subscriptions
        , update = update
        }
