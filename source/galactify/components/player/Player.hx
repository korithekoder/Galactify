package galactify.components.player;

import galactify.components.sprite.GlcSprite;

/**
 * Class for creating the player and it's attributes.
 * Since it is not an entity, it is extended to the `GlcSprite`
 * class instead.
 */
class Player extends GlcSprite {

    /**
     * The username of the client player.
     */
    public var username(get, set):String;

    private var _username:String;
    
    /**
     * Constructor.
     * @param username The unique display name for the client player.
     */
    public function new(username:String) {
        super();
        this._username = username;
    }

    public function get_username():String {
        return _username;
    }

    public function set_username(username:String):String {
        this._username = username;
        return this._username;
    }

    override function update(elapsed:Float) {
        super.update(elapsed);
    }
}
