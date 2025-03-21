import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'dart:math';

import '../endless_world.dart';

/// The [FlyingEnemy] component is an enemy that flies across the screen in a wave-like pattern.
class FlyingEnemy extends SpriteAnimationComponent
    with HasGameReference, HasWorldReference<EndlessWorld> {
  FlyingEnemy({required Vector2 position})
      : super(size: spriteSize, anchor: Anchor.center, position: position);

  static final Vector2 spriteSize = Vector2.all(150);
  final double speed = 250;
  double time = 0; // Used for sine wave movement
  final double amplitude = 50; // Height of the wave motion
  final double frequency = 4; // Speed of oscillation

  @override
  Future<void> onLoad() async {
    animation = await game.loadSpriteAnimation(
      'enemies/flying_enemy.png',
      SpriteAnimationData.sequenced(
        amount: 4,
        textureSize: Vector2(64, 46),
        stepTime: 0.40,
      ),
    );
    
    add(RectangleHitbox());
  }

  @override
  void update(double dt) {
    super.update(dt);
    time += dt;
    
    // Move leftward
    position.x -= (world.speed + speed) * dt;
    
    // Apply sine wave motion
   position.y = world.groundLevel - 200 + sin(time * frequency) * amplitude;


    // Remove when out of screen
    if (position.x + size.x / 2 < -world.size.x / 2) {
      removeFromParent();
    }
  }
}
