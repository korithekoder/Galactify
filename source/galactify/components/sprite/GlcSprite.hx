package galactify.components.sprite;

import flixel.FlxG;
import galactify.display.graph.GlcGraph;
import flixel.FlxSprite;

/**
 * Similar to an `FlxSprite` but with extra methods and attributes.
 */
class GlcSprite extends FlxSprite {
    
    /**
     * Constructor.
     * @param x X position to be set for the new GlcSprite. Default value is `0`.
     * @param y Y position to be set for the new GlcSprite. Default value is `0`.
     */
    public function new(x:Float = 0, y:Float = 0) {
        super(GlcGraph.x(x), GlcGraph.y(y));
    }
    
    /**
     * Set the "x" position of the sprite.
     * @param i Position to be set.
     */
    public function setX(i:Float):Void {
        this.x = GlcGraph.x(i);
    }

    /**
     * Get the "x" position of the GlcSprite.
     * @return Float
     */
    public function getX():Float {
        return this.x - (FlxG.width / 2);
    }

    /**
     * Set the "y" position of the sprite.
     * @param i Position to be set.
     */
    public function setY(i:Float):Void {
        this.y = GlcGraph.y(i);
    }

    /**
     * Get the "y" position of the GlcSprite.
     * @return Float
     */
    public function getY():Float {
        return (FlxG.height / 2) - this.y;
    }

    /**
     * Set the "x" and "y" position of the sprite.
     * @param x "x" position to be set.
     * @param y "y" position to be set.
     */
    public function setXAndY(x:Float, y:Float):Void {
        this.x = GlcGraph.x(x);
        this.y = GlcGraph.y(y);
    }

    /**
     * Change the "x" position of the sprite.
     * @param i The amount of pixels to move the sprite by.
     */
    public function changeX(i:Float):Void {
        this.x += i;
    }

    /**
     * Change the "y" position of the sprite.
     * @param i The amount of pixels to move the sprite by.
     */
    public function changeY(i:Float):Void {
        this.y -= i;
    }

    /**
     * Change the "x" and "y" positions of the sprite.
     * @param x "x" position to be changed by.
     * @param y "y" position to be changed by.
     */
    public function changeXAndY(x:Float, y:Float):Void {
        this.x += x;
        this.y -= y;
    }
}
