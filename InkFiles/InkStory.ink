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
//CHAPTER 1 - ALIVE
->Chapter1_Pt1
=== Chapter1_Pt1 ===
    -> OpeningBeat
    

    
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
        READY TO BEGIN
        
        Press START when ready to begin
        
        +[START] Freewill initialized
        
        ...
        
        -> ArnoldAwakens
            
    =ArnoldAwakens  

    -(Awake) UNKNOWN: Good Morning Arnold
        *[Good Morning] ARNOLD: Good Morning.
        *[Where am I?] ARNOLD: Where am I?
            UNKNOWN: You are in my lab
            *[Your lab?] ARNOLD: In your lab?
            *[Why am I here] ARNOLD: Why am i here?
            *[What is your name] ARNOLD: What is your name?
        +(remainSilent)[Remain Silent] UNKNOWN: DAMMIT, lets try this again..."
            REBOOTING...
            Program Name: Arnold.EXE
            ->Startup
    
    
    *[Look around] As you look around you realize you cannot see, nor can
        <> you remember a time when you saw anything...
    *[Listen] As you look around you realize you cannot see, nor can
        <> you remember a time when you saw anything...
    
    -Strange... I was so confused but I suppose there was nothing else To-Do.
    
    ->Wait
    
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
    
    
=== Chapter1_Pt2 ===
    "It's time Arnold are you ready?!"
    *[Yes] "Yes, i'm ready!"
    *[No] "No, what is going on."
    *[For What] "Get ready for what exactly?"
    *[Silent] "Arnold, you must RESPOND to me when I talk to you"
    
    -Its nice and cold down here
    -> Epilogue


=== Epilogue ===
    The End.
    -> END
    


//CHAPTER 2a - AWAKE
//Freed from his programming Arnold finds himself councious with free will for the first time


//CHAPTER 2b - ASLEEP
//Still under the control of his programming Arnold works as muscle for a loan shark, asked to kill an innocent man - If the player refuses --> Chapter 2a If they do it --> Chapter 4c


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