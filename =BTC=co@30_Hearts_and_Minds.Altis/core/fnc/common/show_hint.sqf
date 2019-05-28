
/* ----------------------------------------------------------------------------
Function: btc_fnc_show_hint

Description:
    Show CBA_fnc_notify.

Parameters:
    _type - Type of CBA_fnc_notify to show. [Number]
    _custom - Argument for custom text. [String, Number]

Returns:

Examples:
    (begin example)
        [0] call btc_fnc_show_hint;
    (end)

Author:
    Giallustio

---------------------------------------------------------------------------- */

if (isDedicated) exitWith {};

params [
    ["_type", 0, [0]],
    ["_custom", 0, [0, ""]]
];

private _text = switch (_type) do {
    case 0 : {
        localize "STR_BTC_HAM_O_COMMON_SHOWHINTS_0";
    };
    case 1 : {
        [
            [localize "STR_BTC_HAM_O_COMMON_SHOWHINTS_1"],
            [localize "STR_BTC_HAM_O_COMMON_SHOWHINTS_MU"],
            ["<img size='1' image='\A3\ui_f\data\map\markers\handdrawn\unknown_CA.paa' align='center' color='#ff0000'/>"]
        ];
    };
    case 2 : {
        format [localize "STR_BTC_HAM_O_COMMON_SHOWHINTS_2", _custom];
    };
    case 3 : {
        localize "STR_BTC_HAM_O_COMMON_SHOWHINTS_3";
    };
    case 5 : {
        [
            [localize "STR_BTC_HAM_O_COMMON_SHOWHINTS_5"],
            [localize "STR_BTC_HAM_O_COMMON_SHOWHINTS_MU"],
            ["<img size='1' image='\A3\ui_f\data\map\markers\handdrawn\warning_CA.paa' align='center' color='#ff0000'/>"]
        ];
    };
    case 6 : {
        localize "STR_BTC_HAM_O_COMMON_SHOWHINTS_6";
    };
    case 7 : {
        format [localize "STR_BTC_HAM_O_COMMON_SHOWHINTS_7", _custom];
    };
    case 8 : {
        localize "STR_BTC_HAM_O_COMMON_SHOWHINTS_8";
    };
    case 9 : {
        localize "STR_BTC_HAM_O_COMMON_SHOWHINTS_9";
    };
    case 10 : {
        localize "STR_BTC_HAM_O_COMMON_SHOWHINTS_10";
    };
    case 11 : {
        localize "STR_BTC_HAM_O_COMMON_SHOWHINTS_11";
    };
    case 12 : {
        localize "STR_BTC_HAM_SIDE_CONVOY_STARTCHAT";
    };
    case 13 : {
        localize "STR_BTC_HAM_SIDE_HACK_STARTCHAT";
    };
    case 14 : {
        [
            [localize "STR_BTC_HAM_O_COMMON_SHOWHINTS_14"],
            [format ["<img size='5' image='%1' align='center'/>", getText (configfile >> "CfgVehicles" >> _custom >> "editorPreview")]],
            [" "]
        ];
    };
    case 15 : {
        [
            [localize "STR_BTC_HAM_O_COMMON_SHOWHINTS_15"],
            [format ["<img size='5' image='%1' align='center'/>", getText (configfile >> "CfgVehicles" >> _custom >> "editorPreview")]],
            [" "]
        ];
    };
};

_text call CBA_fnc_notify;
