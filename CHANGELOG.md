### <span style="color:orange">January 2026</span> — Item Display for 1.21.5+

- Users may found that the large **teleport delay of Armor Stands**, creates a mismatch between the rendered ball positions and the true ball positions during teleport, as well as trajectory smoothing effects. **Item Display** is now used instead. By default, Item Display is not affected by teleport delay and therefore allows **precise rendering of ball positions and trajectories**. As a result, the visual behavior closely matches the underlying simulation.
- The teleport delay of Item Display can be controlled via its **`teleport_duration`** data. Larger values introduce more rendering delay while producing smoother trajectories. The legacy Armor Stand rendering behavior is roughly equivalent to `teleport_duration = 2`.  
  - `teleport_duration = 0`: fully discrete motion  
  - `teleport_duration = 1`: recommended balance between smooth motion rendering and accurate trajectories  
  - larger values: may over-smooth trajectories  
  Please refer to the **User Guide and Demo** for details on configuring this option in the datapack.
- When an Item Display rotates, its **`transformation`** data are updated continuously, analogous to how an Armor Stand’s **`Pose`** data change. Although governed by different mathematical formulations, both systems are derived from **3D rotation vectors defined in the world frame**.

- *Although it is technically possible to extend this change back to earlier versions, feature support is intentionally limited to **1.21.5+**. Given the evolving command syntax in previous releases, maintaining backward compatibility would require substantial re-development effort, which is less worthwhile than keeping previous versions stable and mature.*


### <span style="color:orange">September 2025</span> — AI Break Simulation!

- Added **AI Break Simulation**: a lightweight neural network replaces the previous elastic-collision-only model, producing a much more realistic break effect.
- Data Generation & Training: high-precision physics simulations were run in Python to generate large datasets of break scenarios. A neural network was trained to learn the instantaneous compression–rebound process. Due to the rack’s symmetry, the model can be flipped and rotated to generalize to the entire rack.
- Implementation: the trained PyTorch model parameters were manually translated into Minecraft scoreboard calculations. Rotation and flipping transforms are also done in-game, and the final outputs are inversely transformed to set each ball’s velocity and direction.
- This feature can be toggled on or off in the settings (enabled by default). When enabled, 8-ball breaks automatically use the AI model. Four levels of model complexity are available so you can choose between faster performance or higher accuracy.


### <span style="color:orange">July 2025</span> — Chinese 8 Ball game is added to the datapack. Join it from the lobby and enjoy!

It has been a long journey...

- Initially, the balls were rendered statically, moving only linearly without any visual spin. I did not plan to add numbered balls, and only designed Snooker and UK 8 Ball with monochromatic balls.
- Later, after significant work on math and physics, cue ball control and advanced ball movements with visual spinning were supported by the Pool Datapack.
- Then, the design to transform ball spin into armor stand pose changes laid the foundation for visually realistic rendering. Numbered balls were introduced in practice mode, even before Minecraft 1.20 and Transformation Rendering were added.
- Finally, the rules for Chinese 8 Ball are implemented in Minecraft now, enabling a fully playable single-player and multiplayer experience with numbered balls.

### <span style="color:orange">July 2025</span> — Updated Datapack for 1.20 and 1.21. Pool Datapack now continues to support all Minecraft versions since 1.16!
Minecraft 1.21.X introduced directory structure changes and significant command syntax updates. It is no longer feasible to support multiple versions within a single datapack file. The resourcepack also underwent several changes.  
Based on the 1.16-1.20 modules, the datapack and resourcepack are generated using an [automated script](build_packs_for_1.21.py) that makes necessary changes to let the modules work as intended in new Minecraft versions.

🔴<span style="color:aqua">If you're playing Minecraft 1.21.X, please use the datapack and resource pack that match your game version. Find them in the Releases_1.21 folder.</span>  
🔴<span style="color:aqua">You no longer need to select versions after loading the datapack in game.</span>  
🔴<span style="color:aqua">Please also make sure you're using the 1.21 version of the [Math Datapack](https://github.com/MingshiYangUIUC/Math-Minecraft-Squid-Workshop-Project).</span>  
🔴<span style="color:aqua">Currently, the express installation script for Windows users does NOT support installing 1.21.X versions.</span>