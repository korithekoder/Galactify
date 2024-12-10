package galactify.play;

import galactify.display.graph.GlcGraph;
import flixel.FlxG;
import galactify.components.player.Player;
import flixel.FlxState;

class PlayState extends FlxState {

	/**
	 * The player of the world.
	 */
	public var player:Player;

	override public function create() {
		super.create();
		player = new Player("korithekoder");
		player.loadGraphic("assets/images/entities/player/plr_part.png");
		player.scale.set(1.3, 1.3);
		player.setX(30);
		player.setY(-20);
		add(player);
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);
	}
}
