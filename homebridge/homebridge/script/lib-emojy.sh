#!/bin/bash
emojis=(":sauna_person:" ":slightly_smiling_face:" ":four:" ":ballet_shoes:" ":cyprus:" ":maple_leaf:" ":building_construction:" ":wind_face:" ":waxing_gibbous_moon:" ":family_man_woman_girl:" ":swan:" ":teapot:" ":bike:" ":french_polynesia:" ":recycle:" ":white_flag:" ":thought_balloon:" ":family_woman_woman_girl_boy:" ":microbe:" ":tickets:" ":uzbekistan:" ":school:" ":arrow_right_hook:" ":parrot:" ":weight_lifting_woman:" ":woman_student:" ":video_game:" ":beverage_box:" ":snowman_with_snow:" ":triumph:" ":jamaica:" ":woman_playing_handball:" ":bacon:" ":suspension_railway:" ":umbrella:" ":cactus:" ":monorail:" ":tajikistan:" ":panama:" ":new:" ":peace_symbol:" ":dominican_republic:" ":pancakes:" ":herb:" ":pouting_cat:" ":blue_heart:" ":100:" ":massage_woman:" ":luggage:" ":oman:" ":leaves:" ":octocat:" ":dragon_face:" ":niue:" ":children_crossing:" ":myanmar:" ":arrow_up_down:" ":mount_fuji:" ":keycap_ten:" ":pouting_face:" ":ice_cube:" ":standing_man:" ":two_women_holding_hands:" ":chess_pawn:" ":dna:" ":red_car:" ":hospital:" ":shipit:" ":red_circle:" ":tm:" ":suriname:" ":trollface:" ":man_shrugging:" ":lungs:" ":star_struck:" ":motor_boat:" ":it:" ":phone:" ":adult:" ":hole:" ":pouch:" ":izakaya_lantern:" ":dodo:" ":worm:" ":woman_in_manual_wheelchair:" ":mechanic:" ":grenada:" ":plunger:" ":arrow_lower_left:" ":game_die:" ":2nd_place_medal:" ":artificial_satellite:" ":skateboard:" ":dolphin:" ":india:" ":us_virgin_islands:" ":night_with_stars:" ":white_medium_small_square:" ":handball_person:" ":kissing_closed_eyes:" ":earth_americas:" ":end:" ":probing_cane:" ":mouse:" ":family_man_girl_boy:" ":bowing_man:" ":rhinoceros:" ":rewind:" ":pizza:" ":woman_in_motorized_wheelchair:" ":briefcase:" ":ladder:" ":oncoming_automobile:" ":heartpulse:" ":sparkler:" ":sparkles:" ":croissant:" ":tulip:" ":speaking_head:" ":ambulance:" ":haircut_man:" ":hedgehog:" ":office:" ":cheese:" ":clapper:" ":satisfied:" ":cote_divoire:" ":keyboard:" ":do_not_litter:" ":post_office:" ":woman_office_worker:" ":roller_skate:" ":avocado:" ":mongolia:" ":dizzy_face:" ":imp:" ":wales:" ":curling_stone:" ":coffee:" ":belarus:" ":basecamp:" ":purple_square:" ":people_hugging:" ":open_mouth:" ":giraffe:" ":bank:" ":bread:" ":mending_heart:" ":netherlands:" ":oncoming_police_car:" ":capricorn:" ":meat_on_bone:" ":tokyo_tower:" ":weary:" ":fishing_pole_and_fish:" ":woman_singer:" ":thumbsdown:" ":bone:" ":angola:" ":telescope:" ":face_with_head_bandage:" ":spider:" ":sled:" ":u7121:" ":sweet_potato:" ":woman_facepalming:" ":lock_with_ink_pen:" ":swimming_man:" ":ru:" ":palau:" ":christmas_island:" ":hushed:" ":baggage_claim:" ":cherry_blossom:" ":sparkle:" ":construction_worker_man:" ":zap:" ":saxophone:" ":venezuela:" ":sheep:" ":flower_playing_cards:" ":hatching_chick:" ":syria:" ":free:" ":bullettrain_side:" ":poultry_leg:" ":grapes:" ":smirk_cat:" ":hand:" ":lollipop:" ":clinking_glasses:" ":black_medium_small_square:" ":atm:" ":british_virgin_islands:" ":closed_lock_with_key:" ":drooling_face:" ":hook:" ":samoa:" ":niger:" ":disguised_face:" ":hurtrealbad:" ":basketball:" ":top:" ":elevator:" ":clock630:" ":railway_track:" ":nail_care:" ":broken_heart:" ":latin_cross:" ":clipperton_island:" ":minibus:" ":woman_teacher:" ":shower:" ":sewing_needle:" ":gabon:" ":dog2:" ":triangular_ruler:" ":loud_sound:" ":kaaba:" ":runner:" ":ram:" ":writing_hand:" ":man_health_worker:" ":rat:" ":shell:" ":rice_scene:" ":botswana:" ":milky_way:" ":mage_woman:" ":necktie:" ":woman_health_worker:" ":kissing_cat:" ":curly_haired_man:" ":snowflake:" ":paintbrush:" ":crystal_ball:" ":koko:" ":congo_brazzaville:" ":thong_sandal:" ":raising_hand_woman:" ":coin:" ":ballot_box_with_check:" ":singer:" ":milk_glass:" ":metal:" ":dog:" ":hot_face:" ":moon_cake:" ":pineapple:" ":policewoman:" ":scream:" ":snowman:" ":bomb:" ":polar_bear:" ":radio:" ":hungary:" ":ringed_planet:" ":cupid:" ":mens:" ":rice:" ":bahrain:" ":family_man_girl_girl:" ":sunglasses:" ":de:" ":watch:" ":frowning:" ":brown_square:" ":watermelon:" ":wedding:" ":haiti:" ":bat:" ":kneeling_woman:" ":pretzel:" ":microscope:" ":interrobang:" ":japanese_ogre:" ":yo_yo:" ":dancing_women:" ":man_with_turban:" ":ng_man:" ":star_and_crescent:" ":family_man_boy:" ":bridge_at_night:" ":iran:" ":hammer:" ":hourglass:" ":brazil:" ":postbox:" ":timor_leste:" ":plate_with_cutlery:" ":martial_arts_uniform:" ":wc:" ":aquarius:" ":pleading_face:" ":toothbrush:" ":ok_woman:" ":cop:" ":sunflower:" ":health_worker:" ":mayotte:" ":macedonia:" ":white_large_square:" ":pig_nose:" ":ice_skate:" ":genie_man:" ":family_man_woman_girl_boy:" ":hotsprings:" ":bowl_with_spoon:" ":man_cook:" ":family_woman_boy:" ":cloud_with_lightning:" ":iraq:" ":three:" ":frowning_person:" ":beer:" ":stadium:" ":trinidad_tobago:" ":heavy_division_sign:" ":congo_kinshasa:" ":mushroom:" ":record_button:" ":sun_behind_rain_cloud:" ":chile:" ":child:" ":cartwheeling:" ":dash:" ":wind_chime:" ":st_kitts_nevis:" ":bearded_person:" ":raised_back_of_hand:" ":film_projector:" ":lizard:" ":person_with_veil:" ":deaf_person:" ":anchor:" ":person_fencing:" ":seven:" ":mexico:" ":roller_coaster:" ":sushi:" ":card_file_box:" ":mantelpiece_clock:" ":anger:" ":dizzy:" ":stuffed_flatbread:" ":arrow_forward:" ":violin:" ":orthodox_cross:" ":id:" ":wallis_futuna:" ":heart_decoration:" ":first_quarter_moon:" ":satellite:" ":person_with_turban:" ":billed_cap:" ":slovenia:" ":garlic:" ":christmas_tree:" ":unicorn:" ":butter:" ":crossed_flags:" ":smile_cat:" ":ocean:" ":ng_woman:" ":monaco:" ":hearts:" ":man_playing_water_polo:" ":fleur_de_lis:" ":straight_ruler:" ":sleepy:" ":green_apple:" ":djibouti:" ":goggles:" ":man_juggling:" ":handshake:" ":white_medium_square:" ":bhutan:" ":grey_exclamation:" ":elf:" ":smiling_face_with_three_hearts:" ":innocent:" ":menorah:" ":yin_yang:" ":womans_clothes:" ":sun_behind_large_cloud:" ":judge:" ":clock130:" ":gift:" ":prayer_beads:" ":stuck_out_tongue:" ":mosquito:" ":greenland:" ":face_exhaling:" ":crown:" ":yellow_square:" ":sponge:" ":malaysia:" ":clubs:" ":police_officer:" ":fire_extinguisher:" ":fog:" ":dango:" ":man_in_manual_wheelchair:" ":large_orange_diamond:" ":skull_and_crossbones:" ":central_african_republic:" ":point_up:" ":corn:" ":new_zealand:" ":petri_dish:" ":fist_right:" ":man_factory_worker:" ":headstone:" ":eight_spoked_asterisk:" ":trophy:" ":black_small_square:" ":o:" ":el_salvador:" ":no_bell:" ":curry:" ":alembic:" ":flatbread:" ":sob:" ":yen:" ":selfie:" ":tiger2:" ":bath:" ":sos:" ":baguette_bread:" ":kick_scooter:" ":soon:" ":heavy_multiplication_x:" ":tennis:" ":bolivia:" ":bouncing_ball_woman:" ":world_map:" ":fireworks:" ":astonished:" ":woman_cartwheeling:" ":otter:" ":congratulations:" ":sparkling_heart:" ":grey_question:" ":arrow_upper_left:" ":blue_square:" ":call_me_hand:" ":boomerang:" ":arrow_double_up:" ":estonia:" ":south_georgia_south_sandwich_islands:" ":triangular_flag_on_post:" ":gemini:" ":framed_picture:" ":ship:" ":shit:" ":movie_camera:" ":cambodia:" ":ng:" ":biking_man:" ":tamale:" ":football:" ":asterisk:" ":taurus:" ":articulated_lorry:" ":police_car:" ":flushed:" ":sassy_woman:" ":spades:" ":man_singer:" ":potato:" ":climbing_man:" ":gorilla:" ":vietnam:" ":sri_lanka:" ":wine_glass:" ":peacock:" ":clock830:" ":anatomical_heart:" ":department_store:" ":crocodile:" ":green_circle:" ":man_in_tuxedo:" ":white_square_button:" ":chair:" ":curly_loop:" ":stop_sign:" ":mountain_cableway:" ":melon:" ":persevere:" ":trident:" ":u7a7a:" ":family_man_woman_girl_girl:" ":cook:" ":hammer_and_wrench:" ":cool:" ":high_brightness:" ":nerd_face:" ":policeman:" ":upside_down_face:" ":heavy_minus_sign:" ":philippines:" ":man_with_veil:" ":gun:" ":magnet:" ":united_arab_emirates:" ":climbing_woman:" ":arrow_left:" ":old_key:" ":small_orange_diamond:" ":white_small_square:" ":zzz:" ":afghanistan:" ":hocho:" ":card_index_dividers:" ":file_folder:" ":suspect:" ":somalia:" ":man_cartwheeling:" ":pouting_woman:" ":1234:" ":smiling_imp:" ":amphora:" ":v:" ":raising_hand_man:" ":baseball:" ":teacher:" ":bust_in_silhouette:" ":boy:" ":raised_hands:" ":st_vincent_grenadines:" ":heavy_plus_sign:" ":bow:" ":mauritius:" ":light_rail:" ":raccoon:" ":massage:" ":scorpion:" ":lotus_position_woman:" ":juggling_person:" ":guinea_bissau:" ":outbox_tray:" ":tipping_hand_person:" ":clock330:" ":virgo:" ":isle_of_man:" ":sake:" ":confounded:" ":angry:" ":brown_heart:" ":service_dog:" ":crescent_moon:" ":peru:" ":aries:" ":ear_of_rice:" ":mouse2:" ":guardsman:" ":walking_man:" ":envelope:" ":money_with_wings:" ":beers:" ":olive:" ":bubble_tea:" ":woozy_face:" ":fly:" ":lesotho:" ":car:" ":cat:" ":running_shirt_with_sash:" ":ferry:" ":woman_pilot:" ":guadeloupe:" ":heart:" ":chart_with_upwards_trend:" ":green_heart:" ":uruguay:" ":superhero_man:" ":confused:" ":parachute:" ":genie_woman:" ":marshall_islands:" ":scorpius:" ":sailboat:" ":love_you_gesture:" ":elephant:" ":open_book:" ":cocktail:" ":motorway:" ":family_man_man_boy_boy:" ":birthday:" ":mag:" ":date:" ":cloud_with_snow:" ":dove:" ":fox_face:" ":man:" ":bouvet_island:" ":octopus:" ":wheelchair:" ":mango:" ":military_helmet:" ":basket:" ":sa:" ":people_holding_hands:" ":shield:" ":haircut:" ":brain:" ":last_quarter_moon_with_face:" ":rosette:" ":accordion:" ":flying_saucer:" ":haircut_woman:" ":currency_exchange:" ":farmer:" ":person_feeding_baby:" ":norway:" ":waxing_crescent_moon:" ":new_caledonia:" ":woman_astronaut:" ":monocle_face:" ":ear_with_hearing_aid:" ":canned_food:" ":czech_republic:" ":t-rex:" ":clock930:" ":bowling:" ":turtle:" ":honduras:" ":construction_worker:" ":money_mouth_face:" ":godmode:" ":unlock:" ":sandwich:" ":zebra:" ":beetle:" ":eu:" ":open_umbrella:" ":es:" ":canada:" ":racing_car:" ":factory:" ":blue_book:" ":reminder_ribbon:" ":eagle:" ":wilted_flower:" ":grimacing:" ":customs:" ":musical_note:" ":high_heel:" ":green_book:" ":headphones:" ":curly_haired_woman:" ":mrs_claus:" ":yum:" ":woman_with_veil:" ":supervillain_woman:" ":heavy_heart_exclamation:" ":romania:" ":seychelles:" ":ophiuchus:" ":revolving_hearts:" ":one:" ":ring:" ":fiji:" ":point_right:" ":blond_haired_woman:" ":bookmark:" ":spider_web:" ":bahamas:" ":hiking_boot:" ":roll_of_paper:" ":swaziland:" ":frowning_woman:" ":anguilla:" ":mermaid:" ":eyes:" ":ascension_island:" ":memo:" ":montenegro:" ":hut:" ":orange_square:" ":sweat_drops:" ":middle_finger:" ":woman_firefighter:" ":hong_kong:" ":pinching_hand:" ":evergreen_tree:" ":biohazard:" ":paw_prints:" ":scream_cat:" ":hourglass_flowing_sand:" ":tophat:" ":clock1230:" ":tractor:" ":u6709:" ":u6708:" ":coconut:" ":crying_cat_face:" ":angel:" ":parking:" ":ant:" ":information_desk_person:" ":burundi:" ":mailbox_with_mail:" ":walking_woman:" ":pencil2:" ":wink:" ":malta:" ":thermometer:" ":registered:" ":cayman_islands:" ":benin:" ":butterfly:" ":printer:" ":tornado:" ":credit_card:" ":checkered_flag:" ":pitcairn_islands:" ":pager:" ":radioactive:" ":fried_shrimp:" ":tooth:" ":goberserk:" ":axe:" ":black_circle:" ":salt:" ":detective:" ":walking:" ":person_with_probing_cane:" ":shoe:" ":diving_mask:" ":city_sunset:" ":wood:" ":sleeping_bed:" ":person_white_hair:" ":arrow_up:" ":computer_mouse:" ":sint_maarten:" ":gem:" ":negative_squared_cross_mark:" ":girl:" ":artist:" ":worried:" ":bison:" ":clock4:" ":bulgaria:" ":hear_no_evil:" ":convenience_store:" ":seat:" ":sauna_woman:" ":japan:" ":pisces:" ":calendar:" ":loudspeaker:" ":camping:" ":bicyclist:" ":label:" ":diamonds:" ":mandarin:" ":nauru:" ":bald_woman:" ":raising_hand:" ":zipper_mouth_face:" ":hot_pepper:" ":jp:" ":factory_worker:" ":guitar:" ":rage4:" ":rage1:" ":rage2:" ":rage3:" ":3rd_place_medal:" ":tropical_drink:" ":libya:" ":transgender_flag:" ":restroom:" ":comet:" ":pakistan:" ":armenia:" ":cancer:" ":bricks:" ":jeans:" ":golfing_man:" ":boar:" ":comoros:" ":boat:" ":turkey:" ":oden:" ":solomon_islands:" ":hatched_chick:" ":stuck_out_tongue_closed_eyes:" ":helicopter:" ":control_knobs:" ":shopping:" ":performing_arts:" ":man_farmer:" ":accessibility:" ":tiger:" ":foggy:" ":pilot:" ":sound:" ":blowfish:" ":speech_balloon:" ":pirate_flag:" ":envelope_with_arrow:" ":warning:" ":u5408:" ":newspaper:" ":woman_dancing:" ":american_samoa:" ":fried_egg:" ":canoe:" ":older_adult:" ":purse:" ":telephone:" ":sleeping:" ":beaver:" ":synagogue:" ":fairy_man:" ":joy_cat:" ":ethiopia:" ":bermuda:" ":train2:" ":goal_net:" ":female_sign:" ":bellhop_bell:" ":singapore:" ":diamond_shape_with_a_dot_inside:" ":running:" ":barber:" ":man_with_probing_cane:" ":flipper:" ":climbing:" ":dancing_men:" ":ice_cream:" ":low_brightness:" ":burrito:" ":page_with_curl:" ":guernsey:" ":genie:" ":joystick:" ":faroe_islands:" ":taxi:" ":flat_shoe:" ":u7533:" ":dancers:" ":north_korea:" ":kneeling_person:" ":barbados:" ":black_cat:" ":snowboarder:" ":thinking:" ":rose:" ":men_wrestling:" ":tunisia:" ":stopwatch:" ":pill:" ":skier:" ":orange_book:" ":raised_eyebrow:" ":dart:" ":female_detective:" ":man_scientist:" ":disappointed:" ":grin:" ":place_of_worship:" ":japanese_goblin:" ":arrows_counterclockwise:" ":nose:" ":papua_new_guinea:" ":clap:" ":left_right_arrow:" ":japanese_castle:" ":lebanon:" ":lobster:" ":couple_with_heart_woman_woman:" ":lotion_bottle:" ":sudan:" ":bento:" ":fondue:" ":luxembourg:" ":moon:" ":tanabata_tree:" ":running_man:" ":o2:" ":knife:" ":couplekiss_man_man:" ":volcano:" ":thailand:" ":kissing_heart:" ":older_woman:" ":on:" ":om:" ":placard:" ":city_sunrise:" ":sauna_man:" ":package:" ":woman_factory_worker:" ":arrow_right:" ":shrimp:" ":chart_with_downwards_trend:" ":u6e80:" ":wolf:" ":ox:" ":information_source:" ":dagger:" ":full_moon_with_face:" ":syringe:" ":white_check_mark:" ":jigsaw:" ":stars:" ":family_woman_girl_girl:" ":costa_rica:" ":steam_locomotive:" ":woman_with_turban:" ":yawning_face:" ":wrench:" ":waffle:" ":radio_button:" ":arrow_heading_down:" ":rage:" ":whale2:" ":bucket:" ":atom_symbol:" ":vhs:" ":strawberry:" ":non-potable_water:" ":star2:" ":test_tube:" ":toilet:" ":ab:" ":cinema:" ":woman_juggling:" ":deer:" ":medal_sports:" ":tshirt:" ":telephone_receiver:" ":french_southern_territories:" ":pensive:" ":one_piece_swimsuit:" ":astronaut:" ":vanuatu:" ":clock1030:" ":poop:" ":pushpin:" ":red_square:" ":pear:" ":lipstick:" ":dependabot:" ":mask:" ":kneeling_man:" ":feelsgood:" ":kuwait:" ":sunrise_over_mountains:" ":partly_sunny:" ":fountain_pen:" ":dollar:" ":smoking:" ":frowning_face:" ":no_bicycles:" ":man_playing_handball:" ":blueberries:" ":man_with_gua_pi_mao:" ":tv:" ":open_hands:" ":rotating_light:" ":tr:" ":dumpling:" ":part_alternation_mark:" ":rwanda:" ":smile:" ":large_blue_circle:" ":ghana:" ":open_file_folder:" ":fax:" ":woman:" ":screwdriver:" ":ticket:" ":ramen:" ":twisted_rightwards_arrows:" ":cape_verde:" ":frowning_man:" ":seedling:" ":right_anger_bubble:" ":moldova:" ":-1:" ":united_nations:" ":notebook_with_decorative_cover:" ":cloud_with_rain:" ":slightly_frowning_face:" ":tea:" ":zero:" ":ribbon:" ":abc:" ":auto_rickshaw:" ":purple_heart:" ":deaf_woman:" ":st_helena:" ":carpentry_saw:" ":hash:" ":bowtie:" ":pinched_fingers:" ":surfer:" ":busstop:" ":new_moon:" ":belize:" ":thumbsup:" ":man_mechanic:" ":canary_islands:" ":no_entry:" ":adhesive_bandage:" ":name_badge:" ":classical_building:" ":hamster:" ":pick:" ":male_detective:" ":family:" ":rice_cracker:" ":inbox_tray:" ":next_track_button:" ":shushing_face:" ":tired_face:" ":carousel_horse:" ":eye:" ":woman_feeding_baby:" ":poodle:" ":heard_mcdonald_islands:" ":chestnut:" ":israel:" ":san_marino:" ":door:" ":sun_behind_small_cloud:" ":stethoscope:" ":mailbox_closed:" ":jack_o_lantern:" ":man_pilot:" ":burkina_faso:" ":nine:" ":chocolate_bar:" ":mali:" ":+1:" ":yemen:" ":shark:" ":hamburger:" ":accept:" ":studio_microphone:" ":collision:" ":basketball_woman:" ":basecampy:" ":kenya:" ":airplane:" ":dress:" ":man_facepalming:" ":speedboat:" ":ledger:" ":hugs:" ":woman_in_tuxedo:" ":breast_feeding:" ":goat:" ":family_man_man_girl_girl:" ":pause_button:" ":fr:" ":norfolk_island:" ":fu:" ":star_of_david:" ":fork_and_knife:" ":fast_forward:" ":softball:" ":cow2:" ":merman:" ":a:" ":coat:" ":spoon:" ":volleyball:" ":dragon:" ":chopsticks:" ":red_haired_man:" ":golfing_woman:" ":point_up_2:" ":egg:" ":balloon:" ":small_red_triangle:" ":manual_wheelchair:" ":azerbaijan:" ":rainbow_flag:" ":scientist:" ":man_office_worker:" ":hand_over_mouth:" ":golfing:" ":pray:" ":dark_sunglasses:" ":rugby_football:" ":peanuts:" ":argentina:" ":soccer:" ":play_or_pause_button:" ":cowboy_hat_face:" ":dolls:" ":monkey_face:" ":drop_of_blood:" ":bosnia_herzegovina:" ":merperson:" ":bar_chart:" ":european_castle:" ":foot:" ":ninja:" ":abacus:" ":left_speech_bubble:" ":rice_ball:" ":trolleybus:" ":tipping_hand_man:" ":black_flag:" ":namibia:" ":fairy:" ":lantern:" ":clamp:" ":white_flower:" ":england:" ":postal_horn:" ":house:" ":fish:" ":bride_with_veil:" ":fist:" ":scissors:" ":business_suit_levitating:" ":curacao:" ":nepal:" ":fountain:" ":cyclone:" ":cockroach:" ":traffic_light:" ":houses:" ":family_woman_girl_boy:" ":cookie:" ":man_astronaut:" ":raised_hand_with_fingers_splayed:" ":supervillain:" ":thread:" ":finland:" ":puerto_rico:" ":superhero_woman:" ":heartbeat:" ":blush:" ":couple_with_heart_woman_man:" ":derelict_house:" ":guam:" ":palms_up_together:" ":fire_engine:" ":feet:" ":white_haired_woman:" ":pregnant_woman:" ":colombia:" ":razor:" ":horse:" ":blossom:" ":family_woman_woman_girl_girl:" ":crossed_swords:" ":station:" ":gibraltar:" ":clock730:" ":nigeria:" ":banana:" ":ecuador:" ":sassy_man:" ":relieved:" ":hotel:" ":jordan:" ":aerial_tramway:" ":panda_face:" ":couplekiss_woman_woman:" ":mechanical_leg:" ":b:" ":fortune_cookie:" ":six_pointed_star:" ":swim_brief:" ":macau:" ":shaved_ice:" ":chipmunk:" ":trackball:" ":white_haired_man:" ":antarctica:" ":mountain:" ":koala:" ":scotland:" ":u55b6:" ":globe_with_meridians:" ":cameroon:" ":chart:" ":bouncing_ball_person:" ":takeout_box:" ":beach_umbrella:" ":st_barthelemy:" ":safety_pin:" ":oyster:" ":tonga:" ":mans_shoe:" ":family_man_man_girl:" ":kr:" ":liechtenstein:" ":ideograph_advantage:" ":golf:" ":kosovo:" ":minidisc:" ":french_guiana:" ":crayon:" ":point_down:" ":no_good_man:" ":newspaper_roll:" ":copyright:" ":busts_in_silhouette:" ":alarm_clock:" ":couplekiss:" ":circus_tent:" ":zambia:" ":sunny:" ":incoming_envelope:" ":compass:" ":lab_coat:" ":woman_with_headscarf:" ":sierra_leone:" ":cry:" ":diya_lamp:" ":croatia:" ":switzerland:" ":guinea:" ":floppy_disk:" ":arrow_up_small:" ":art:" ":lion:" ":hibiscus:" ":black_joker:" ":raised_hand:" ":no_mouth:" ":balance_scale:" ":hindu_temple:" ":woman_scientist:" ":champagne:" ":no_entry_sign:" ":older_man:" ":moyai:" ":lying_face:" ":mailbox:" ":medal_military:" ":statue_of_liberty:" ":mega:" ":northern_mariana_islands:" ":magic_wand:" ":eggplant:" ":sloth:" ":bell:" ":battery:" ":wastebasket:" ":rofl:" ":sauropod:" ":badminton:" ":page_facing_up:" ":church:" ":man_judge:" ":woman_mechanic:" ":underage:" ":secret:" ":ireland:" ":clock430:" ":passenger_ship:" ":u7981:" ":algeria:" ":fire:" ":cold_sweat:" ":falkland_islands:" ":family_man_woman_boy_boy:" ":heart_eyes:" ":georgia:" ":long_drum:" ":earth_africa:" ":nauseated_face:" ":closed_umbrella:" ":bikini:" ":vertical_traffic_light:" ":kissing:" ":woman_farmer:" ":stop_button:" ":loop:" ":pound:" ":partying_face:" ":portugal:" ":standing_woman:" ":heavy_dollar_sign:" ":st_pierre_miquelon:" ":shamrock:" ":spiral_calendar:" ":shirt:" ":woman_judge:" ":kimono:" ":ok_man:" ":left_luggage:" ":honeybee:" ":point_left:" ":black_heart:" ":arrow_heading_up:" ":snail:" ":tuvalu:" ":arrow_down_small:" ":leopard:" ":paperclips:" ":cucumber:" ":cityscape:" ":slot_machine:" ":euro:" ":lacrosse:" ":sao_tome_principe:" ":musical_score:" ":poland:" ":clock2:" ":cook_islands:" ":zimbabwe:" ":flags:" ":elf_man:" ":love_hotel:" ":hotdog:" ":speak_no_evil:" ":eyeglasses:" ":clock6:" ":shallow_pan_of_food:" ":belgium:" ":dromedary_camel:" ":taiwan:" ":prince:" ":family_woman_woman_girl:" ":person_in_motorized_wheelchair:" ":womans_hat:" ":sandal:" ":1st_place_medal:" ":andorra:" ":cherries:" ":tumbler_glass:" ":kiwi_fruit:" ":full_moon:" ":australia:" ":sneezing_face:" ":couple:" ":kyrgyzstan:" ":banjo:" ":man_artist:" ":bangbang:" ":stuck_out_tongue_winking_eye:" ":construction_worker_woman:" ":motorized_wheelchair:" ":bamboo:" ":two:" ":blonde_woman:" ":waning_gibbous_moon:" ":back:" ":lips:" ":mirror:" ":falafel:" ":candle:" ":nicaragua:" ":bowing_woman:" ":qatar:" ":palestinian_territories:" ":firecracker:" ":pen:" ":iceland:" ":deciduous_tree:" ":laughing:" ":facepunch:" ":cocos_islands:" ":zombie:" ":stew:" ":santa:" ":tropical_fish:" ":standing_person:" ":field_hockey:" ":gambia:" ":finnadie:" ":school_satchel:" ":western_sahara:" ":womens:" ":baby_symbol:" ":antigua_barbuda:" ":baby_chick:" ":rescue_worker_helmet:" ":surfing_woman:" ":surfing_man:" ":last_quarter_moon:" ":tada:" ":madagascar:" ":bangladesh:" ":clock530:" ":pouting_man:" ":question:" ":togo:" ":boxing_glove:" ":iphone:" ":vatican_city:" ":sweat_smile:" ":relaxed:" ":british_indian_ocean_territory:" ":level_slider:" ":link:" ":atom:" ":penguin:" ":electric_plug:" ":skull:" ":family_woman_woman_boy_boy:" ":fries:" ":up:" ":us:" ":video_camera:" ":ceuta_melilla:" ":morocco:" ":athletic_shoe:" ":saudi_arabia:" ":uk:" ":guyana:" ":mountain_biking_man:" ":man_technologist:" ":tanzania:" ":pickup_truck:" ":chad:" ":m:" ":family_man_man_girl_boy:" ":black_nib:" ":black_large_square:" ":face_in_clouds:" ":bow_and_arrow:" ":shopping_cart:" ":rainbow:" ":lemon:" ":peach:" ":heart_on_fire:" ":shinto_shrine:" ":mountain_bicyclist:" ":south_sudan:" ":oncoming_bus:" ":mammoth:" ":heart_eyes_cat:" ":smiley:" ":hammer_and_pick:" ":turks_caicos_islands:" ":black_medium_square:" ":closed_book:" ":desert:" ":women_wrestling:" ":maldives:" ":expressionless:" ":dvd:" ":mag_right:" ":desert_island:" ":mx_claus:" ":scroll:" ":water_buffalo:" ":european_post_office:" ":tokelau:" ":alien:" ":first_quarter_moon_with_face:" ":gb:" ":woman_with_probing_cane:" ":anguished:" ":mosque:" ":man_firefighter:" ":eight_pointed_black_star:" ":wave:" ":electron:" ":llama:" ":person_curly_hair:" ":mauritania:" ":small_airplane:" ":family_man_woman_boy:" ":railway_car:" ":notes:" ":montserrat:" ":no_good:" ":wrestling:" ":reunion:" ":spaghetti:" ":family_man_girl:" ":fist_raised:" ":love_letter:" ":vampire:" ":parasol_on_ground:" ":clipboard:" ":baby_bottle:" ":bird:" ":brunei:" ":couch_and_lamp:" ":no_good_woman:" ":leg:" ":card_index:" ":kangaroo:" ":punch:" ":leo:" ":house_with_garden:" ":ukraine:" ":see_no_evil:" ":metro:" ":orangutan:" ":smiling_face_with_tear:" ":popcorn:" ":transgender_symbol:" ":apple:" ":egypt:" ":austria:" ":clock230:" ":duck:" ":cloud:" ":honey_pot:" ":caribbean_netherlands:" ":ballot_box:" ":lotus_position_man:" ":frog:" ":camera:" ":crab:" ":malawi:" ":pencil:" ":blond_haired_man:" ":tangerine:" ":us_outlying_islands:" ":train:" ":rabbit:" ":baby:" ":ok:" ":palm_tree:" ":pout:" ":flight_arrival:" ":cut_of_meat:" ":capital_abcd:" ":put_litter_in_its_place:" ":coffin:" ":abcd:" ":lock:" ":pig2:" ":carrot:" ":trumpet:" ":family_woman_boy_boy:" ":leftwards_arrow_with_hook:" ":clown_face:" ":heavy_check_mark:" ":aland_islands:" ":family_woman_woman_boy:" ":crossed_fingers:" ":green_salad:" ":notebook:" ":taco:" ":dominica:" ":tomato:" ":eritrea:" ":guatemala:" ":family_woman_girl:" ":orange_circle:" ":six:" ":mute:" ":male_sign:" ":funeral_urn:" ":symbols:" ":equatorial_guinea:" ":motorcycle:" ":toolbox:" ":badger:" ":broom:" ":lithuania:" ":yellow_heart:" ":paperclip:" ":moneybag:" ":man_student:" ":orange:" ":man_beard:" ":deaf_man:" ":couple_with_heart_man_man:" ":neutral_face:" ":rowing_woman:" ":signal_strength:" ":snake:" ":kiss:" ":blue_car:" ":confetti_ball:" ":liberia:" ":earth_asia:" ":tram:" ":weight_lifting:" ":latvia:" ":repeat_one:" ":smiley_cat:" ":beginner:" ":serbia:" ":mobile_phone_off:" ":books:" ":8ball:" ":hippopotamus:" ":disappointed_relieved:" ":mate:" ":gloves:" ":safety_vest:" ":hankey:" ":cursing_face:" ":x:" ":mountain_snow:" ":kiribati:" ":fishsticks:" ":princess:" ":elf_woman:" ":man_feeding_baby:" ":sun_with_face:" ":yarn:" ":passport_control:" ":small_blue_diamond:" ":tipping_hand_woman:" ":bell_pepper:" ":scarf:" ":bald_man:" ":zombie_woman:" ":bouquet:" ":flight_departure:" ":st_lucia:" ":person_in_manual_wheelchair:" ":national_park:" ":monkey:" ":gift_heart:" ":potted_plant:" ":brown_circle:" ":gear:" ":swimming_woman:" ":shorts:" ":small_red_triangle_down:" ":nut_and_bolt:" ":family_man_man_boy:" ":unamused:" ":fuelpump:" ":bed:" ":bee:" ":sweden:" ":round_pushpin:" ":couplekiss_man_woman:" ":biking_woman:" ":robot:" ":uganda:" ":bookmark_tabs:" ":microphone:" ":bagel:" ":woman_technologist:" ":red_haired_woman:" ":truck:" ":soap:" ":eight:" ":handbag:" ":arrows_clockwise:" ":office_worker:" ":new_moon_with_face:" ":massage_man:" ":heavy_exclamation_mark:" ":skunk:" ":kite:" ":horse_racing:" ":senegal:" ":chicken:" ":rowing_man:" ":seal:" ":wheel_of_dharma:" ":arrow_lower_right:" ":running_woman:" ":waning_crescent_moon:" ":fist_left:" ":man_teacher:" ":libra:" ":sagittarius:" ":cuba:" ":bear:" ":nazar_amulet:" ":kazakhstan:" ":no_mobile_phones:" ":denmark:" ":cold_face:" ":calling:" ":oncoming_taxi:" ":albania:" ":computer:" ":arrow_down:" ":greece:" ":woman_playing_water_polo:" ":ferris_wheel:" ":superhero:" ":motor_scooter:" ":mouse_trap:" ":face_with_spiral_eyes:" ":large_blue_diamond:" ":cat2:" ":cloud_with_lightning_and_rain:" ":icecream:" ":supervillain_man:" ":pinata:" ":email:" ":tent:" ":zany_face:" ":joy:" ":man_dancing:" ":facepalm:" ":file_cabinet:" ":blond_haired_person:" ":cake:" ":key:" ":couple_with_heart:" ":mage:" ":drum:" ":man_in_motorized_wheelchair:" ":jersey:" ":four_leaf_clover:" ":space_invader:" ":cn:" ":cl:" ":diego_garcia:" ":speaker:" ":cd:" ":purple_circle:" ":technologist:" ":sari:" ":swimmer:" ":wavy_dash:" ":window:" ":feather:" ":fairy_woman:" ":basketball_man:" ":lotus_position:" ":two_hearts:" ":martinique:" ":bulb:" ":eye_speech_bubble:" ":cow:" ":leafy_green:" ":ok_person:" ":fearful:" ":grinning:" ":south_africa:" ":bathtub:" ":exploding_head:" ":svalbard_jan_mayen:" ":person_in_tuxedo:" ":ping_pong:" ":timer_clock:" ":mechanical_arm:" ":lady_beetle:" ":squid:" ":u5272:" ":rooster:" ":vs:" ":vulcan_salute:" ":fist_oncoming:" ":bullettrain_front:" ":white_circle:" ":medical_symbol:" ":flying_disc:" ":woman_shrugging:" ":infinity:" ":u6307:" ":student:" ":mage_man:" ":european_union:" ":whale:" ":broccoli:" ":sunrise:" ":arrow_double_down:" ":tristan_da_cunha:" ":indonesia:" ":cup_with_straw:" ":weight_lifting_man:" ":muscle:" ":spiral_notepad:" ":rocket:" ":camel:" ":boot:" ":yellow_circle:" ":flashlight:" ":micronesia:" ":aruba:" ":desktop_computer:" ":ski:" ":musical_keyboard:" ":potable_water:" ":clock1:" ":face_with_thermometer:" ":clock3:" ":five:" ":clock5:" ":knot:" ":clock7:" ":clock8:" ":clock9:" ":doughnut:" ":flamingo:" ":onion:" ":candy:" ":two_men_holding_hands:" ":dancer:" ":roll_eyes:" ":film_strip:" ":mozambique:" ":orange_heart:" ":shrug:" ":camera_flash:" ":turkmenistan:" ":teddy_bear:" ":red_envelope:" ":e-mail:" ":woman_cook:" ":vampire_woman:" ":zombie_man:" ":chains:" ":white_heart:" ":ice_hockey:" ":guardswoman:" ":rock:" ":kissing_smiling_eyes:" ":fish_cake:" ":cupcake:" ":no_pedestrians:" ":arrow_backward:" ":clock12:" ":clock10:" ":clock11:" ":sweat:" ":water_polo:" ":mountain_railway:" ":tongue:" ":owl:" ":black_square_button:" ":vampire_man:" ":neckbeard:" ":socks:" ":guard:" ":ok_hand:" ":custard:" ":rowboat:" ":person_bald:" ":firefighter:" ":no_smoking:" ":slovakia:" ":oil_drum:" ":family_man_boy_boy:" ":cricket:" ":receipt:" ":mahjong:" ":bus:" ":laos:" ":mountain_biking_woman:" ":construction:" ":fallen_leaf:" ":ear:" ":woman_artist:" ":bug:" ":person_red_hair:" ":st_martin:" ":eject_button:" ":nesting_dolls:" ":cricket_game:" ":vomiting_face:" ":mortar_board:" ":pie:" ":pig:" ":paraguay:" ":green_square:" ":arrow_upper_right:" ":book:" ":clock1130:" ":boom:" ":bouncing_ball_man:" ":racehorse:" ":exclamation:" ":repeat:" ":star:" ":rabbit2:" ":mailbox_with_no_mail:" ":footprints:" ":ghost:" ":droplet:" ":woman_beard:" ":vibration_mode:" ":previous_track_button:" ":smirk:" ":guide_dog:" )