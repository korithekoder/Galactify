package;

import galactify.play.PlayState;
import flixel.FlxG;
import galactify.sys.GlcConfig;
import flixel.FlxState;

/**
 * The entry point of the game.
 */
class InitState extends FlxState {
    
    override function create() {
        super.create();

        // Setup the system config stuff
        GlcConfig.setupBaseSys();

        FlxG.switchState(new PlayState());
    }
}
