enum TriggerType {
	OR,
	AND,	
}

triggerType = TriggerType.OR;

// don't edit
triggered = false;

triggerSources = ds_map_create()
 
 
 function setTrigger(triggering_Obj, boolean){	
	if(ds_map_exists(triggerSources, triggering_Obj)){		
		triggerSources[? triggering_Obj] = boolean		 
	}else{
		ds_map_add(triggerSources,triggering_Obj,false)	 
	}
 }
 
 function unregisterThisTrigger(triggering_Obj){
	if(ds_map_exists(triggerSources, triggering_Obj)){
		ds_map_delete(triggerSources, triggering_Obj)		
	}
 }