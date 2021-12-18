module Main exposing (..)

import Browser
import Html exposing (Html, button, div, text, h1, h2)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)

main : Program () Model Msg
main =
  Browser.sandbox { init = init, update = update, view = view }

type alias Model = Int

init : Model
init =
  0

type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1


view : Model -> Html Msg
view model =
    div [] [
        div [ class "u-flex u-justify-center u-items-center h-screen" ]
            [ div [class "hero bg-indigo-600 w-90 h-50 u-justify-center u-items-center" ]
                [ div [ class "hero-body u-flex-column "]
                    [ h1 [ class "headline-1 white" ] [ text "hello world"] 
                    , h2 [ class "font-alt font-light white" ] [ text "this is my elm + cirrus.css starter kit!"]
                    , h1 [ class "headline-1 white" ] [ text (String.fromInt model) ]  
                    , div [ class "u-flex u-justify-space-between w-20"]       
                        [ button [ onClick Decrement ] [ text "- decrement -" ]                  
                        , button [ class "btn-info", onClick Increment ] [ text "+ increment +" ] 
                        ]
                    ]
                ]
            ]
         , div [ class "u-flex u-justify-center u-items-center h-screen" ]
            [ div [class "hero bg-indigo-600 w-90 h-50 u-justify-center u-items-center" ]
                [ div [ class "hero-body u-flex-column "]
                    [ h1 [ class "headline-2 white" ] [ text "empty section"] 
                    
                    ]
                ]
            ]
        , div [ class "u-flex u-justify-center u-items-center h-screen" ]
            [ div [class "hero bg-indigo-600 w-90 h-50 u-justify-center u-items-center" ]
                [ div [ class "hero-body u-flex-column "]
                    [ h1 [ class "headline-2 white" ] [ text "empty section"] 
                    
                    ]
                ]
            ]
    ]