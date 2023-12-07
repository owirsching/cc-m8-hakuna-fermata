# Olivia Wirsching
# Computational Creativity M8: Hakuna Fermata
# December 7, 2023

use_synth :piano
use_bpm 65

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

# Relaxing BPM
use_bpm 35

# Flowy background
define :flow do
  use_synth :dark_ambience
  2.times do
    use_bpm 65
    
    play chord(:C4, :maj), attack: 2, release: 9, sustain: 2.5, amp: 0.5
    sleep(5)
    play invert_chord(chord(:G4, :maj), 1), attack: 2, release: 9, sustain: 2.5, amp: 0.5
    sleep(5)
    play chord(:a4, :minor), attack: 2, release: 9, sustain: 5, amp: 0.5
    sleep(5)
    play invert_chord(chord(:A4, :min), 1), attack: 2, release: 9, sustain: 2.5, amp: 0.5
    sleep(5)
    play invert_chord(chord(:A4, :min), 1), attack: 2, release: 9, sustain: 2.5, amp: 0.5
    sleep(5)
    play invert_chord(chord(:C6, :maj), 1), attack: 2, release: 9, sustain: 2.5, amp: 0.5
    sleep(5)
    tempo -= 1
  end
end

# Soft notes
define :background_melody do
  sleep 2
  4.times do
    use_synth :dark_ambience
    play chord(:C4, :maj), amp: 2
    sleep 0.4
    play chord(:G4, :maj), amp: 2
    sleep 0.4
    play chord(:A4, :min), amp: 2
    sleep 0.4
    play chord(:F4, :maj), amp: 2
    sleep 0.4
    play chord(:C6, :maj)
    sleep 0.4
    play chord(:G6, :maj)
    sleep 0.4
    play chord(:A6, :min)
    sleep 0.4
    play chord(:F6, :maj)
    sleep 1.0
  end
end

# Flowing piano notes
define :piano_notes do
  sleep 10
  2.times do
    use_synth :piano
    play :F4, amp: 2, attack: 0.5, release: 0.5
    sleep 0.4
    play :G4, amp: 2, attack: 0.5, release: 0.5
    sleep 0.4
    play :B4, amp: 3, attack: 0.5, release: 0.5
    sleep 0.4
    play :A4, amp: 3, attack: 0.5, release: 0.5
    sleep 0.4
    play :C5, amp: 4, attack: 0.5, release: 0.5
    sleep 0.4
    play :A4, amp: 3, attack: 0.5, release: 0.5
    sleep 0.4
    play :B4, amp: 3, attack: 0.5, release: 0.5
    sleep 0.4
    play :G4, amp: 2, attack: 0.5, release: 0.5
    sleep 0.4
  end
  
  2.times do
    use_synth :piano
    play :F4, amp: 2, attack: 0.5, release: 0.5
    sleep 0.4
    play :G4, amp: 2, attack: 0.5, release: 0.5
    sleep 0.4
    play :B4, amp: 3, attack: 0.5, release: 0.5
    sleep 0.4
    play :A4, amp: 3, attack: 0.5, release: 0.5
    sleep 0.4
    play chord(:C5, :major), amp: 7, attack: 1, release: 1, sustain: 1
    play chord(:C4, :major), amp: 7, attack: 1, release: 1, sustain: 1
    sleep 0.4
    play :A4, amp: 3, attack: 0.5, release: 0.5
    sleep 0.4
    play :B4, amp: 3, attack: 0.5, release: 0.5
    sleep 0.4
    play :G4, amp: 2, attack: 0.5, release: 0.5
    sleep 0.4
  end
  
  4.times do
    use_synth :piano
    play :F3, amp: 2, attack: 0.5, release: 0.5
    sleep 0.4
    play :G3, amp: 2, attack: 0.5, release: 0.5
    sleep 0.4
    play :B3, amp: 3, attack: 0.5, release: 0.5
    sleep 0.4
    play :A3, amp: 3, attack: 0.5, release: 0.5
    sleep 0.4
    play chord(:C4, :major), amp: 7, attack: 1, release: 1, sustain: 1
    play chord(:C3, :major), amp: 7, attack: 1, release: 1, sustain: 1
    sleep 0.4
    play :A3, amp: 3, attack: 0.5, release: 0.5
    sleep 0.4
    play :B3, amp: 3, attack: 0.5, release: 0.5
    sleep 0.4
    play :G3, amp: 2, attack: 0.5, release: 0.5
    sleep 0.4
  end
end

# Low background noise
define :chords do
  loop do
    use_synth :dark_ambience
    play chord(:C3, :maj), attack: 1, release: 2, sustain: 1
    sleep 2
    play chord(:C4, :maj), attack: 1, release: 2, sustain: 1
    sleep 2
    play chord(:C3, :maj), attack: 1, release: 2, sustain: 1
    sleep 2
  end
end

# Low background noise
define :dark_transition do
  use_synth :dark_ambience
  play chord(:C3, :maj), attack: 3, release: 3, sustain: 4, amp: 0.5
  sleep 8
  play chord(:C5, :maj), attack: 3, release: 3, sustain: 4, amp: 0.5
end

# Piano chords
define :second_piano do
  5.times do
    use_synth :piano
    play :G4, amp: 5, attack: 0.75, release: 0.75
    sleep 0.5
    play chord(:G4, :major), amp: 10, attack: 1, release: 1
    sleep 0.75
    play :B4, amp: 5, attack: 0.75, release: 0.75
    sleep 0.5
    play chord(:B4, :minor), amp: 10, attack: 1, release: 1
    sleep 0.75
    play :D4, amp: 5, attack: 0.75, release: 0.75
    sleep 0.5
    play chord(:D4, :major), amp: 10, attack: 1, release: 1
    sleep 2
  end
  
  5.times do
    use_synth :piano
    play :G4, amp: 5, attack: 0.75, release: 0.75
    sleep 0.75
    play chord(:G4, :major), amp: 10, attack: 1, release: 1
    sleep 0.4
    harp_up
    sleep 0.4
    play :B4, amp: 5, attack: 0.75, release: 0.75
    sleep 0.75
    play chord(:B4, :minor), amp: 10, attack: 1, release: 1
    sleep 0.4
    harp_up
    sleep 0.4
    play :D4, amp: 5, attack: 0.75, release: 0.75
    sleep 0.75
    play chord(:D4, :major), amp: 10, attack: 1, release: 1
    sleep 0.4
    play :D4, attack: 0.5, release: 0.5, amp: 3
    sleep 0.4
  end
end

# Quickly rising notes
define :harp_up do
  ##| sleep 50
  use_synth :piano
  play :B5, attack: 0.5, release: 0.5, amp: 2
  sleep 0.01
  play :G5, attack: 0.5, release: 0.5, amp: 2
  sleep 0.01
  play :D5, attack: 0.5, release: 0.5, amp: 2
end


# FIRST PART
in_thread do
  in_thread do
    cosmic_light
  end
  
  in_thread do
    background_melody
  end
  
  in_thread do
    piano_notes
  end
end

# SECOND PART
in_thread do
  sleep 20
  in_thread do
    chords
  end
  
  in_thread do
    sleep 10
    dark_transition
  end
  
  in_thread do
    sleep 20
    second_piano
  end
end

# THIRD PART
in_thread do
  sleep 95
  in_thread do
    cosmic_light
  end
  
  in_thread do
    3.times do
      play :B5, attack: 0.5, release: 0.5, amp: 4
      sleep 0.5
      play :G5, attack: 0.5, release: 0.5, amp: 4
      sleep 0.5
      play :D5, attack: 0.5, release: 0.5, amp: 4
      sleep 3
      play :D5, attack: 0.5, release: 0.5, amp: 4
      sleep 0.5
      play :G5, attack: 0.5, release: 0.5, amp: 4
      sleep 0.5
      play :B5, attack: 0.5, release: 0.5, amp: 4
      sleep 5
    end
  end
end

# FOURTH PART
in_thread do
  sleep 115
  in_thread do
    piano_notes
  end
  
  sleep 20
  in_thread do
    background_melody
  end
end




