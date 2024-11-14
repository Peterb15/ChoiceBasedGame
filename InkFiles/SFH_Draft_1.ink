//Game Dev Final Project - INK 


//Global Constants

VAR wait = 0

-> Chapter1_Pt1

//CH.1 - AWAKE

=== Chapter1_Pt1 ===
    -(awake) Good Morning Arnold, its nice to see that you're finally awake...
        *[Where am I?] "Where am I?" I asked.
        *[Who am I?] "Who am I" I asked.
        *[Whats going on?] "Whats going on?" I asked.
        *[Remain Silient]
    
    -I know you have many questions but please be patient all will be answered soon.
    
    
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
    It's time Arnold are you ready?!
    *[Yes] Yes, i'm ready!
    *[No] No, what is going on.
    *[For What] Get ready for what exactly?
    *[Silient] Arnold RESPOND to me when I talk to you
    
    -Its nice and cold down here
    -> Epilogue


=== Epilogue ===
    The End.
    -> END
    


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