private ["_dialog_to_open", "_radio", "_dialog_update"];
[] spawn {
	sleep 0.1;

	if ((alive player) and {call TFAR_fnc_haveLRRadio}) then {
		if !(dialog) then {
			_radio = (TF_lr_dialog_radio select 0);
			_dialog_to_open = ([_radio, "tf_dialog"] call TFAR_fnc_getLrRadioProperty);
			_dialog_update = ([_radio, "tf_dialogUpdate"] call TFAR_fnc_getLrRadioProperty);
			
			createDialog _dialog_to_open;
			player playAction "Gear";
			call compile _dialog_update;
		};
	};
};
true