package galactify.components.entity;

import galactify.display.graph.GlcGraph;
import galactify.components.sprite.GlcSprite;

/**
 * Core class for creating entities. This particular class is, although complicated, great
 * to use because it allows you to create complex entities with either simple animations,
 * or complex body parts.
 */
class Entity extends GlcSprite {

    /**
     * The body parts of the entity.
     */
    public var bodyParts(get, never):Array<EntityPart>;

    private var _bodyParts:Array<EntityPart> = [];
    
    /**
     * Constructor.
     * @param x         X position of the new Entity.
     * @param y         Y position of the new Entity.
     * @param bodyParts The body parts that will be registered with the new entity.
     */
    public function new(x:Float = 0, y:Float = 0, bodyParts:Array<EntityPart>, hbWidth = 1, hbHeight = 1) {
        super(GlcGraph.x(x), GlcGraph.y(0));
        this._bodyParts = bodyParts;
        this.width = hbWidth;
        this.height = hbHeight;
    }

    public function get_bodyParts() {
        return _bodyParts;
    }

    /**
     * Add a new body part to `this` entity.
     * @param newPart The new part to be registered.
     */
    public function registerNewBodyPart(newPart:EntityPart):Void {
        this._bodyParts.push(newPart);
    }
}
