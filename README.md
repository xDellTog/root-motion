# Root Motion Plugin for Godot 4

<p align="center">
  <a href="https://godotengine.org/download">
      <img alt="Godot Version" src="https://img.shields.io/badge/Godot-4.2%2B-blue">
  </a>
  <a href="LICENSE">
    <img alt="Project License" src="https://img.shields.io/github/license/xDellTog/root-motion">
  </a>
</p>

## About

Add root bone and retarget Mixamo animations in the **play mode**.

## How To Use

1. Add `RootMotion3D` node as the parent of a 3D model (the `.glb/.gltf` file) with animations.

   ![1st Step](https://raw.githubusercontent.com/xDellTog/root-motion/main/images/how_to_use/1.png)

2. Activate the `RootMotion3D` properties and add an `AnimationTree` node in the Animation Tree property.

   ![2nd Step](https://raw.githubusercontent.com/xDellTog/root-motion/main/images/how_to_use/2.png)

3. In the `AnimationTree` you configure normally with the 3D model `AnimationPlayer` node and add a tree root.

   ![3rd Step](https://raw.githubusercontent.com/xDellTog/root-motion/main/images/how_to_use/3.png)

4. An example of an `AnimationTree` root node.

   ![4th Step](https://raw.githubusercontent.com/xDellTog/root-motion/main/images/how_to_use/4.png)
   ![5th Step](https://raw.githubusercontent.com/xDellTog/root-motion/main/images/how_to_use/5.png)

5. Done! Just add the player (scene) to the map scene and play. The root node will be created automatically.

   ![6th Step](https://raw.githubusercontent.com/xDellTog/root-motion/main/images/how_to_use/6.png)

> !!! *An example can be found in the `addons/root_motion/examples` directory.*

## Installing

1. Download this repository.
2. Extract the zip file and move the `addons/root_motion` directory into the project root location.
3. Enable the plugin inside the `Project/Project Settings/Plugins`.

## Future

- Add support to add root motion in the editor to use with the `RootMotionView` node and preview the animations (and don't lose the original resources).
    - I already managed it, but for some reason Godot changes the resources of the original node, even duplicating.
- Add support for non-Mixamo animations (I haven't tested it yet).
- Add 2D support.

## Credits

- [RichardPerry/Mixamo-Root](https://github.com/RichardPerry/Mixamo-Root) Blender add-on for the key inspiration.
- [Godot](https://godotengine.org/) for their amazing work creating the engine.
- [ramokz/Phantom-Camera](https://github.com/ramokz/phantom-camera) for the readme inspiration.
