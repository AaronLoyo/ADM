// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
/*
function launchProjectile(path, proyectile){
    instance_create_layer(x, y, "Instances", proyectile)
    proyectile.Status = path
}
*/
// En la función launchProjectile
function launchProjectile(path, proyectile){
    var instance = instance_create_layer(x, y, "Instances", proyectile);
    instance.Status = path;
}
