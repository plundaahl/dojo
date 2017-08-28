ACTION SYSTEM BASICS (v3)
*************************

The action system is designed for building attack patterns for real-time action
combat games in the vein of Dark Souls, Zelda, etc.

The Actions portion of the system provides a framework for managing many
possible actions. These should be single attacks, animations or movements.

The Combo portion of the system allows you to treat individual actions as
modular, and string them together in various orders. It makes it simple to 
adjust the warmup and cooldown times of each action, and allows you to first
make building block animations, and then build many different variations.

BEHAVIOR
********

actionTimer
  - Constantly moves towards 0 by 1 point every tick (so 20 points a second).

actionSelect
  - Decreases by 1 when actionTimer == 0. actionTimer then gets set to -1.

comboSelect
  - Gets set to 0 when both actionSelect and actionTimer == 0.
