# Welcome to Sonic Pi

use_bpm 35
use_synth :piano

# Uplifting progression to start the study session
play 73, amp: 0.5, sustain: 0.25
sleep 0.05
play 76, amp: 0.5, sustain: 0.25
sleep 0.05
play 79, amp: 0.5, sustain: 0.25
sleep 0.05
play 82, amp: 0.5, sustain: 0.25
sleep 0.05
play 85, amp: 0.5, sustain: 0.25
sleep 0.05
sleep 3.0

use_synth :pulse
play chord(:C4, :maj)
sleep 0.25
play chord(:G4, :maj)
sleep 0.25
play chord(:A4, :min)
sleep 0.25
play chord(:F4, :maj)
sleep 0.25
play chord(:C6, :maj)
sleep 0.25
play chord(:G6, :maj)
sleep 0.25
play chord(:A6, :min)
sleep 0.25
play chord(:F6, :maj)
sleep 1.0


live_loop :my_song do
  play chord(:C, :maj)
  sleep 4
end

in_thread do
  live_loop :drums do
    sample :drum_bass_soft,amp: 0.25
    sleep 0.25
    sleep 0.25
    sample :drum_bass_soft
    sleep 0.5
  end
end

in_thread do
  live_loop :notes do
    play 73
    sleep 0.25
    play 74
    sleep 0.25
    play 75
    sleep 0.25
    sleep 3.25
  end
end
