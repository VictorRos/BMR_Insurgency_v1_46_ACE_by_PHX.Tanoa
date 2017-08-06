// Initialisation des drapeaux
PHX_init_INS_flag_Base = {
    if (INS_MHQ_enabled) then {
        INS_flag addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 1</t>", "call JIG_transfer_fnc", ["MHQ_1"], 4.2];
        INS_flag addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 2</t>", "call JIG_transfer_fnc", ["MHQ_2"], 4.1];    
        INS_flag addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 3</t>", "call JIG_transfer_fnc", ["MHQ_3"], 4];
    };
    INS_flag addAction["<t size='1.5' shadow='2' color='#12F905'>Aéroport Base</t>", "call JIG_transfer_fnc", [INS_flag_Aeroport], 3.7];
    INS_flag addAction["<t size='1.5' shadow='2' color='#12F905'>Port</t>", "call JIG_transfer_fnc", [INS_flag_Port], 3.6];
};

PHX_init_INS_flag_Aeroport = {
    if (INS_MHQ_enabled) then {
        INS_flag_Aeroport addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 1</t>", "call JIG_transfer_fnc", ["MHQ_1"], 4.2];
        INS_flag_Aeroport addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 2</t>", "call JIG_transfer_fnc", ["MHQ_2"], 4.1];
        INS_flag_Aeroport addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 3</t>", "call JIG_transfer_fnc", ["MHQ_3"], 4];
    };
    INS_flag_Aeroport addAction[("<t size='1.5' shadow='2' color='#FF9900'>") + (localize "STR_BMR_halo_jump") + "</t>","ATM_airdrop\atm_airdrop.sqf", nil, 3.9];
    INS_flag_Aeroport addAction["<t size='1.5' shadow='2' color='#12F905'>Base</t>", "call JIG_transfer_fnc", [INS_flag], 3.8];
    INS_flag_Aeroport addAction["<t size='1.5' shadow='2' color='#12F905'>Port</t>", "call JIG_transfer_fnc", [INS_flag_Port], 3.6];
};

PHX_init_INS_flag_Port = {
    if (INS_MHQ_enabled) then {
        INS_flag_Port addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 1</t>", "call JIG_transfer_fnc", ["MHQ_1"], 4.2];
        INS_flag_Port addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 2</t>", "call JIG_transfer_fnc", ["MHQ_2"], 4.1];
        INS_flag_Port addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 3</t>", "call JIG_transfer_fnc", ["MHQ_3"], 4];
    };
    INS_flag_Port addAction[("<t size='1.5' shadow='2' color='#FF9900'>") + (localize "STR_BMR_halo_jump") + "</t>","ATM_airdrop\atm_airdrop.sqf", nil, 3.9];
    INS_flag_Port addAction["<t size='1.5' shadow='2' color='#12F905'>Base</t>", "call JIG_transfer_fnc", [INS_flag], 3.8];
    INS_flag_Port addAction["<t size='1.5' shadow='2' color='#12F905'>Aéroport Base</t>", "call JIG_transfer_fnc", [INS_flag_Aeroport], 3.7];
};

PHX_init_INS_flag_Rochelle = {
    if (INS_MHQ_enabled) then {
        INS_flag_Rochelle addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 1</t>", "call JIG_transfer_fnc", ["MHQ_1"], 4.2];
        INS_flag_Rochelle addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 2</t>", "call JIG_transfer_fnc", ["MHQ_2"], 4.1];
        INS_flag_Rochelle addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 3</t>", "call JIG_transfer_fnc", ["MHQ_3"], 4];
    };
    INS_flag_Rochelle addAction[("<t size='1.5' shadow='2' color='#FF9900'>") + (localize "STR_BMR_halo_jump") + "</t>","ATM_airdrop\atm_airdrop.sqf", nil, 3.9];
    INS_flag_Rochelle addAction["<t size='1.5' shadow='2' color='#12F905'>Base</t>", "call JIG_transfer_fnc", [INS_flag], 3.8];
    INS_flag_Rochelle addAction["<t size='1.5' shadow='2' color='#12F905'>Aéroport Base</t>", "call JIG_transfer_fnc", [INS_flag_Aeroport], 3.7];
    INS_flag_Rochelle addAction["<t size='1.5' shadow='2' color='#12F905'>Port</t>", "call JIG_transfer_fnc", [INS_flag_Port], 3.6];
};

PHX_init_INS_flag_Saint_Georges = {
    if (INS_MHQ_enabled) then {
        INS_flag_Saint_Georges addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 1</t>", "call JIG_transfer_fnc", ["MHQ_1"], 4.2];
        INS_flag_Saint_Georges addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 2</t>", "call JIG_transfer_fnc", ["MHQ_2"], 4.1];
        INS_flag_Saint_Georges addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 3</t>", "call JIG_transfer_fnc", ["MHQ_3"], 4];
    };
    INS_flag_Saint_Georges addAction[("<t size='1.5' shadow='2' color='#FF9900'>") + (localize "STR_BMR_halo_jump") + "</t>","ATM_airdrop\atm_airdrop.sqf", nil, 3.9];
    INS_flag_Saint_Georges addAction["<t size='1.5' shadow='2' color='#12F905'>Base</t>", "call JIG_transfer_fnc", [INS_flag], 3.8];
    INS_flag_Saint_Georges addAction["<t size='1.5' shadow='2' color='#12F905'>Aéroport Base</t>", "call JIG_transfer_fnc", [INS_flag_Aeroport], 3.7];
    INS_flag_Saint_Georges addAction["<t size='1.5' shadow='2' color='#12F905'>Port</t>", "call JIG_transfer_fnc", [INS_flag_Port], 3.6];
};

PHX_init_INS_flag_Tanoa = {
    if (INS_MHQ_enabled) then {
        INS_flag_Tanoa addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 1</t>", "call JIG_transfer_fnc", ["MHQ_1"], 4.2];
        INS_flag_Tanoa addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 2</t>", "call JIG_transfer_fnc", ["MHQ_2"], 4.1];
        INS_flag_Tanoa addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 3</t>", "call JIG_transfer_fnc", ["MHQ_3"], 4];
    };
    INS_flag_Tanoa addAction[("<t size='1.5' shadow='2' color='#FF9900'>") + (localize "STR_BMR_halo_jump") + "</t>","ATM_airdrop\atm_airdrop.sqf", nil, 3.9];
    INS_flag_Tanoa addAction["<t size='1.5' shadow='2' color='#12F905'>Base</t>", "call JIG_transfer_fnc", [INS_flag], 3.8];
    INS_flag_Tanoa addAction["<t size='1.5' shadow='2' color='#12F905'>Aéroport Base</t>", "call JIG_transfer_fnc", [INS_flag_Aeroport], 3.7];
    INS_flag_Tanoa addAction["<t size='1.5' shadow='2' color='#12F905'>Port</t>", "call JIG_transfer_fnc", [INS_flag_Port], 3.6];
};

PHX_init_INS_flag_Bala = {
    if (INS_MHQ_enabled) then {
        INS_flag_Bala addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 1</t>", "call JIG_transfer_fnc", ["MHQ_1"], 4.2];
        INS_flag_Bala addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 2</t>", "call JIG_transfer_fnc", ["MHQ_2"], 4.1];
        INS_flag_Bala addAction["<t size='1.5' shadow='2' color='#ED2744'>Transfert vers MHQ 3</t>", "call JIG_transfer_fnc", ["MHQ_3"], 4];
    };
    INS_flag_Bala addAction[("<t size='1.5' shadow='2' color='#FF9900'>") + (localize "STR_BMR_halo_jump") + "</t>","ATM_airdrop\atm_airdrop.sqf", nil, 3.9];
    INS_flag_Bala addAction["<t size='1.5' shadow='2' color='#12F905'>Base</t>", "call JIG_transfer_fnc", [INS_flag], 3.8];
    INS_flag_Bala addAction["<t size='1.5' shadow='2' color='#12F905'>Aéroport Base</t>", "call JIG_transfer_fnc", [INS_flag_Aeroport], 3.7];
    INS_flag_Bala addAction["<t size='1.5' shadow='2' color='#12F905'>Port</t>", "call JIG_transfer_fnc", [INS_flag_Port], 3.6];
};



// Déclencheurs
PHX_declencheur_INS_flag_Rochelle = {
    INS_flag addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de la Rochelle</t>", "call JIG_transfer_fnc", [INS_flag_Rochelle], 3.5];
    INS_flag_Aeroport addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de la Rochelle</t>", "call JIG_transfer_fnc", [INS_flag_Rochelle], 3.5];
    INS_flag_Port addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de la Rochelle</t>", "call JIG_transfer_fnc", [INS_flag_Rochelle], 3.5];
    INS_flag_Saint_Georges addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de la Rochelle</t>", "call JIG_transfer_fnc", [INS_flag_Rochelle], 3.5];
    INS_flag_Tanoa addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de la Rochelle</t>", "call JIG_transfer_fnc", [INS_flag_Rochelle], 3.5];
    INS_flag_Bala addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de la Rochelle</t>", "call JIG_transfer_fnc", [INS_flag_Rochelle], 3.5];
};

PHX_declencheur_INS_flag_Saint_Georges = {
    INS_flag addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de Saint-Georges</t>", "call JIG_transfer_fnc", [INS_flag_Saint_Georges], 3.4];
    INS_flag_Aeroport addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de Saint-Georges</t>", "call JIG_transfer_fnc", [INS_flag_Saint_Georges], 3.4];
    INS_flag_Port addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de Saint-Georges</t>", "call JIG_transfer_fnc", [INS_flag_Saint_Georges], 3.4];
    INS_flag_Rochelle addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de Saint-Georges</t>", "call JIG_transfer_fnc", [INS_flag_Saint_Georges], 3.4];
    INS_flag_Tanoa addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de Saint-Georges</t>", "call JIG_transfer_fnc", [INS_flag_Saint_Georges], 3.4];
    INS_flag_Bala addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de Saint-Georges</t>", "call JIG_transfer_fnc", [INS_flag_Saint_Georges], 3.4];
};

PHX_declencheur_INS_flag_Tanoa = {
    INS_flag addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de Tanoa</t>", "call JIG_transfer_fnc", [INS_flag_Tanoa], 3.3];
    INS_flag_Aeroport addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de Tanoa</t>", "call JIG_transfer_fnc", [INS_flag_Tanoa], 3.3];
    INS_flag_Port addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de Tanoa</t>", "call JIG_transfer_fnc", [INS_flag_Tanoa], 3.3];
    INS_flag_Rochelle addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de Tanoa</t>", "call JIG_transfer_fnc", [INS_flag_Tanoa], 3.3];
    INS_flag_Saint_Georges addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de Tanoa</t>", "call JIG_transfer_fnc", [INS_flag_Tanoa], 3.3];
    INS_flag_Bala addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de Tanoa</t>", "call JIG_transfer_fnc", [INS_flag_Tanoa], 3.3];
};

PHX_declencheur_INS_flag_Bala = {
    INS_flag addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de Bala</t>", "call JIG_transfer_fnc", [INS_flag_Bala], 3.2];    
    INS_flag_Aeroport addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de Bala</t>", "call JIG_transfer_fnc", [INS_flag_Bala], 3.2];
    INS_flag_Port addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de Bala</t>", "call JIG_transfer_fnc", [INS_flag_Bala], 3.2];
    INS_flag_Rochelle addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de Bala</t>", "call JIG_transfer_fnc", [INS_flag_Bala], 3.2];
    INS_flag_Saint_Georges addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de Bala</t>", "call JIG_transfer_fnc", [INS_flag_Bala], 3.2];
    INS_flag_Tanoa addAction["<t size='1.5' shadow='2' color='#005EFE'>Aéroport de Bala</t>", "call JIG_transfer_fnc", [INS_flag_Bala], 3.2];
};