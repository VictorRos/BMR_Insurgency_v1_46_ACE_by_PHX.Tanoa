INS_init_flag = {
    private ["_flag", "_isMHQEnabled"];
    _flag         = _this select 0;
    _isMHQEnabled = _this select 1;

    // Si les MHQ sont activés on ajoute les téléportations aux drapeaux
    if (_isMHQEnabled) then {
        _flag addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 1</t>", "call JIG_transfer_fnc", ["MHQ_1"], 4.2];
        _flag addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 2</t>", "call JIG_transfer_fnc", ["MHQ_2"], 4.1];    
        _flag addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 3</t>", "call JIG_transfer_fnc", ["MHQ_3"], 4];
    };
    _flag addAction[("<t size='1.5' shadow='2' color='#ff9900'>") + (localize "STR_BMR_halo_jump") + "</t>","ATM_airdrop\atm_airdrop.sqf", nil, 3.9];
};
/**
 * Initialise le drapeau passé en paramètre avec la possibilité de se rendre aux drapeaux "Base", "Aéroport Base" et "Port"
 *
 * _flag                : object  - Le drapeau
 * _addBaseFlag         : booléen - (true pour ajouter la téléportation vers le drapeau "Base", false sinon)
 * _addAeroportBaseFlag : booléen - (true pour ajouter la téléportation vers le drapeau "Aéroport Base", false sinon)
 * _addPortFlag         : booléen - (true pour ajouter la téléportation vers le drapeau "Port", false sinon)
 */
INS_init_blufor_base_flags = {
    private ["_flag", "_addBaseFlag", "_addAeroportBaseFlag", "_addPortFlag"];
    _flag                = _this select 0;
    _addBaseFlag         = _this select 1;
    _addAeroportBaseFlag = _this select 2;
    _addPortFlag         = _this select 3;

    if (_addBaseFlag) then {
        _flag addAction["<t size='1.5' shadow='2' color='#12F905'>Base</t>",          "call JIG_transfer_fnc", [INS_flag],          3.8];
    };
    if (_addAeroportBaseFlag) then {
        _flag addAction["<t size='1.5' shadow='2' color='#12F905'>Aéroport Base</t>", "call JIG_transfer_fnc", [INS_flag_Aeroport], 3.7];
    };
    if (_addPortFlag) then {
        _flag addAction["<t size='1.5' shadow='2' color='#12F905'>Port</t>",          "call JIG_transfer_fnc", [INS_flag_Port],     3.6];
    };
};
/**
 * Initialise les triggers des drapeaux des avants-postes
 *
 * _flag  : object          - Le drapeau de l'avant poste
 * _text  : String          - Le nom de l'avant poste
 * _flags : Array of object - Les drapeaux qui bénéficieront de l'option du drapeau de l'avant poste
 * _pos   : number          - La position d'affichage de l'option
 */
INS_trigger_flag = {
    private ["_flag", "_flags", "_text", "_pos"];
    _flag  = _this select 0;
    _text  = _this select 1;
    _flags = _this select 2;
    _pos   = _this select 3;

    {
        _x addAction["<t size='1.5' shadow='2' color='#005EFE'>" + _text + "</t>", "call JIG_transfer_fnc", [_flag], _pos];
    } forEach _flags;
};

// Initialisation des drapeaux
// Drapeaux Base
INS_init_flag_Base = {
    [INS_flag, INS_MHQ_enabled] call INS_init_flag;
    [INS_flag, false, true, true] call INS_init_blufor_base_flags;
};
INS_init_flag_Aeroport = {
    [INS_flag_Aeroport, INS_MHQ_enabled] call INS_init_flag;
    [INS_flag_Aeroport, true, false, true] call INS_init_blufor_base_flags;
};
INS_init_flag_Port = {
    [INS_flag_Port, INS_MHQ_enabled] call INS_init_flag;
    [INS_flag_Port, true, true, false] call INS_init_blufor_base_flags;
};

// Drapeaux Avant-Poste
INS_init_flag_Rochelle = {
    [INS_flag_Rochelle, INS_MHQ_enabled] call INS_init_flag;
    [INS_flag_Rochelle, true, true, true] call INS_init_blufor_base_flags;
};
INS_init_flag_Saint_Georges = {
    [INS_flag_Saint_Georges, INS_MHQ_enabled] call INS_init_flag;
    [INS_flag_Saint_Georges, true, true, true] call INS_init_blufor_base_flags;
};
INS_init_flag_Tanoa = {
    [INS_flag_Tanoa, INS_MHQ_enabled] call INS_init_flag;
    [INS_flag_Tanoa, true, true, true] call INS_init_blufor_base_flags;
};
INS_init_flag_Bala = {
    [INS_flag_Bala, INS_MHQ_enabled] call INS_init_flag;
    [INS_flag_Bala, true, true, true] call INS_init_blufor_base_flags;
};

// Déclencheurs
INS_trigger_flag_Rochelle = {
    [
        INS_flag_Rochelle,
        "Aéroport de la Rochelle",
        [INS_flag, INS_flag_Aeroport, INS_flag_Port, INS_flag_Saint_Georges, INS_flag_Tanoa, INS_flag_Bala],
        3.5
    ] call INS_trigger_flag;
    hint "L'aéroport de la Rochelle est à nous !\nBeau travail soldats !";
};

INS_trigger_flag_Saint_Georges = {
    [
        INS_flag_Saint_Georges,
        "Aéroport de Saint Georges",
        [INS_flag, INS_flag_Aeroport, INS_flag_Port, INS_flag_Rochelle, INS_flag_Tanoa, INS_flag_Bala],
        3.4
    ] call INS_trigger_flag;
    hint "L'aéroport de Saint Georges est à nous !\nBeau travail soldats !";
};

INS_trigger_flag_Tanoa = {
    [
        INS_flag_Tanoa,
        "Aéroport de Tanoa",
        [INS_flag, INS_flag_Aeroport, INS_flag_Port, INS_flag_Rochelle, INS_flag_Saint_Georges, INS_flag_Bala],
        3.3
    ] call INS_trigger_flag;
    hint "L'aéroport de Tanoa est à nous !\nBeau travail soldats !";
};

INS_trigger_flag_Bala = {
    [
        INS_flag_Bala,
        "Aéroport de Bala",
        [INS_flag, INS_flag_Aeroport, INS_flag_Port, INS_flag_Rochelle, INS_flag_Saint_Georges, INS_flag_Tanoa],
        3.2
    ] call INS_trigger_flag;
    hint "L'aéroport de Bala est à nous !\nBeau travail soldats !";
};