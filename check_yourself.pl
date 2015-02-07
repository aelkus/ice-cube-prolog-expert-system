%% Program for helping you check yourself before you wreck yourself. 
%% Modified version of animal identification game from https://www.cpp.edu/~jrfisher/www/prolog_tutorial/2_17.html.
%% Type "go." at the ? prompt. 
%% Must respond with "yes." or "y." when program prompts for answer. 

go :- danger_of_being_wrecked(Cause),
	write('you could get wrecked because: '),
	write(Cause),
	nl,
	undo.

danger_of_being_wrecked(stepped_to_ice_cube) :- stepped_to_ice_cube, !.
danger_of_being_wrecked(studio_gangster) :- studio_gangster, !. 
danger_of_being_wrecked(romantic_partner_is_bad_for_your_health) :- romantic_partner_is_bad_for_your_health, !.
danger_of_being_wrecked(unknown).

% diagnosis of cause of being wrecked 

romantic_partner_is_bad_for_your_health :- questionable_individual_is_romantic_partner,
						   verify(homies_call_partner_miami_hurricane_head), 
						   verify(homies_call_partner_lips_and_lungs).

studio_gangster :- you_want_to_step_to_ice_cube, 
				verify(ice_cube_has_ak47), 
				verify(ice_cube_has_desert_eagle).

stepped_to_ice_cube :- you_want_to_step_to_ice_cube,
				verify(ice_cube_comes_real_stealth),
				verify(ice_cube_drinks_cognac_straight).

% classification tool of two broad areas of wrecked-ness

questionable_individual_is_romantic_partner :- verify(currently_dating_someone), 
					   						   verify(have_romantic_feelings_for_them).

questionable_individual_is_romantic_partner :- verify(homies_have_warned_you_about_them), !.

you_want_to_step_to_ice_cube :- verify(ice_cube_dropped_a_bomb_on_your_mom).

you_want_to_step_to_ice_cube :- verify(ice_cube_stole_your_alpine).

you_want_to_step_to_ice_cube :- verify(your_weapon_is_knife), 
								verify(you_talk_about_folding_bank),
								verify(you_are_willing_to_snitch_on_ice_cube),!.

% question mechanism 

ask(Question) :-
	write('Answer yes or no to the following question: '),
	write(Question),
	write('?'),
	read(Response),
	nl,
	((Response == yes ; Response == y)
		-> 
		assert(yes(Question)) ;
		assert(no(Question)), fail).

:- dynamic yes/1,no/1.

% tool for verifying questions 

verify(S) :- 
	(yes(S) 
		-> 
		true ; 
		(no(S) 
		-> 
		fail ;
		ask(S))). 

% reset program 

undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.