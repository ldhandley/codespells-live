#lang scribble/manual
@require[@for-label[codespells-live
                    racket/base]]

@title{codespells-live}
@author{ThoughtSTEM}

@section{Language for the Twitch Chat}
@defmodule[codespells-live/chat]

@(tt "codespells-live/chat") is the language for interacting
with our Twitch stream
@(link "https://www.twitch.tv/codespells" "here"). Any of
commands below can be run inside the Twitch chat preceded by a
@tt{!!} and minus the outer set of parentheses. (E.g. @tt{!!mini})

@defproc[(mini)
         void?]{
  Spawns a mini of the viewer in the virtual world.
}

@defproc[(color [c color?])
         void?]{
  Changes the color of the Transcendent Being. 
}

@defproc[(say [str string?])
         void?]{
  Changes the text on any sign that the Transcendent Being
 is holding.
}

@defproc[(cheer)
         void?]{
  Creates an explosion particle effect at the location
 of the viewer's mini. Nothing happens if the viewer does
 not have a mini yet.
}

@defproc[(face [f face?])
         void?]{
  Changes the face of the Transcendent Being. 
}

@defproc[(run [id integer?])
         void?]{
  Runs a spell from the spell-sharing server with given id.
}

@section{Language for the Spell Sharing Server}
@defmodule[codespells-live/spell-lang]

@tt{codespells-live/spell-lang} is the extended language that can be used on the Spell Sharing
Server @(link "https://spell-client.vercel.app/" "here").

@defproc[(sleep [s integer?])
         void?]{
  Pauses for a given number of seconds. 
}

@section{Util}
@defmodule[codespells-live/util]

@defproc[(color? [x any/c?])
         boolean?]{
  Returns true if x is in the allowed color list:
  @tt{red}, @tt{orange}, @tt{green}, @tt{blue}.
}

@defproc[(face? [x any/c?])
         boolean?]{
  Returns true if x is in the allowed face list:
  @tt{bernie-sanders}, @tt{doge}, @tt{grumpy-cat},
 @tt{polite-cat}, @tt{sad-pepe}, @tt{shocked-cat},
 @tt{surprised-cat}, @tt{surprised-pikachu}, @tt{troll-face},
 @tt{you-kidding-me}.
}