module Main exposing (main)

import Html exposing (button, div, input, label, p, text)
import Html.Attributes exposing (..)


view model =
    Html.form []
        [ div []
            [ label [ for "username" ] [ text "Username" ]
            , input [ type_ "text", name "username", id "username" ] []
            ]
        , div []
            [ label [ for "password" ] [ text "Password" ]
            , input [ type_ "password", name "password", id "password" ] []
            ]
        , div []
            [ label [ for "show-password" ]
                [ input [ type_ "checkbox", name "show-passwords", id "show-password" ] []
                , text "Show password"
                ]
            ]
        , p []
            [ button [ type_ "submit" ] [ text "Log In" ]
            ]
        ]


main =
    view "no model yet"
