from psychopy import core, visual, event
import random

# Define colors
colors = ["red", "green", "blue"]

# Create the window
win = visual.Window(size=(800, 600), color="white")

# Create the instructions
instructions = visual.TextStim(win, color="black", text="Press the key corresponding to the color of the word you see on the screen.\n\n R = Red\n G = Green\n B = Blue\n \nPress the space bar to start.")

# Create the text stimuli
text = visual.TextStim(win=win, color="white", height=0.5)

# Initialize variables
n_trials = 3 # Number of trials
correct_responses = 0

# Define data collection
data = [] 

# Display instructions
instructions.draw()
win.flip()
event.waitKeys()

# Run experiment loop
for _ in range(n_trials):

    # Randomly choose a color and word
    color = colors[random.randint(0, len(colors) - 1)]
    word = colors[random.randint(0, len(colors) - 1)]
    
    # Set text color and word
    text.text = word
    text.color = color

    # Present the stimuli
    text.draw()
    win.flip()

    # Start timer
    start_time = core.getTime()

    # Collect response
    response = event.waitKeys(keyList=['r', 'g', 'b'])
    if response:
        key_pressed = response[0]
    
    # Calculate reaction time
    reaction_time = core.getTime() - start_time

    # Check response accuracy
    if color[0] == key_pressed:
        correct_responses += 1

    # Store trial data
    data.append({
        "color": color, 
        "word": word, 
        "reaction_time": reaction_time, 
        "correct": color[0] == key_pressed
    })

# Show results
print("Number of trials:", n_trials)
print("Number of correct responses:", correct_responses)
print("Accuracy:", correct_responses / n_trials)
print("Data:", data)

# Close window
win.close()
core.quit()
