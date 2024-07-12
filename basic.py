from psychopy import visual, event

# Create a window
win = visual.Window()

# Create a text stimulus
text = visual.TextStim(win, text='Hello, PsychoPy!')

# Draw the stimulus
text.draw()

# Display the stimulus
win.flip()

# Wait for a key press to exit
event.waitKeys()

# Close the window
win.close()
