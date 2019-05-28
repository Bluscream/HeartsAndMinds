
/* ----------------------------------------------------------------------------
Function: btc_fnc_log_paste

Description:
    Fill me when you edit me !

Parameters:
    _copy_container - [Array]
    _create_object_point - [Object]

Returns:

Examples:
    (begin example)
        _result = [] call btc_fnc_log_paste;
    (end)

Author:
    Vdauphin

---------------------------------------------------------------------------- */

params [
    ["_copy_container", [], [[]]],
    ["_create_object_point", objNull, [objNull]]
];

if ({!((_x isKindOf "Animal") || (_x isKindOf "Module_F") || (_x isKindOf "WeaponHolder"))} count (nearestObjects [_create_object_point, ["All"], 5]) > 1) exitWith {
    (localize "STR_BTC_HAM_LOG_BASICS_CLEARAREA") call CBA_fnc_notify;
};

if (isNil "_copy_container") exitWith {(localize "STR_BTC_HAM_O_PASTE_NOCOPIED") call CBA_fnc_notify};

[_copy_container] remoteExecCall ["btc_fnc_db_loadObjectStatus", 2];
