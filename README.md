# Cube Invasion

A simple  game for Roblox Studio.

## 🎮 How it works

- Player moves to intercept falling cubes.
- If a cube touches the ground, the player loses a life.
- If 10 cubes fall: **Game Over**
- If the player destroys 50 cubes: **You Win**



## 📂 Files

- `ServerScript.lua` – server logic and spawning
- `LocalScript.lua` – local player touch detection
- `Instructions.txt` – GUI instructions
- `README.md` – this file

## 🚀 How to Import into Roblox Studio

### 1. Create a new Baseplate project.
![Step 1](images/roblox_step_1.png)

### 2. Add a `Part` in the Workspace and rename it to `SpawnZone`.
![Step 2](images/roblox_step_2.png)

### 3. Add another `Part` and rename it to `EnemyCubeTemplate`. Set `Anchored = true`.
![Step 3](images/roblox_step_3.png)

### 4. Go to `ServerScriptService` > Insert `Script`. Paste content from `ServerScript.lua`.
![Step 4](images/roblox_step_4.png)

### 5. Go to `StarterPlayer` > `StarterPlayerScripts` > Insert `LocalScript`. Paste content from `LocalScript.lua`.
![Step 5](images/roblox_step_5.png)

### 6. Add a `ScreenGui` with a `TextLabel` to `StarterGui`. Paste the content of `Instructions.txt`.
![Step 6](images/roblox_step_6.png)

### 7. Press `Play` to test your game!
![Step 7](images/roblox_step_7.png)
