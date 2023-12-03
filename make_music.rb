# Welcome to Sonic Pi

tempo = 60

use_bpm 35
use_synth :piano

# Uplifting progression to start the study session
play 63, amp: 0.5, sustain: 0.25
sleep 0.05
play 66, amp: 0.5, sustain: 0.25
sleep 0.05
play 69, amp: 0.5, sustain: 0.25
sleep 0.05
play 72, amp: 0.5, sustain: 0.25
sleep 0.05
play 75, amp: 0.5, sustain: 0.25
sleep 1.00


tempo = 60
use_synth :dark_ambience

in_thread do
  live_loop :cosmic_light do
    use_bpm tempo
    
    play chord(:C4, :maj), attack: 2, release: 9, sustain: 2.5
    sleep(5)
    play invert_chord(chord(:G4, :maj), 1), attack: 2, release: 9, sustain: 2.5
    sleep(5)
    play chord(:a4, :minor), attack: 2, release: 9, sustain: 5
    sleep(5)
    play invert_chord(chord(:A4, :min), 1), attack: 2, release: 9, sustain: 2.5
    sleep(5)
    play invert_chord(chord(:A4, :min), 1), attack: 2, release: 9, sustain: 2.5
    sleep(5)
    play invert_chord(chord(:C6, :maj), 1), attack: 2, release: 9, sustain: 2.5
    sleep(5)
    tempo -= 1
  end
end

in_thread do
  live_loop :melody do
    use_synth :dark_ambience
    play chord(:C4, :maj), amp: 2
    sleep 0.25
    play chord(:G4, :maj), amp: 2
    sleep 0.25
    play chord(:A4, :min), amp: 2
    sleep 0.25
    play chord(:F4, :maj), amp: 2
    sleep 0.25
    play chord(:C6, :maj)
    sleep 0.25
    play chord(:G6, :maj)
    sleep 0.25
    play chord(:A6, :min)
    sleep 0.25
    play chord(:F6, :maj)
    sleep 1.0
  end
end

##| in_thread do
##|   live_loop :drums do
##|     sample :bass_woodsy_c
##|     sleep 0.25
##|     sample :bass_woodsy_c
##|     sleep 0.25
##|     sample :bass_woodsy_c
##|     sleep 0.25
##|     sample :bass_woodsy_c
##|     sleep 0.25
##|     sample :bass_woodsy_c
##|     sleep 0.25
##|     sample :bass_woodsy_c
##|     sleep 0.25
##|     sample :bass_woodsy_c
##|     sleep 0.25
##|     sample :bass_woodsy_c, rate: 2, sustain: 1
##|     sleep 0.25
##|     sample :bass_woodsy_c, rate: -2, sustain: 1
##|     sleep 3
##|   end
##| end


live_loop :my_song do
  use_synth :piano
  play :C5, amp: 0.5
  sleep 0.5
  play :D5, amp: 0.5
  sleep 0.5
  play :E5, amp: 0.5
  sleep 0.5
  play :A5, amp: 0.5
  sleep 0.5
  play :B5, amp: 0.5
  sleep 0.5
  play :C6, amp: 0.5
  sleep 0.5
  play :G5, amp: 0.5
  sleep 0.5
  play :F5, amp: 0.5
  sleep 1.00
  
  play :A5, amp: 0.5
  sleep 0.5
  play :B5, amp: 0.5
  sleep 0.5
  play :C6, amp: 0.5
  sleep 0.5
  play :G5, amp: 0.5
  sleep 0.5
  play :F5, amp: 0.5
  sleep 1.00
end




##| in_thread do
##|   live_loop :notes do
##|     play 73
##|     sleep 0.25
##|     play 74
##|     sleep 0.25
##|     play 75
##|     sleep 0.25
##|     sleep 3.25
##|   end
##| end
