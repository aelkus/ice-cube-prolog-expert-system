Ice Cube Prolog Expert System
=============================

I did this project as an experiment to see if I could translate rap lyrics into the predicate calculus and implement a simple expert system that could help you check yourself before you wreck yourself. 

Rapper Ice Cube [asks us](http://genius.com/Ice-cube-check-yo-self-lyrics/) to check ourselves before we wreck ourselves, but lists several potential causes of wrecking yourself: stepping to Ice Cube, stepping to Ice Cube and snitching on him out of fear you'd lose the fight, and associating with a disreputable romantic partner. Given that there is no single cause of being wrecked, how is one to know to advance that they are about to wreck themselves? 

I have modified an [simple rule-based expert system](https://www.cpp.edu/~jrfisher/www/prolog_tutorial/2_17.html) from an [AI textbook](http://www.amazon.com/Lisp-3rd-Edition-Patrick-Winston/dp/0201083191) so that you can avoid being wrecked. 

How to use it 
--------------

I haven't tested this on anything except [SWI-Prolog](http://www.swi-prolog.org), but I don't see why it wouldn't work on any ISO Prolog implementation. Provided you have either SWI-Prolog or an ISO Prolog implementation, download the file and make sure you are in the directory containing the .pl file.

At the ? prompt, type `consult('check_yourself.pl').` and then type `go.` to enter the main loop. Type `yes.` or `no.` in response to the questions Prolog asks you. To get out of Prolog when you get tired of it, type `halt.` at the ? prompt. All of the facts and rules based on Ice Cube Ft. EFX, "Check Yo Self."