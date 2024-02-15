/// @param RecievingDmg
/// @param DmgEffectTime

function ReceiveDamage(RecievingDmg, DmgEffectTime, damageSprite) {
    if (RecievingDmg) {
        sprite_index = damageSprite;
        Counter += 1;

        if (Counter > DmgEffectTime) {
            image_blend = c_white;
            isUnderDamageEffect = false;
            Counter = 0;
        }
    } else {
        image_blend = c_white;
    }


}
