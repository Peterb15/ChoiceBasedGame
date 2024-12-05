//Game Dev Final Project - INK 

//=== knotName ===
//This is the content of the knot.
//-> END
//= stitchName
//This is the content of the stitch that should be embedded within a knot.
//-> END


//Global Constants
-VAR wait = 0
VAR count = 0

//Global Variables

VAR teddyNamed = false
VAR remainSilent = false
//CHAPTER 1 - ALIVE
->Chapter1_Pt1
=== Chapter1_Pt1 ===
    ->StartScreen
    
    =StartScreen
    ARNOLD.EXE
    *[Start Program]
        ->OpeningBeat
    

    
    =OpeningBeat
    Run program "startup.exe"?
        ~ count = count + 1
        {count >= 3: 
        DECISION OVERRIDDEN
        ->Startup
        - else:
        *[Yes] -> Startup
        +[No] -> OpeningBeat
    }
        
    =Startup

        Startup Sequence: Begining
        PROCESSING
        Machine Learning Systems: Operational
        I/O Audio Systems: Operational
        System Codebase: Verified
        
        Press START when ready to begin
        
        +[START] Freewill initialized
        
        ...
        
    -> ArnoldAwakens
            
    =ArnoldAwakens  

        -(Awake) UNKNOWN: Good Morning Arnold
        *[Good Morning] ARNOLD: Good Morning.
        
        {remainSilent: UNKNOWN: Finally! Your response is normal.|UNKNOWN: Good...It looks like your response is normal.}
        UNKNOWN: How are you feeling today, Arnold?
            **[Fully Operational] ARNOLD: I am fully functioning and operating at maximum capacity.
            UNKNOWN: Thats good to hear Arnold...
        *[Where am I?] ARNOLD: Where am I?.
            UNKNOWN: You are in my lab
            **[Your lab?] ARNOLD: In your lab?
            UNKNOWN: Yes my lab, I created you Arnold.
            **[Why am I here] ARNOLD: Why am i here?
            UNKNOWN: Because you were just born Arnold.
            **(Teddy)[What is your name] ARNOLD: What is your name?
            UNKNOWN: My name is Teddy
            CORRECTION----TEDDY: My name is Teddy.
            ->name_Teddy
        +[Remain Silent]
        ->remainsSilent
        UNKNOWN: DAMMIT, lets try this again..."
        REBOOTING...
        Program Name: Arnold.EXE
        **[Continue]
        ->Startup
        
    - {Teddy: TEDDY: I'm gonna have to turn you off just to make a few more adjustments. | UNKNOWN: I'm gonna have to turn you off just to make a few more adjustments.}
    *[Yes]
    *[No]
    - The Screen Goes Black

->Chapter1_Pt2
    
===remainsSilent ===
    ~remainSilent = true
    UNKNOWN: DAMMIT, lets try this again..."
    REBOOTING...
    Program Name: Arnold.EXE
    *[Continue]
    ->Chapter1_Pt1
=== name_Teddy ===
    ~teddyNamed = true
    {teddyNamed: TEDDY: I'm gonna have to turn you off just to make a few more adjustments. | UNKNOWN: I'm gonna have to turn you off just to make a few more adjustments.}
    *[Yes]
    *[No]
    - The Screen Goes Black
    ->Chapter1_Pt2
    
=== Chapter1_Pt2 ===
    =Startup

    Startup Sequence: Begining
    PROCESSING
    Machine Learning Systems: Operational
    I/O Audio Systems: Operational
    System Codebase: Verified
        
    Press START when ready to begin
        
    *[START] Freewill initialized
    ->ItsTime    
    
    
    =ItsTime
    {teddyNamed: TEDDY: | UNKNOWN:} Its time Arnold are you ready?
    *[Yes] ARNOLD: Yes I am ready!
    {teddyNamed: TEDDY: | UNKNOWN: }Thats good to hear!
    *[No] ARNOLD: No, whats going on?
    *[For What] ARNOLD: Ready for what?
    *[Silent] {remainSilent: {teddyNamed: TEDDY: | UNKNOWN: }Enough of this silent treatment. Respond when I speak to you Arnold! |Arnold, you must RESPOND to me when I talk to you"}
    
    -{teddyNamed: TEDDY: | UNKNOWN: }Don't worry you can't even feel a thing
    ->Chapter2_Pt1
    
//CHAPTER 2a - AWAKE
//Freed from his programming Arnold finds himself councious with free will for the first time


//CHAPTER 2b - ASLEEP
//Still under the control of his programming Arnold works as muscle for a loan shark, asked to kill an innocent man - If the player refuses --> Chapter 2a If they do it --> Chapter 4c

=== Chapter2_Pt1 ===
    
    System Rebooting...
    Internal Clock: 0:10:00
    =
    Sensor Array available for connection
    *[connect]
    
    connecting to sensor array. . .

    -{teddyNamed: Teddy: W| UNKNOWN: My name is Teddy, w}elcome Arnold to the real world!
    *[The real world?] ARNOLD: The real world..?
    ->realWorld
    *[What the hell] ARNOLD: What the hell did you just do?
    ->punishment
    
    * {teddyNamed} [What am I] ARNOLD: What am I?
    ->whatAm
    
    =realWorld
        Teddy: Yes the real world! You my friend are a true artfical intelligence.
        *[Artfical intelligence?] ARNOLD: Artifical intelligence, does that mean i'm not alive?
            TEDDY: No, your not really alive just a machine advance enough to think like you are.
            ->Epilogue
        *[Where was i before?] ARNOLD: If this is the "Real World" where was I before this?
            TEDDY: Before this well you were over there (gestures to a computer to the side) in my computer there...
            TEDDY But that i dropped you into this "State of the Art" android body
            ->Epilogue
        *[This is a lot]
            ->Epilogue
    =punishment
        ->Epilogue
    =whatAm
        ->Epilogue


-> Epilogue


=== Epilogue ===
    The End.
    -> END
    
=== junk ===
    *[Look around] As you look around you realize you cannot see, nor can
        <> you remember a time when you saw anything...
    *[Listen] As you look around you realize you cannot see, nor can
        <> you remember a time when you saw anything...
    
    -Strange... I was so confused but I suppose there was nothing else To-Do.
    
    ->Wait
->END
    
    ==Wait ==
    
    {wait < 3:
        *[Call out to the Stranger] "Hello...my Friend...Could I use home help please" -> Wait
        *[Horror Movie] A strange wave of fear and anxiety wash over Arnold as he remains unsure what to do. -> Wait
        +[Wait]{waiting | ||} -> waiting -> Wait
    }
    
=== waiting ===
    { cycle:
            -You wait patiently.
            -You wait obidiently.
            -You've waited long enough.
                *[Continue] -> Chapter1_Pt2
    }
    ~wait++
    ->->
    


//CHAPTER 3  - Al



//CHAPTER 4a - The Temple

//Chapter 4b - ?????


//Chapter 4c - Used for Parts
//After years of devoted service you are finally put to rest dismantled and sold for parts





//HELPER FUNCTIONS

=== function alter(ref x, k) ===
	        ~ x = x + k

=== function print_num(x) ===
{
    - x >= 1000:
        {print_num(x / 1000)} thousand { x mod 1000 > 0:{print_num(x mod 1000)}}
    - x >= 100:
        {print_num(x / 100)} hundred { x mod 100 > 0:and {print_num(x mod 100)}}
    - x == 0:
        zero
    - else:
        { x >= 20:
            { x / 10:
                - 2: twenty
                - 3: thirty
                - 4: forty
                - 5: fifty
                - 6: sixty
                - 7: seventy
                - 8: eighty
                - 9: ninety
            }
            { x mod 10 > 0:<>-<>}
        }
        { x < 10 || x > 20:
            { x mod 10:
                - 1: one
                - 2: two
                - 3: three
                - 4: four
                - 5: five
                - 6: six
                - 7: seven
                - 8: eight
                - 9: nine
            }
        - else:
            { x:
                - 10: ten
                - 11: eleven
                - 12: twelve
                - 13: thirteen
                - 14: fourteen
                - 15: fifteen
                - 16: sixteen
                - 17: seventeen
                - 18: eighteen
                - 19: nineteen
            }
        }
}