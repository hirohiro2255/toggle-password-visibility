module Main exposing (main)

import Browser
import Html exposing (Html, button, div, input, label, p, text)
import Html.Attributes exposing (for, id, name, type_)
import Html.Events exposing (onClick)



-- MAIN


main =
    Browser.sandbox { init = init, view = view, update = update }



-- MODEL


type alias Model =
    String


init : Model
init =
    "password"



-- VIEW


view : Model -> Html Msg
view model =
    Html.form []
        [ div []
            [ label [ for "username" ] [ text "Username" ]
            , input [ type_ "text", name "username", id "username" ] []
            ]
        , div []
            [ label [ for "password" ] [ text "Password" ]
            , input [ type_ model, name "password", id "password" ] []
            ]
        , div []
            [ label [ for "show-password" ]
                [ input [ type_ "checkbox", name "show-passwords", id "show-password", onClick Checked ] []
                , text "Show password"
                ]
            ]
        , p []
            [ button [ type_ "submit" ] [ text "Log In" ]
            ]
        ]



-- UPDATE


type Msg
    = Checked


update : Msg -> Model -> Model
update msg model =
    case msg of
        Checked ->
            if model == "password" then
                "text"

            else
                "password"
