{-
    Copyright 2016, Sjors van Gelderen
-}

import Html exposing (Html, Attribute, button, div, text, img)
import Html.Events exposing (onClick)
import Html.Attributes exposing (style)
import Markdown


-- APPLICATION
main =
    Html.beginnerProgram { model = model, view = view, update = update }


-- STYLES

main_style : Attribute msg
main_style =
    style
    [ ("backgroundColor", "#EFEFEF")
    , ("color", "#293C4C")
    , ("fontFamily", "source sans pro")
    , ("fontSize", "1.2em")
    , ("lineHeight", "1.75em")
    , ("padding", "0")
    , ("margin", "0")
    ]


content_style : Attribute msg
content_style =
    style
    [ ("display", "block")
    , ("max-width", "1024px")
    , ("margin", "0px auto")
    , ("padding", "0px auto")
    ]
    
    
button_style : Attribute msg
button_style =
    style
    [ ("backgroundColor", "#5EB6CE")
    , ("color", "#293C4C")
    , ("border", "none")
    -- , ("borderRadius", "0.2em")
    , ("fontFamily", "source sans pro")
    , ("fontSize", "1.5em")
    , ("padding", "0.25em")
    , ("marginLeft", "10px")
    , ("marginRight", "auto")
    , ("width", "8em")
    ]


-- MODEL

type alias Model = String

model : Model
model =
    home_text


-- UPDATE

type Msg = Home | CV | Personal

update : Msg -> Model -> Model
update msg model =
    case msg of
        Home ->
            home_text
                     
        CV ->
            cv_text
                
        Personal ->
            personal_text

            
-- VIEW

view : Model -> Html Msg
view model =
    div [ main_style ]
        [ div [ content_style ]
              [
               div [] [ Markdown.toHtml [] model ]
              , button [ button_style, onClick Home ] [ text "home" ]
              , button [ button_style, onClick CV ] [ text "curriculum vitae" ]
              , button [ button_style, onClick Personal ] [ text "personal" ]
              ]
        ]


----------------------------------------------------------------
        

-- HOME

home_text = """
# Sjors van Gelderen

***

sjors@musings.eu | +31(0)623177461 | [GitHub](https://github.com/sjorsvangelderen)

***
"""

-- CV

cv_text = """
# Curriculum Vitae

***

## Contact details
Sjors van Gelderen  
Nieuwstraat 10, 3311 XR Dordrecht, The Netherlands  
sjors@musings.eu | +31(0)623177461 | GitHub/sjorsvangelderen | http://sjors.musings.eu/

***

## About me

Computer programmer, currently studying modern functional approaches to low- and high-level programming.  
I aspire to deliver robust and reliable software. My area of expertise is interactive software.  


## Education

2009 - present  
Bachelor of Science - International Game Architecture & Design at NHTV University of Applied Sciences, Breda, The Netherlands
* Intimate knowledge of full game development pipeline
* Area of expertise is in programming interactive software

2003 - 2008  
Senior general secondary education - Stedelijk Dalton Lyceum, Dordrecht, The Netherlands 
    

## Work experience
2016 - present  
Lecturer - Hogeschool Rotterdam
* Teaching courses of software development

2015 - present  
Freelance software developer - Sjors van Gelderen software company
* Freelance programming work for various commissioners

2011 - 2015  
Co-founder, Lead programmer - Shabby Lords
* Released a commercial game
* Released a collection of e-learning software solutions

Early  
Various jobs in sales and support for different employers
* Professional attitude
* Intimate product knowledge
* Polite and helpful communication


## Teamwork
I enjoy working with others.
On numerous occasions I have had the pleasure of training and assisting fellow students.  
Throughout my education, I have been technical lead of various succesful team efforts.  
In addition, I have worked with others on multiple commercial projects.


## Programming languages

Experienced
* C, C++, C#, F#, Python 3

Familiar
* JavaScript + TypeScript, HTML5 + CSS3, TypeScript, Ruby

Elementary
* Rust, Chicken Scheme, Elm
* Java, Ruby, 6502 Assembly
* PHP, MySQL


## Software
Experienced
* GNU+Linux, MacOS, Windows
* Emacs, MonoDevelop + Xamarin, Visual Studio
* Unity3D, Irrlicht

Familiar
* GIMP, Pinta, Unreal Engine 4

Elementary
* Blender, Krita


## Hardware
* Kinect, WiiMote, Raspberry Pi, Arduino, LEAP Motion
* x86 PCs, NES, GB, NDS, Wii, PS1, PS4, PSP, C64, Android devices


## Speech and writing
* Dutch - native, fluent
* English - fluent
* Japanese - elementary


## Interests and activities
* Programming for obsolete devices and architectures
* Working with peers on artistic software projects
* Teaching children programming as a volunteer at the local library
* Socializing with peers
* Weight lifting

***
"""
   

-- PERSONAL

personal_text = """

# About me

***

![Picture of me taken by Leon Glorius at DOOR Dordrecht in 2015](sjors.jpeg)

***

I've always been fascinated with computers and interactive software.  
Together with my dear friend, Remco Willemsen, I spent many days trying
to figure out how this software was made. Using wonderful discs filled
to the brim with illegitimate copies of computer programs, we gained
access to gems like 3D Game Studio A4 and RPG Maker 2000.

My first true programming experience - beyond HTML - was with the marvelous
Sphere RPG Engine; powered by Mozilla's SpiderMonkey JavaScript engine.
I was 13 years old at the time.

***

After graduating from highschool, I immediately applied at NHTV for the
International Game Architecture and Design Bachelor's programme.
There I acquired a formal training in computer game development.
Due to the versatility of the Indie Game Development curriculum,
I'm familiar with the entire pipeline - including technology, design
and art.

***

During the final phase of my education, I did an internship at Tilburg University,
during the course of which I learned about functional programming.
I believe firmly that the powerful ideas involved are necessary for writing
truly excellent software.

I am a strong advocate of open-source software. I wholeheartedly recommend any
software developer to read Eric S. Raymond's 'The Cathedral and the Bazaar' and
Richard M. Stallman's 'Free Software, Free Society'.

When I'm not studying, I like to tinker with older machines. For instance,
I'm writing a book on developing games for the Nintendo Entertainment System
with the 6502 assembly language.

To stay fit and sane, I also lift weights and exercise regularly.

***
"""
