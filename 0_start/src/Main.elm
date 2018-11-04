module Main exposing (..)

import Html exposing (..)
import Color exposing (red)
import AFrame exposing (..)
import AFrame.Primitives exposing (..)
import AFrame.Primitives.Attributes exposing (..)


type alias Model =
    Int


type Msg
    = NoOp



init : ( Model, Cmd Msg )
init =
    ( 1, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model ! []


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


view : Model -> Html Msg
view model =
    scene []
          [
               box
                [ color red
                , depth 2
                , height 4.0
                , width 2.0
                , scale 1.0 1.0 1.0
                , position 0 0 -5
                ] []


          ]



main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , subscriptions = subscriptions
        , update = update
        }
