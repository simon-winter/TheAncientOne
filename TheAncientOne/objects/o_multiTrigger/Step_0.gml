switch (triggerType){
	
	case TriggerType.OR:
	
		triggered = false;
		for (var k = ds_map_find_first(triggerSources); !is_undefined(k); k = ds_map_find_next(triggerSources, k)) {
			if(triggerSources[? k] == true){
				triggered = true;
				break;
			}
		}
		
		break;
		
	case TriggerType.AND:
	
		triggered = true;
		for (var k = ds_map_find_first(triggerSources); !is_undefined(k); k = ds_map_find_next(triggerSources, k)) {
			if(triggerSources[? k] == false){
				triggered = false;
				break;
			}
		}		
		break;		
}


targetToTrigger.triggered = triggered

