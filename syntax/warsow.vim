" Vim syntax file
" Language:     War§oW 1.0.21
" Maintainer:   Tomasz 'SpOOnman' Kalkosiñski <spoonman@op.pl>
" URL:          http://www.haze.ehost.pl/spoonman
" Last change:  02 Jan 2007

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif


syn case ignore

"Logical operators
syn match wswOperator "[-+=&|*!.,~?:/<>]"

"Comments
syn region wswComment   start="\/\/" end="$" oneline contains=wswTodo
syn region wswComment   start="\/\*" end="\*\/" fold contains=wswTodo

"Numbers
syn match wswNumber "[0-9]\+" 

"Strings
syn region wswString start="\"" end="\"" end="$" contains=wswCarret,wswCommand,wswVariable,wswNumber,wswKeyword

"War§oW commands
syn keyword wswCommand  addbotroam addip addmonster addnode alias aliasa aliaslist
syn keyword wswCommand  attack attack back back bind bindlist botdebug callvote camswitch
syn keyword wswCommand  centerview centerviewonvec chase chasenext chaseprev cinematic
syn keyword wswCommand  clear cmd cmdlist cointoss condump connect cvarlist demo demoavi
syn keyword wswCommand  demoget demojump demolist demopause devmap disconnect downloadcancel
syn keyword wswCommand  downloadstatus drop dropnode dumpuser dynvarlist echo editnodes
syn keyword wswCommand  enterqueue envshot error exec forward forward fs_pakfile fs_path
syn keyword wswCommand  gamemap getinfo gfxinfo give god heartbeat help_hud imagelist
syn keyword wswCommand  in_restart invdrop inven invite invnext invnextw invprev invprevw
syn keyword wswCommand  invuse irc_connect irc_disconnect join kick kill killserver klook
syn keyword wswCommand  klook leavequeue left left listip lookdown lookdown lookup lookup
syn keyword wswCommand  makenodes map memlist memstats menu_demos menu_failed menu_game
syn keyword wswCommand  menu_gfx menu_glext menu_joinserver menu_keys menu_main menu_mods
syn keyword wswCommand  menu_msgbox menu_options menu_playerconfig menu_quit menu_setup
syn keyword wswCommand  menu_sound menu_startserver menu_teamconfig menu_video menu_vsays
syn keyword wswCommand  messagemode messagemode2 mlook mlook modellist movedown movedown
syn keyword wswCommand  moveleft moveleft moveright moveright moveup moveup music next
syn keyword wswCommand  noclip notready pingserver players position purelist putaway quit
syn keyword wswCommand  rcon ready reconnect record removeip requestservers right right
syn keyword wswCommand  savenodes say say_team score scores scores screenshot serverinfo
syn keyword wswCommand  serverrecord serverrecordcancel serverrecordstop set seta setdyn
syn keyword wswCommand  sets setu shaderlist showip showplinks showserverip sizedown sizeup
syn keyword wswCommand  soundinfo soundlist spec special special speed speed s_restart
syn keyword wswCommand  stats status stop stopmusic stopsound strafe strafe svdemolist
syn keyword wswCommand  svscore svuse timein timeout toggle toggleconsole toggleready
syn keyword wswCommand  unalias unaliasall unbind unbindall unready use use use userinfo
syn keyword wswCommand  vid_modelist vid_restart vote vsay vsay_team vstr wait wave weapnext
syn keyword wswCommand  weapprev writeconfig writeip

"Commands special
syn keyword wswCommand  yes no 

"War§oW variables
syn keyword wswVariable bot_debugmonster bot_showcombat bot_showlrgoal
syn keyword wswVariable bot_showpath bot_showsrgoal cg_autoaction cg_autoaction_demo
syn keyword wswVariable cg_autoaction_screenshot cg_autoaction_spectator cg_bloodTrail
syn keyword wswVariable cg_bloodTrailAlpha cg_bobPitch cg_bobRoll cg_bobSpeed cg_bobYaw
syn keyword wswVariable cg_centerTime cg_clientHUD cg_crosshair cg_crosshair_color
syn keyword wswVariable cg_crosshair_size cg_crosshair_strong cg_crosshair_strong_color
syn keyword wswVariable cg_crosshair_strong_size cg_damage_blend cg_damage_kick cg_debug_HUD
syn keyword wswVariable cg_debugLoading cg_debugPlayerModels cg_debugWeaponModels cg_decals
syn keyword wswVariable cg_demo_truePOV cg_draw2D cg_ejectBrass cg_explosionsAlpha
syn keyword wswVariable cg_explosionsRing cg_explosionsRingAlpha cg_footSteps
syn keyword wswVariable cg_forceEnemyTeam cg_forceMyTeam cg_forceMyTeamAlpha
syn keyword wswVariable cg_forceTeamAlpha cg_forceTeamPlayersTeamBeta cg_gibs
syn keyword wswVariable cg_grenadeTrail cg_grenadeTrailAlpha cg_gun cg_gunx cg_guny
syn keyword wswVariable cg_gunz cg_handOffset cg_laserBeamSubdivisions cg_noSkins
syn keyword wswVariable cg_outlineItemsBlack cg_outlineModels cg_outlinePlayersBlack
syn keyword wswVariable cg_particles cg_pickup_flash cg_playerTrailsColor
syn keyword wswVariable cg_predict cg_predictLaserBeam cg_predictProjectiles
syn keyword wswVariable cg_rocketTrail cg_rocketTrailAlpha cg_scoreboardFont
syn keyword wswVariable cg_scoreboardStats cg_scoreboardWidthScale cg_shadows
syn keyword wswVariable cg_showBloodTrail cg_showFPS cg_showhelp cg_showHUD cg_showMiss
syn keyword wswVariable cg_showObituaries cg_showPlayerNames cg_showPlayerNames_alpha
syn keyword wswVariable cg_showPlayerNames_xoffset cg_showPlayerNames_yoffset
syn keyword wswVariable cg_showPlayerNames_zfar cg_showPlayerTrails cg_showPointedPlayer
syn keyword wswVariable cg_showSpeedMeter cg_showTeamLocations cg_showTimer cg_showViewBlends
syn keyword wswVariable cg_showWeaponSelect cg_simpleItems cg_simpleItemsSize
syn keyword wswVariable cg_teamALPHAcolor cg_teamALPHAmodel cg_teamALPHAskin cg_teamBETAcolor
syn keyword wswVariable cg_teamBETAmodel cg_teamBETAskin cg_teamBLUEcolor cg_teamBLUEmodel
syn keyword wswVariable cg_teamBLUEskin cg_teamDELTAcolor cg_teamDELTAmodel
syn keyword wswVariable cg_teamDELTAskin cg_teamGAMMAcolor cg_teamGAMMAmodel
syn keyword wswVariable cg_teamGAMMAskin cg_teamGREENcolor cg_teamGREENmodel
syn keyword wswVariable cg_teamGREENskin cg_teamPLAYERScolor cg_teamPLAYERSmodel
syn keyword wswVariable cg_teamPLAYERSskin cg_teamREDcolor cg_teamREDmodel cg_teamREDskin
syn keyword wswVariable cg_teamYELLOWcolor cg_teamYELLOWmodel cg_teamYELLOWskin
syn keyword wswVariable cg_thirdPerson cg_thirdPersonAngle cg_thirdPersonRange
syn keyword wswVariable cg_viewSize cg_voiceChats cg_volume_announcer cg_volume_effects
syn keyword wswVariable cg_volume_hitsound cg_volume_players cg_volume_voicechats cg_vwep
syn keyword wswVariable cg_weaponFlashes cg_weaponlist cl_anglespeedkey cl_battleye
syn keyword wswVariable cl_compresspackets cl_debug_serverCmd cl_demoavi_fps
syn keyword wswVariable cl_demoavi_scissor cl_downloads cl_downloads_from_web
syn keyword wswVariable cl_forwardspeed cl_freelook cl_maxfps cl_maxpackets
syn keyword wswVariable cl_pitchspeed cl_pps cl_run cl_shownet cl_sidespeed cl_stereo
syn keyword wswVariable cl_stereo_separation cl_synchusercmd cl_timeout cl_ucmdElapsedTime
syn keyword wswVariable cl_ucmdFPS cl_ucmdMaxResend cl_upspeed cl_yawspeed cm_noAreas
syn keyword wswVariable cm_noCurves color com_showtrace con_drawNotify con_fontSystemBig
syn keyword wswVariable con_fontSystemMedium con_fontSystemSmall con_notifytime con_printText
syn keyword wswVariable debuggraph dedicated developer developerMemory dmflags filterban
syn keyword wswVariable fixedtime fov fs_basegame fs_basepath fs_cdpath fs_game fs_usehomedir
syn keyword wswVariable g_allow_falldamage gamedate gamename g_antilag g_antilag_maxtimedelta
syn keyword wswVariable g_antilag_timenudge g_autorecord g_autorecord_maxdemos
syn keyword wswVariable g_challengers_queue g_countdown_time g_deadbody_filter
syn keyword wswVariable g_deadbody_followkiller g_disable_vote_allow_falldamage
syn keyword wswVariable g_disable_vote_allow_teamdamage g_disable_vote_allready
syn keyword wswVariable g_disable_vote_challengers_queue g_disable_vote_extended_time
syn keyword wswVariable g_disable_vote_gametype g_disable_vote_kick g_disable_vote_lock
syn keyword wswVariable g_disable_vote_lock_teams g_disable_vote_map
syn keyword wswVariable g_disable_vote_maxteamplayers g_disable_vote_maxteams
syn keyword wswVariable g_disable_vote_maxtimeouts g_disable_vote_mute
syn keyword wswVariable g_disable_vote_nextmap g_disable_vote_numbots g_disable_vote_remove
syn keyword wswVariable g_disable_vote_restart g_disable_vote_scorelimit
syn keyword wswVariable g_disable_vote_timein g_disable_vote_timelimit g_disable_vote_timeout
syn keyword wswVariable g_disable_vote_unlock g_disable_vote_vmute g_disable_vote_warmup
syn keyword wswVariable g_disable_vote_warmup_timelimit g_floodprotection_delay
syn keyword wswVariable g_floodprotection_messages g_floodprotection_seconds g_gametype
syn keyword wswVariable g_gametypes_available g_gravity g_grenade_backoff g_grenade_gravity
syn keyword wswVariable g_grenade_relative g_instagib gl_arb_program gl_cull gl_delayfinish
syn keyword wswVariable gl_drawbuffer gl_driver gl_ext_bgra gl_ext_compiled_vertex_array
syn keyword wswVariable gl_ext_compressed_textures gl_ext_draw_range_elements gl_extensions
syn keyword wswVariable gl_ext_max_texture_filter_anisotropic gl_ext_multitexture
syn keyword wswVariable gl_ext_NV_texture_env_combine4 gl_ext_texture3D
syn keyword wswVariable gl_ext_texture_cube_map gl_ext_texture_edge_clamp
syn keyword wswVariable gl_ext_texture_env_add gl_ext_texture_env_combine
syn keyword wswVariable gl_ext_texture_env_dot3 gl_ext_texture_filter_anisotropic
syn keyword wswVariable gl_ext_vertex_buffer_object gl_finish g_maplist
syn keyword wswVariable g_maprotation g_match_extendedtime g_match_score g_match_time
syn keyword wswVariable g_maxteams g_maxtimeouts g_maxvelocity g_needpass g_numbots
syn keyword wswVariable g_projectile_prestep g_projectile_touch_owner graphheight
syn keyword wswVariable graphscale graphshift g_respawn_delay_max g_respawn_delay_min
syn keyword wswVariable g_scorelimit g_select_empty g_self_knockback g_tctf g_teams_lock
syn keyword wswVariable g_teams_maxplayers g_teams_teamdamage g_timelimit g_uploads_demos
syn keyword wswVariable g_votable_gametypes g_vote_allowed g_vote_electtime g_vote_percent
syn keyword wswVariable g_warmup_enabled g_warmup_timelimit hand host_speeds in_dgamouse
syn keyword wswVariable in_grabinconsole in_minmsecs in_mouse ip irc_colors irc_console
syn keyword wswVariable irc_nick irc_password irc_port irc_rcon irc_rconTimeout irc_server
syn keyword wswVariable irc_user irc_window irc_windowLines irc_windowWidth logconsole
syn keyword wswVariable logconsole_append logconsole_flush log_stats lookspring lookstrafe
syn keyword wswVariable m_accel mapname masterservers m_filter m_filterStrength m_forward
syn keyword wswVariable model m_pitch m_side m_yaw name netgraph net_showfragments nostdout
syn keyword wswVariable password port protocol qport r_3dlabs_broken r_allow_software
syn keyword wswVariable r_ambientscale rate r_bloom r_bloom_alpha r_bloom_darken
syn keyword wswVariable r_bloom_diamond_size r_bloom_fast_sample r_bloom_intensity
syn keyword wswVariable r_bloom_sample_size r_bumpscale r_clear r_colorbits rcon_address
syn keyword wswVariable rcon_password r_detailtextures r_directedscale r_drawentities
syn keyword wswVariable r_draworder r_drawworld r_dynamiclight r_faceplanecull r_fastsky
syn keyword wswVariable r_flarefade r_flares r_flaresize r_fullbright r_gamma r_ignorehwgamma
syn keyword wswVariable r_lerpmodels r_lightmap r_lockpvs r_lodbias r_lodscale
syn keyword wswVariable r_mapoverbrightbits r_maxLMBlockSize r_mode r_nobind r_nocull
syn keyword wswVariable r_norefresh r_novis r_overbrightbits r_packlightmaps r_picmip
syn keyword wswVariable r_polyblend r_screenshot_jpeg r_screenshot_jpeg_quality r_shadows
syn keyword wswVariable r_shadows_alpha r_shadows_nudge r_shadows_projection_distance
syn keyword wswVariable r_shownormals r_showtris r_skymip r_speeds r_spherecull r_stencilbits
syn keyword wswVariable r_subdivisions r_swapinterval r_texturebits r_texturemode s_bits
syn keyword wswVariable s_channels scr_consize scr_conspeed s_device sensitivity showdrop
syn keyword wswVariable showpackets s_khz skin s_mixahead s_module s_module_fallback
syn keyword wswVariable s_musicvolume s_show s_swapstereo s_testsound sv_battleye
syn keyword wswVariable sv_cheats sv_compresspackets sv_debug_serverCmd sv_defaultmap
syn keyword wswVariable sv_enforcetime sv_fps sv_hostname sv_maxclients sv_maxentities
syn keyword wswVariable sv_maxrate sv_noreload s_volume s_vorbis sv_pps sv_public sv_pure
syn keyword wswVariable sv_reconnectlimit sv_showclamp sv_skilllevel sv_timeout sv_uploads
syn keyword wswVariable sv_uploads_baseurl sv_uploads_from_server sv_zombietime timedemo
syn keyword wswVariable timegraph timescale ui_filter_battleye ui_filter_empty ui_filter_full
syn keyword wswVariable ui_filter_gametype ui_filter_password ui_filter_ping ui_filter_skill
syn keyword wswVariable ui_playermodel_firstframe ui_playermodel_fps ui_playermodel_lastframe
syn keyword wswVariable version vid_customheight vid_customwidth vid_fullscreen vid_xpos
syn keyword wswVariable vid_ypos

"War§oW dynamic variables
syn keyword wswVariable key_colorEscape m_filterBufferDecay m_filterBufferSize sys_uptime

"Some War§ow keywords used in player configs
syn keyword wswKeyword  LaserGun Gunblade RiotGun Grenade Rocket Launcher Plasmagun Electrobolt 
syn keyword wswKeyword  weapon flag ammo

"Color names, like ^7Sp^4OO^7nman
syn region wswCarret    matchgroup=wswKeyword start="\^[0-9A-Za-z]" end="[$\^\"\n]\@=" "start : hs=e+1
hi wswCarret        gui=Underline


"War§oW HUD scripting

"PreProc - include (like C)
syn keyword wswPreproc  include

"Conditional commands
syn keyword wswConditional  if else endif

"HUD functions
syn keyword wswFunction setCursor setAlign setSize setFont setFontstyle setColor setFlashColor
syn keyword wswFunction setColorToTeamColor setFlashColorToTeamColor setColorAlpha
syn keyword wswFunction setFlashColorAlpha setRotationSpeed drawFPS drawSpeed drawClock
syn keyword wswFunction drawHelpString drawPlayername drawPointing drawStatString
syn keyword wswFunction drawItemName drawString drawStringNum drawNum drawStretchNum
syn keyword wswFunction drawBar drawPicByIndex drawPicByItemindex drawPicByItemname
syn keyword wswFunction drawPicByName drawModelByIndex drawModelByName drawModelByItemindex
syn keyword wswFunction drawModelByItemname drawWeaponList drawTeamInfo drawRaceTimer
syn keyword wswFunction drawClockText

"HUD constants
syn match wswConstant   "#"
syn keyword wswConstant NOTSET TEAM_SPECTATOR TEAM_PLAYERS TEAM_RED TEAM_BLUE TEAM_GREEN
syn keyword wswConstant TEAM_YELLOW LEFT CENTER RIGHT TOP MIDDLE BOTTOM WIDTH HEIGHT
syn keyword wswConstant GAMETYPE_CTF GAMETYPE_DM GAMETYPE_DUEL GAMETYPE_INSTAGIB
syn keyword wswConstant GAMETYPE_TDM GAMETYPE_MIDAIR GAMETYPE_RACE CTF_STAT_BLUE_FLAG
syn keyword wswConstant FLAG_SAFE FLAG_STOLEN FLAG_DROPPED

"HUD stats
syn match wswStat "%"
syn keyword wswStat STAT_GAMETYPE STAT_HEALTH STAT_AMMO STAT_AMMO_ITEM STAT_WEAK_AMMO
syn keyword wswStat STAT_ARMOR STAT_ARMOR_ITEM STAT_SELECTED_ITEM STAT_PICKUP_ITEM
syn keyword wswStat STAT_WEAPON_ITEM STAT_POWERUP_ITEM STAT_LAYOUTS STAT_FRAGS
syn keyword wswStat STAT_TEAM STAT_CHASING STAT_POINTED_PLAYER STAT_POINTED_TEAMPLAYER
syn keyword wswStat STAT_RACE_STARTED STAT_RACE_TIME STAT_RACE_PLAYERBESTTIME
syn keyword wswStat STAT_RACE_MATCHBESTTIME STAT_TEAM_RED_SCORE STAT_TEAM_BLUE_SCORE
syn keyword wswStat STAT_TEAM_GREEN_SCORE STAT_TEAM_YELLOW_SCORE STAT_CTF_RED_FLAG
syn keyword wswStat STAT_CTF_BLUE_FLAG

"TODO
syn keyword wswTodo TODO

syn case match

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_blank_syntax_inits")
  if version < 508
    let did_blank_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink wswPreproc     PreProc
  HiLink wswConditional Conditional
  HiLink wswComment     Comment
  HiLink wswOperator    Operator
  HiLink wswString      String
  HiLink wswNumber      Number
  HiLink wswStat        Type
  HiLink wswConstant    Define
  HiLink wswFunction    Function
  HiLink wswCommand     Function
  HiLink wswVariable    Identifier
  HiLink wswKeyword     Special
  HiLink wswTodo        Todo

  delcommand HiLink
endif

let b:current_syntax = "warsow"
