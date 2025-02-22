local E = require('qmk.errors')

local empty = '   '

local M = {}

--borrowed lovingly from reference https://github.com/2hwk/Q2K/blob/master/q2k/reference.py
M.key_map = {
	KC_NO = 'no', ---giorgio,2018
	KC_TRNS = empty,
	KC_TRANKC_TRNS = empty, --"trans",
	XXXXXXX = 'no',
	_______ = empty,
	RESET = 'boot',
	MAGIC_HOST_NKRO = 'kro_n', --FORCENKRO
	MAGIC_UNHOST_NKRO = 'kro_6', --FORCE6KRO
	MAGIC_TOGGLE_NKRO = 'kro_auto', --SetAutoNKRO
	KC_GESC = 'gesc',

	--Alphas
	KC_GRV = '`',
	KC_GRAVE = '`', --"grave",#Grave(~`)kro_6
	KC_1 = '1',
	KC_2 = '2',
	KC_3 = '3',
	KC_4 = '4',
	KC_5 = '5',
	KC_6 = '6',
	KC_7 = '7',
	KC_8 = '8',
	KC_9 = '9',
	KC_0 = '0',
	KC_MINS = '-',
	KC_MINUS = '-', --"minus",#Minus(-_)
	KC_EQL = '=',
	KC_EQUAL = '=', --"equal",#Equal(=+)
	KC_Q = 'q',
	KC_W = 'w',
	KC_E = 'e',
	KC_R = 'r',
	KC_T = 't',
	KC_Y = 'y',
	KC_U = 'u',
	KC_I = 'i',
	KC_O = 'o',
	KC_P = 'p',
	KC_LBRC = '[',
	KC_LBRACKET = '[', --"left_bracket",#LeftBracket([)
	KC_RBRC = ']',
	KC_RBRACKET = ']', --"right_bracket",#RightBracket(])
	KC_BSLS = '\\', --"bsls",
	KC_BSLASH = '\\', --Backslash(\|)
	KC_BACKSLASH = '\\', --Backslash(\|)
	KC_A = 'a',
	KC_S = 's',
	KC_D = 'd',
	KC_F = 'f',
	KC_G = 'g',
	KC_H = 'h',
	KC_J = 'j',
	KC_K = 'k',
	KC_L = 'l',
	KC_SCLN = ';',
	KC_SCOLON = ';', --"semicolon",#Semicolon(;:)
	KC_QUOT = "'",
	KC_QUOTE = "'", --"quot",#Quote('")
	KC_Z = 'z',
	KC_X = 'x',
	KC_C = 'c',
	KC_V = 'v',
	KC_B = 'b',
	KC_N = 'n',
	KC_M = 'm',
	KC_COMM = ',',
	KC_COMMA = ',', --"comma",#Comma(,<)
	KC_DOT = '.', --Period(.>)
	KC_SLSH = '/',
	KC_SLASH = '/', --"forward_slash",#ForwardSlash(/?)
	KC_SPC = 'spc',
	KC_SPACE = 'spc', --"spacebar",#Spacebar

	--Modifiers
	KC_RCTL = 'rctl',
	KC_RCTRL = 'rctl', --"rctrl",#RightCtrl
	KC_LCTL = 'lctl',
	KC_LCTRL = 'lctl', --"lctrl",#LeftCtrl
	KC_RSFT = 'rsft',
	KC_RSHIFT = 'rsft', --"rshift",#RightShift
	KC_LSFT = 'lsft',
	KC_LSHIFT = 'lsft', --"lshift",#LeftShift
	KC_LGUI = 'lgui',
	KC_LWIN = 'lgui', --"lwin",
	KC_LCMD = 'lgui', --LeftGUI/Win
	KC_RGUI = 'rgui',
	KC_RWIN = 'rgui', --"rwin",
	KC_RCMD = 'rgui', --RightGUI/Win
	KC_LALT = 'lalt', --LeftAlt
	KC_RALT = 'ralt', --RightAlt
	KC_BSPC = 'bspc',
	KC_BSPACE = 'bspc', --"backspace",#Backspace
	KC_ENT = 'ent',
	KC_ENTER = 'ent', --"enter",#Enter
	KC_TAB = 'tab', --Tab
	KC_CAPS = 'caps',
	KC_CLCK = 'caps',
	KC_CAPSLOCK = 'caps', --"caps_lock""kp_ent",,#CapsLock
	KC_RGHT = 'rght',
	KC_RIGHT = 'rght', --"right",#rightarrow
	KC_UP = 'up',
	KC_DOWN = 'down',
	KC_LEFT = 'left',
	--Function
	KC_ESC = 'esc',
	KC_ESCAPE = 'esc', --"escape",#Escape
	KC_F1 = 'f1',

	KC_F2 = 'f2',
	KC_F3 = 'f3',
	KC_F4 = 'f4',
	KC_F5 = 'f5',
	KC_F6 = 'f6',
	KC_F7 = 'f7',
	KC_F8 = 'f8',
	KC_F9 = 'f9',
	KC_F10 = 'f10',
	KC_F11 = 'f11',
	KC_F12 = 'f12',
	KC_PSCR = 'pscr',
	KC_PSCREEN = 'pscr', --"print_screen",#PrintScreen
	KC_SLCK = 'slck',
	KC_SCROLLLOCK = 'slck', --"scroll_lock",#ScrollLock
	KC_PAUS = 'paus',
	KC_BRK = 'paus',
	KC_PAUSE = 'paus', --"pause",#Pause/Break
	KC_INS = 'ins',
	KC_INSERT = 'ins', --"insert",#Insert
	KC_DEL = 'del',
	KC_DELT = 'del',
	KC_DELETE = 'del', --"delete",#Delete
	KC_HOME = 'home', --Home
	KC_END = 'end', --End
	KC_PGUP = 'pgup', --PageUp
	KC_PGDN = 'pgdn',
	KC_PGDOWN = 'pgdn', --"page_down",#PageDown
	KC_F13 = 'f13',
	KC_F14 = 'f14',
	KC_F15 = 'f15',
	KC_F16 = 'f16',
	KC_F17 = 'f17',
	KC_F18 = 'f18',
	KC_F19 = 'f19',
	KC_F20 = 'f20',
	KC_F21 = 'f21',
	KC_F22 = 'f22',
	KC_F23 = 'f23',
	KC_F24 = 'f24',
	--Shifted
	KC_TILDE = '~',
	KC_TILD = '~',
	KC_EXCLAIM = '!',
	KC_EXLM = '!',
	KC_AT = '@',
	KC_HASH = '#',
	KC_DOLLAR = '$',
	KC_DLR = '$',
	KC_PERCENT = '%%', -- double for printf ??
	KC_PERC = '%%', -- double for printf ??
	KC_CIRCUMFLEX = '^',
	KC_CIRC = '^',
	KC_AMPERSAND = '&',
	KC_AMPR = '&',
	KC_ASTERISK = '*',
	KC_ASTR = '*',
	KC_LEFT_PAREN = '(',
	KC_LPRN = '(',
	KC_RIGHT_PAREN = ')',
	KC_RPRN = ')',
	KC_UNDERSCORE = '_',
	KC_UNDS = '_',
	KC_PLUS = '+',
	KC_LEFT_CURLY_BRACE = '{',
	KC_RIGHT_CURLY_BRACE = '}',
	KC_LCBR = '{',
	KC_RCBR = '}',
	KC_LEFT_BRACKET = '[',
	KC_RIGHT_BRACKET = ']',
	KC_PIPE = '|',
	KC_COLON = ':',
	KC_COLN = ':',
	KC_DOUBLE_QUOTE = '""',
	KC_DQT = '""',
	KC_DQUO = '""',
	KC_LEFT_ANGLE_BRACKET = '<',
	KC_LT = '<',
	KC_LABK = '<',
	KC_RIGHT_ANGLE_BRACKET = '>',
	KC_GT = '>',
	KC_RABK = '>',
	KC_QUESTION = '?',
	KC_QUES = '?',

	--Numpad
	KC_NLCK = 'nlck',
	KC_NUMLOCK = 'nlck', --"num_lock",#NumLock
	KC_P1 = 'kp_1',
	KC_KP_1 = 'kp_1', --Numpad1
	KC_P2 = 'kp_2',
	KC_KP_2 = 'kp_2', --Numpad2
	KC_P3 = 'kp_3',
	KC_KP_3 = 'kp_3', --Numpad3
	KC_P4 = 'kp_4',
	KC_KP_4 = 'kp_4', --Numpad4
	KC_P5 = 'kp_5',
	KC_KP_5 = 'kp_5', --Numpad5
	KC_P6 = 'kp_6',
	KC_KP_6 = 'kp_6', --Numpad6
	KC_P7 = 'kp_7',
	KC_KP_7 = 'kp_7', --Numpad7
	KC_P8 = 'kp_8',
	KC_KP_8 = 'kp_8', --Numpad8
	KC_P9 = 'kp_9',
	KC_KP_9 = 'kp_9', --Numpad9
	KC_P0 = 'kp_0',
	KC_KP_0 = 'kp_0', --Numpad0
	KC_PDOT = 'kp_.',
	KC_KP_DOT = 'kp_.', --Numpad.
	KC_PCMM = 'kp_,',
	KC_KP_COMMA = 'kp_,', --Numpad,
	KC_PSLS = 'kp_/',
	KC_KP_SLASH = 'kp_/', --Numpad/
	KC_PAST = 'kp_*',
	KC_KP_ASTERISK = 'kp_*', --Numpad*
	KC_PMNS = 'kp_-',
	KC_KP_MINUS = 'kp_-', --Numpad-
	KC_PPLS = 'kp_+',
	KC_KP_PLUS = 'kp_+', --Numpad+
	KC_PEQL = 'kp_=',
	KC_KP_EQUAL = 'kp_=', --Numpad=
	KC_PENT = 'kp_ent',
	KC_KP_ENTER = 'kp_ent', --"kp_enter",#NumpadEnter

	--MiscFunctions
	KC_APP = 'app',
	KC_APPLICATION = 'app', --Application
	KC_LCAP = 'locking_caps_lock',
	KC_EXEC = 'execute',
	KC_EXECUTE = 'execute', --Execute
	KC_SLCT = 'select',
	KC_SELECT = 'select', --Select____
	KC_AGIN = 'again',
	KC_AGAIN = 'again', --Again
	KC_HELP = 'help',
	KC_MENU = 'hid_menu', --Menu
	KC_UNDO = 'undo', --Undo
	KC_CUT = 'cut', --Cut
	KC_COPY = 'copy', --Copy
	KC_PSTE = 'paste',
	KC_PASTE = 'paste', --Paste
	KC_FIND = 'find', --Find
	KC_CANCEL = 'cancel', --Cancel
	KC_SYSREQ = 'sys_req', --SYSREQ
	KC_PRIOR = 'prior',
	KC_SEPERATOR = 'separator',
	KC_RETURN = 'return',
	KC_OUT = 'out',
	KC_OPER = 'oper',
	KC_CLEAR_AGAIN = 'clear_again',
	KC_CRSEL = 'crsel',
	KC_EXSEL = 'exsel',
	KC_STOP = 'stop',

	KC_LOCKING_CAPS = 'locking_caps_lock', --LockingCapsLock
	KC_LNUM = 'locking_num_lock',
	KC_LOCKING_NUM = 'locking_num_lock', --LockingNumLock
	KC_LSCR = 'locking_scroll_lock',
	KC_LOCKING_SCROLL = 'locking_scroll_lock', --LockingScrollLock
	KC_ERAS = 'alternate_erase',
	KC_ALT_ERASE = 'alternate_erase', --AlternateErase
	KC_CLR = 'clear',
	KC_CLEAR = 'clear', --Clear
	KC_NUHS = 'iso--',
	KC_NONUS_HASH = 'iso_hash', --ISOhash(#~)
	KC_NUBS = 'iso\\',
	KC_NONUS_BSLASH = 'iso\\', --ISOBackslash(\|)
	KC_ZKHK = '`', --JISGrave
	KC_RO = 'int1',
	KC_INT1 = 'int1', --JIS\|
	KC_KANA = 'int2',
	KC_INT2 = 'int2', --JISKatakana/Hiragana
	KC_JYEN = 'int3',
	KC_INT3 = 'int3', --JISY
	KC_HENK = 'int4',
	KC_INT4 = 'int4', --JISHenkan
	KC_MHEN = 'int5',
	KC_INT5 = 'int5', --JISMuhenkan
	KC_INT6 = 'int6',
	KC_INT7 = 'int7',
	KC_INT8 = 'int8',
	KC_INT9 = 'int9',
	KC_HAEN = 'lang1',
	KC_LANG1 = 'lang1', --KRHangul/ENG
	KC_HANJ = 'lang2',
	KC_LANG2 = 'lang2', --KRHanja
	KC_LANG3 = 'lang3',
	KC_LANG4 = 'lang4',
	KC_LANG5 = 'lang5',
	KC_LANG6 = 'lang6',
	KC_LANG7 = 'lang7',
	KC_LANG8 = 'lang8',
	KC_LANG9 = 'lang9',

	--MediaControls
	KC__MUTE = 'mute',
	KC_MUTE = 'mute',
	KC_AUDIO_MUTE = 'mute', --"audio_mute",#AudioMute
	KC_VOLU = 'volu',
	KC__VOLUP = 'volu',
	KC_AUDIO_VOL_UP = 'volu', --"audio_vol_up",#AudioVol.Up
	KC_VOLD = 'vold',
	KC__VOLDOWN = 'vold',
	KC_AUDIO_VOL_DOWN = 'vold', --"audio_vol_down",#AudioVol.Down
	KC_MNXT = 'mnxt',
	KC_MEDIA_NEXT_TRACK = 'mnxt', --"media_next_track",#MediaNextTrack
	KC_MPRV = 'mprv',
	KC_MEDIA_PREV_TRACK = 'mprv', --"media_prev_track",#MediaPrevTrack
	KC_MFFD = 'mffd',
	KC_MEDIA_FAST_FORWARD = 'mffd', --"media_fast_forward",#MediaFastForward
	KC_MRWD = 'mrwd',
	KC_MEDIA_REWIND = 'mrwd', --"media_rewind",#MediaRewind
	KC_MSTP = 'mstp',
	KC_MEDIA_STOP = 'mstp', --"media_stop",#MediaStop
	KC_MPLY = 'mply',
	KC_MEDIA_PLAY_PAUSE = 'mply', --"media_play_pause",#MediaPlay/Pause
	KC_MSEL = 'msel',
	KC_MEDIA_SELECT = 'msel', --"media_select",#MediaSelect
	KC_EJCT = 'mjct',
	KC_MEDIA_EJECT = 'mjct', --"media_eject",#MediaEject

	--WWW
	KC_MAIL = 'mail', --Mail
	KC_CALC = 'calc',
	KC_CALCULATOR = 'calc', --Calculator
	KC_MYCM = 'comp',
	KC_MY_COMPUTER = 'my_computer', --MyComputer
	KC_WSCH = 'www_search',
	KC_WWW_SEARCH = 'www_search', --WWWSearch
	KC_WHOM = 'www_home',
	KC_WWW_HOME = 'www_home', --WWWHome
	KC_WBAK = 'www_back',
	KC_WWW_BACK = 'www_back', --WWWBack
	KC_WFWD = 'www_forward',
	KC_WWW_FORWARD = 'www_forward', --WWWForward
	KC_WSTP = 'www_stop',
	KC_WWW_STOP = 'www_stop', --WWWStop
	KC_WREF = 'www_refresh',
	KC_WWW_REFRESH = 'www_refresh', --WWWRefresh
	KC_WFAV = 'www_favourites',
	KC_WWW_FAVORITES = 'www_favourites', --WWWFavourites

	--Mousekey
	KC_MS_U = 'ms_u',
	KC_MS_UP = 'ms_u', --"mouse_up",#MouseUp
	KC_MS_D = 'ms_d',
	KC_MS_DOWN = 'ms_d', --"mouse_down",#MouseDown
	KC_MS_L = 'ms_l',
	KC_MS_LEFT = 'ms_l', --"mouse_left",#MouseLeft
	KC_MS_R = 'ms_r',
	KC_MS_RIGHT = 'ms_r', --"mouse_right",#MouseRight
	KC_BTN1 = 'btn1',
	KC_MS_BTN1 = 'btn1', --"mouse_btn1",#MOUSE1
	KC_BTN2 = 'btn2',
	KC_MS_BTN2 = 'btn2', --"mouse_btn2",#MOUSE2
	KC_BTN3 = 'btn3',
	KC_MS_BTN3 = 'btn3', --"mouse_btn3",#MOUSE3
	KC_BTN4 = 'btn4',
	KC_MS_BTN4 = 'btn4', --"mouse_btn4",#MOUSE4
	KC_BTN5 = 'btn5',
	KC_MS_BTN5 = 'btn5', --"mouse_btn5",#MOUSE5
	KC_WH_U = 'wh_u',
	KC_MS_WH_UP = 'wh_u', --"mouse_wh_up",#MouseWheelUp
	KC_WH_D = 'wh_d',
	KC_MS_WH_DOWN = 'wh_d', --"mouse_wh_down",#MouseWheelDown
	KC_WH_L = 'wh_l',
	KC_MS_WH_LEFT = 'wh_l', --"mouse_wh_left",#MouseWheelLeft
	KC_WH_R = 'wh_r',
	KC_MS_WH_RIGHT = 'wh_r', --"mouse_wh_right",#MouseWheelRight

	-- System
	KC_PWR = 'system_power',
	KC_POWER = 'system_power',
	KC_SYSTEM_POWER = 'system_power', -- Power
	KC_SLEP = 'system_sleep',
	KC_SYSTEM_SLEEP = 'system_sleep', -- Sleep
	KC_WAKE = 'system_wake',
	KC_SYSTEM_WAKE = 'system_wake', -- Wake

	-- QMK Modifiers
	KC_HYPR = 'csag-none', -- Hyper
	KC_MEH = 'csa-none', -- Ctrl+Shift+Alt
}

---sort so that the longest key is at the top, meaning when we match up keys
---to the keymap, we'll get the most specific first, e.g
---KC_LEFT_CURLY_BRACE before KC_LEFT
---@param key_map table<string, string>
---@return qmk.KeymapList
function M.sort(key_map)
	---@type qmk.KeymapList
	local map = {}
	for key, value in pairs(key_map) do
		if type(key) ~= 'string' or type(value) ~= 'string' then
			error(E.config_keymap_invalid_pair(key, value))
		end
		table.insert(map, { key = key, value = value })
	end
	table.sort(map, function(a, b)
		return #a.key > #b.key
	end)
	return map
end

return M
