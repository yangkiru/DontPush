function create_obj(_obj) {
	return instance_create_layer(x, y, "Instances", _obj != noone ? _obj : obj);
}

function activate_obj() {
	if ds_queue_empty(pool) {
	    var _obj = create_obj(noone);
	}
	else {
		var _obj = ds_queue_dequeue(pool);
		instance_activate_object(_obj);
	}
	_obj.active = true;
	if (object_get_physics(_obj))
		_obj.phy_active = true;
	on_activate_obj(_obj);
	return _obj;
}

function deactivate_obj(_obj) {
	_obj.active = false;
	if (object_get_physics(_obj))
		_obj.phy_active = false;
	ds_queue_enqueue(pool, _obj);
	on_deactivate_obj(_obj);
	instance_deactivate_object(_obj);
}

function pool_init(_obj, size) {
	obj = _obj;
	pool = ds_queue_create();

	repeat(size) {
		deactivate_obj(create_obj(_obj));
	}
}

function on_activate_obj(_obj) {}
function on_deactivate_obj(_obj) {}