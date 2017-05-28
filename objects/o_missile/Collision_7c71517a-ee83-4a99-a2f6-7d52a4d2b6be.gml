/// @description current collision destroy and untarget
if(other.id == target){
	target.targeted = false;
	instance_destroy();
}