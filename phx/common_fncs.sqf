INS_clear_cargo = {
    clearBackpackCargo _this;
    clearItemCargo _this;
    clearMagazineCargo _this;
    clearWeaponCargo _this;
};

INS_init_ammo_supply = {
    _this call INS_clear_cargo;
    _this addAction["Arsenal", {["Open",true] call BIS_fnc_arsenal;}];
};
