import Browser
import Html.Attributes exposing (..)
import Html exposing (..)

main = 
    Browser.sandbox {init=initCard, update=update, view=view }

--models
type alias Card = 
    { title: String,
      image: String
    }

type Msg = NoOp

update: Msg -> Card -> Card
update msg card=
    card

initCard : Card
initCard = 
    { title= "Strawberry Claws",
      image= "https://img.crocdn.co.uk/images/products2/pl/20/00/00/89/pl2000008912.jpg?width=940&height=940"  
    }

--update

view: Card -> Html Msg
view card = 
    div []
    [ img [src card.image][]
    ]


