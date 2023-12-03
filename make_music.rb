# Welcome to Sonic Pi

use_synth :piano

# Uplifting progression to start the study session
play 63, amp: 0.5, sustain: 0.25
sleep 0.1
play 66, amp: 0.5, sustain: 0.25
sleep 0.1
play 69, amp: 0.5, sustain: 0.25
sleep 0.1
play 72, amp: 0.5, sustain: 0.25
sleep 0.1
play 75, amp: 0.5, sustain: 0.25
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
  sleep 10
  4.times do
    use_synth :dark_ambience
    play chord(:C4, :maj), amp: 2
    sleep 0.5
    play chord(:G4, :maj), amp: 2
    sleep 0.5
    play chord(:A4, :min), amp: 2
    sleep 0.5
    play chord(:F4, :maj), amp: 2
    sleep 0.5
    play chord(:C6, :maj)
    sleep 0.5
    play chord(:G6, :maj)
    sleep 0.5
    play chord(:A6, :min)
    sleep 0.5
    play chord(:F6, :maj)
    sleep 1.0
  end
end

in_thread do
  sleep 8
  3.times do
    use_synth :piano
    play :C5, amp: 0.5, attack: 0.5, release: 0.75, amp: 4
    sleep 0.5
    play :D5, amp: 0.5, attack: 0.5, release: 0.75, amp: 5
    sleep 0.5
    play :E5, amp: 0.5, attack: 0.5, release: 0.75, amp: 6
    sleep 0.5
    play :A5, amp: 0.5, attack: 0.5, release: 0.75, amp: 7
    sleep 0.5
    play :B5, amp: 0.5, attack: 0.5, release: 0.75, amp: 8
    sleep 0.5
    play :C6, amp: 0.5, attack: 0.5, release: 0.75, amp: 9
    sleep 0.5
    play :G5, amp: 0.5, attack: 0.5, release: 0.75, amp: 10
    sleep 0.5
    play :F5, amp: 0.5, attack: 0.5, release: 0.75, amp: 11
    sleep 1.00
    
    play :A5, amp: 0.5, attack: 0.5, release: 0.75, amp: 12
    sleep 0.5
    play :B5, amp: 0.5, attack: 0.5, release: 0.75, amp: 11
    sleep 0.5
    play :C6, amp: 0.5, attack: 0.5, release: 0.75, amp: 10
    sleep 0.5
    play :G5, amp: 0.5, attack: 0.5, release: 0.75, amp: 9
    sleep 0.5
    play :F5, amp: 0.5, attack: 0.5, release: 0.75, amp: 8
    sleep 1.00
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
    play chord(:C3, :maj), attack: 1, release: 2, sustain: 1, amp: 3
    sleep 2
    play chord(:C4, :maj), attack: 1, release: 2, sustain: 1, amp: 3
    sleep 2
    play chord(:C3, :maj), attack: 1, release: 2, sustain: 1, amp: 3
    sleep 2
  end
end

in_thread do
  sleep 25
  live_loop :beat do
    sample :drum_bass_soft
    sleep 0.5
    sample :drum_bass_soft
    sleep 0.15
    sample :drum_bass_soft
    sleep 0.75
  end
end
