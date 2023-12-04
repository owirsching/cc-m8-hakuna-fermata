# Welcome to Sonic Pi

use_synth :piano

# Uplifting progression to start the study session
play 63, sustain: 0.25, attack: 0.5, release: 0.5
sleep 0.1
play 66, sustain: 0.25, attack: 0.5, release: 0.5
sleep 0.1
play 69, sustain: 0.25, attack: 0.5, release: 0.5
sleep 0.1
play 72, sustain: 0.25, attack: 0.5, release: 0.5
sleep 0.1
play 75, sustain: 0.25, attack: 0.5, release: 0.5
sleep 1.00


use_synth :dark_ambience
in_thread do
  live_loop :cosmic_light do
    use_bpm 65
    
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

use_bpm 35

in_thread do
  sleep 2
  4.times do
    use_synth :dark_ambience
    play chord(:C4, :maj), amp: 2
    sleep 0.3
    play chord(:G4, :maj), amp: 2
    sleep 0.3
    play chord(:A4, :min), amp: 2
    sleep 0.3
    play chord(:F4, :maj), amp: 2
    sleep 0.3
    play chord(:C6, :maj)
    sleep 0.3
    play chord(:G6, :maj)
    sleep 0.3
    play chord(:A6, :min)
    sleep 0.3
    play chord(:F6, :maj)
    sleep 1.0
  end
end

##| in_thread do
##|   sleep 2
##|   live_loop :saw do
##|     use_synth :saw
##|     play :G5, amp: 0.05, attack: 0.5
##|     sleep 0.3
##|     play :D5, amp: 0.05, attack: 0.5
##|     sleep 0.3
##|     play :C5, amp: 0.05, attack: 0.5
##|     sleep 0.3
##|     play :C5, amp: 0.05, attack: 0.5
##|     sleep 0.3

##|     play chord(:A5, :min), amp: 0.05
##|     sleep 0.3
##|     play chord(:G5, :maj), amp: 0.05
##|     sleep 0.2
##|     play chord(:E5, :min), amp: 0.05
##|     sleep 0.2
##|     play chord(:F5, :maj), amp: 0.05
##|     sleep 0.3
##|   end
##| end

in_thread do
  sleep 10
  2.times do
    use_synth :piano
    play :F4, amp: 2, attack: 0.5, release: 0.5
    sleep 0.3
    play :G4, amp: 2, attack: 0.5, release: 0.5
    sleep 0.3
    play :B4, amp: 3, attack: 0.5, release: 0.5
    sleep 0.3
    play :A4, amp: 3, attack: 0.5, release: 0.5
    sleep 0.3
    play :C5, amp: 4, attack: 0.5, release: 0.5
    sleep 0.3
    play :A4, amp: 3, attack: 0.5, release: 0.5
    sleep 0.3
    play :B4, amp: 3, attack: 0.5, release: 0.5
    sleep 0.3
    play :G4, amp: 2, attack: 0.5, release: 0.5
    sleep 0.3
  end
  
  2.times do
    use_synth :piano
    play :F4, amp: 2, attack: 0.5, release: 0.5
    sleep 0.3
    play :G4, amp: 2, attack: 0.5, release: 0.5
    sleep 0.3
    play :B4, amp: 3, attack: 0.5, release: 0.5
    sleep 0.3
    play :A4, amp: 3, attack: 0.5, release: 0.5
    sleep 0.3
    play chord(:C5, :major), amp: 7, attack: 1, release: 1, sustain: 1
    play chord(:C4, :major), amp: 7, attack: 1, release: 1, sustain: 1
    sleep 0.3
    play :A4, amp: 3, attack: 0.5, release: 0.5
    sleep 0.3
    play :B4, amp: 3, attack: 0.5, release: 0.5
    sleep 0.3
    play :G4, amp: 2, attack: 0.5, release: 0.5
    sleep 0.3
  end
  
  6.times do
    use_synth :piano
    play :F3, amp: 2, attack: 0.5, release: 0.5
    sleep 0.3
    play :G3, amp: 2, attack: 0.5, release: 0.5
    sleep 0.3
    play :B3, amp: 3, attack: 0.5, release: 0.5
    sleep 0.3
    play :A3, amp: 3, attack: 0.5, release: 0.5
    sleep 0.3
    play chord(:C4, :major), amp: 7, attack: 1, release: 1, sustain: 1
    play chord(:C3, :major), amp: 7, attack: 1, release: 1, sustain: 1
    sleep 0.3
    play :A3, amp: 3, attack: 0.5, release: 0.5
    sleep 0.3
    play :B3, amp: 3, attack: 0.5, release: 0.5
    sleep 0.3
    play :G3, amp: 2, attack: 0.5, release: 0.5
    sleep 0.3
  end
  
  sleep 10
  live_loop :lower_piano do
    use_synth :piano
    play :F3, attack: 0.5, release: 0.5
    sleep 0.3
    play :G3, attack: 0.5, release: 0.5
    sleep 0.3
    play :B3, attack: 0.5, release: 0.5
    sleep 0.3
    play :A3, attack: 0.5, release: 0.5
    sleep 0.3
    play chord(:C4, :major), amp: 7, attack: 1, release: 1, sustain: 1
    play chord(:C3, :major), amp: 7, attack: 1, release: 1, sustain: 1
    sleep 0.3
    play :A3, attack: 0.5, release: 0.5
    sleep 0.3
    play :B3, attack: 0.5, release: 0.5
    sleep 0.3
    play :G3, attack: 0.5, release: 0.5
    sleep 0.3
  end
end

in_thread do
  live_loop :p do
    sample :bass_dnb_f
    sleep 0.4
  end
end


in_thread do
  live_loop :p do
    use_bpm 65
    use_synth :piano
    play chord(:C4, :maj), attack: 2, release: 9, sustain: 2.5
    sleep(5)
    play invert_chord(chord(:G4, :maj), 1), attack: 2, release: 9, sustain: 2.5
    sleep(5)
    play chord(:a4, :maj), attack: 2, release: 9, sustain: 5
    sleep(5)
    play invert_chord(chord(:A3, :maj), 1), attack: 2, release: 9, sustain: 2.5
    sleep(5)
    play invert_chord(chord(:A3, :maj), 1), attack: 2, release: 9, sustain: 2.5
    sleep(5)
    play invert_chord(chord(:C3, :maj), 1), attack: 2, release: 9, sustain: 2.5
    sleep(5)
    tempo -= 1
  end
end

in_thread do
  sleep 20
  live_loop :chords do
    use_synth :dark_ambience
    play chord(:C3, :maj), attack: 1, release: 2, sustain: 1
    sleep 2
    play chord(:C4, :maj), attack: 1, release: 2, sustain: 1
    sleep 2
    play chord(:C3, :maj), attack: 1, release: 2, sustain: 1
    sleep 2
  end
end

in_thread do
  sleep 30
  use_synth :dark_ambience
  play chord(:C3, :maj), attack: 3, release: 3, sustain: 4, amp: 3
  sleep 8
  play chord(:C5, :maj), attack: 3, release: 3, sustain: 4, amp: 3
  use_synth :piano
end

in_thread do
  sleep 35
  live_loop :drums do
    sample :bass_hit_c, rate: 1.2, amp: 0.5
    sleep 0.3
    sample :bass_hit_c, rate: 1.2, amp: 0.5
    sleep 0.1
    sample :bass_hit_c, rate: 1.5, amp: 0.5
    sleep 0.2
    sample :bass_hit_c, rate: 1.6, amp: 0.5
    sleep 0.4
    sample :bass_hit_c, rate: 1.5, amp: 0.5
    sleep 0.2
    sample :bass_hit_c, rate: 1.2, amp: 0.5
    sleep 0.2
    sample :drum_cymbal_closed, amp: 0.15
    sleep 0.2
  end
end
