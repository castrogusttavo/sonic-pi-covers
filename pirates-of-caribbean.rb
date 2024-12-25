# Pirates of Caribbean (Music theme)
# Coded by @castrogusttavo with Sonic Pi

# twitter.com/gustta_dev
# github.com/castrogusttavo

use_bpm 100

amp_piano = 0.7
amp_bass = 0.5
amp_melody = 0.9

cutoff_bass = 80

e = 0.25
q = 0.5
dq = 0.75
h = 1
dh = 1.5

#Melody
in_thread do
  use_synth :saw
  3.times do
    play_pattern_timed [:d3,:d3,:d3,:d3,:d3,:d3,:d3,:d3,:d3],
      [q,e,q,e,q,e,e,e,e], amp: amp_melody, sustain: 0
  end
  play_pattern_timed [:d3,:d3,:d3,:d3,:d3,:d3,:d3],
    [q,e,q,e,q,e,e], amp: amp_melody, sustain: 0
end
in_thread do
  use_synth :saw
  sleep 6
  play_pattern_timed [:a3,:a3,:a3,:a3,:a3,:a3,:a3,:a3,:a3],
    [q,e,q,e,q,e,e,e,e], amp: amp_melody, sustain: 0
  play_pattern_timed [:a3,:a3,:a3,:a3,:a3,:a3,:a3],
    [q,e,q,e,q,e,e], amp: amp_melody, sustain: 0
  2.times do
    2.times do
      play_pattern_timed [:a3,:c4,:d4,:d4,:d4,:e4,:f4,:f4,:f4,:g4,:e4,:e4,:d4,:c4,:d4],
        [e,e,q,q,e,e,q,q,e,e,q,q,e,e,h], amp: amp_melody, sustain: 0
    end
    play_pattern_timed [:a3,:c4,:d4,:d4,:d4,:f4,:g4,:g4,:g4,:a4,:bb4,:bb4,:a4,:g4,:a4,:d4,:d4,:e4,:f4,:f4,:f4,:g4,:a4,:d4,:d4,:f4,:e4,:d4,:c4,:d4],
      [e,e,q,q,e,e,q,q,e,e,q,q,e,e,e,dq,e,e,q,e,e,q,q,q,e,e,q,q,q,h], amp: amp_melody, sustain: 0
  end
  sleep q
  play_pattern_timed [:a4,:bb4,:a4,:a4,:a4,:a4,:g4,:g4,:f4,:e4,:f4,:e4,:d4,:a4,:bb4,:a4,:a4,:c5,:a4,:g4,:g4,:f4,:e4,:f4,:e4,:d4],
    [dh,dh,q,q,q,e,h+e,dh,dh,q,q,q,dh,dh,dh,q,q,q,e,h+e,dh,dh,q,q,q,dh], amp: amp_melody, sustain: 0
end

#Acc
define :dmin do
  use_synth :piano
  play :d3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :f3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :a3, sustain: q, release: e, sustain: q, amp: amp_piano
end
define :bbmaj do
  use_synth :piano
  play :d3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :f3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :bb3, sustain: q, release: e, sustain: q, amp: amp_piano
end
define :amin do
  use_synth :piano
  play :c3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :e3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :a3, sustain: q, release: e, sustain: q, amp: amp_piano
end
define :fmaj do
  use_synth :piano
  play :c3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :f3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :a3, sustain: q, release: e, sustain: q, amp: amp_piano
end
define :cmaj do
  use_synth :piano
  play :c3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :e3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :g3, sustain: q, release: e, sustain: q, amp: amp_piano
end
define :gmin do
  use_synth :piano
  play :d3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :g3, sustain: q, release: e, sustain: q, amp: amp_piano
  play :bb3, sustain: q, release: e, sustain: q, amp: amp_piano
end

in_thread do
  use_synth :fm
  sleep 2*dh
  play :d3, sustain: 2*h
  sleep 2*dh
  play :d3, sustain: 2*h
  sleep 2*dh
  play :d3, sustain: 2*h
  play :d2, sustain: 2*h
  sleep 2*dh
  with_fx :reverb do
    2.times do
      dmin
      sleep dq
      dmin
      sleep dq
      bbmaj
      sleep dq
      bbmaj
      sleep dq
      amin
      sleep dq
      amin
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
      bbmaj
      sleep dq
      bbmaj
      sleep dq
      fmaj
      sleep dq
      fmaj
      sleep dq
      cmaj
      sleep dq
      cmaj
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
      cmaj
      sleep dq
      cmaj
      sleep dq
      gmin
      sleep dq
      gmin
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
      cmaj
      sleep dq
      cmaj
      sleep dq
      dmin
      sleep dq
      dmin
      sleep dq
    end
    2.times do
      use_synth :piano
      play :d3, amp: amp_piano, sustain: h
      play :a3, amp: amp_piano, sustain: h
      sleep dh
      play :d3, amp: amp_piano, sustain: h
      play :f3, amp: amp_piano, sustain: h
      sleep dh
      play :c3, amp: amp_piano, sustain: q
      play :f3, amp: amp_piano, sustain: q
      sleep h
      play :c3, amp: amp_piano, sustain: e
      play :f3, amp: amp_piano, sustain: e
      sleep q
      play :c3, amp: amp_piano, sustain: e
      play :f3, amp: amp_piano, sustain: e
      sleep e
      play :c3, amp: amp_piano, sustain: h
      play :g3, amp: amp_piano, sustain: h
      sleep h+e
      play :c3, amp: amp_piano, sustain: h
      play :g3, amp: amp_piano, sustain: h
      sleep dh
      play :d3, amp: amp_piano, sustain: h
      play :f3, amp: amp_piano, sustain: h
      sleep dh
      play :c3, amp: amp_piano, sustain: h
      sleep dh
      play :d3, amp: amp_piano, sustain: h
      sleep dh
    end
  end
end

#Bass
in_thread do
  use_synth :chiplead
  with_fx :octaver do
    sleep dh*4
    play :d2, sustain: h, amp: amp_bass, cutoff: cutoff_bass
    sleep dh*2
    play :d2, sustain: h, amp: amp_bass, cutoff: cutoff_bass
    sleep dh*2
    2.times do
      play_pattern_timed [:d3,:d3,:bb2,:bb2,:a2,:a2,:d3,:d3,:bb2,:bb2,:f2,:f2,:a2,:a2,:d3,:d3,:d3,:d3,:c3,:c3,:bb2,:bb2,:bb2,:c3,:d3,:d3,:d3,:d3,:d3,:C3,:c3,:d3,:d3],
        [q,h,q,h,q,h,q,h,q,h,q,h,q,h,q,h,q,h,q,h,q,q,e,e,dh,q,h,q,h,q,h,q,h],
        sustain: q, amp: amp_bass, cutoff: cutoff_bass
    end
    play_pattern_timed [:d3,:d3,:d3,:d3,:d3,:bb2,:bb2,:bb2,:bb2,:bb2,:f2,:f2,:f2,:f2,:f2,:c3,:c3,:c3,:c3,:c3,:c3,:c3,:c3,:d3,:d3,:d3,:d3,:d3,:c3,:c3,:c3,:c3,:c3,:d3,:d3,:d3,:d3,:d3],
      [q,e,e,e,e,q,e,e,e,e,q,e,e,e,e,q,q,q,q,e,e,e,e,q,e,e,e,e,q,e,e,e,e,q,e,e,e,e],
      sustain: e, amp: amp_bass, cutoff: cutoff_bass
    play_pattern_timed [:d3,:d3,:d3,:d3,:d3,:bb2,:bb2,:bb2,:bb2,:bb2,:f2,:f2,:f2,:f2,:f2,:c3,:c3,:c3,:c3,:c3,:c3,:c3,:c3,:d3,:d3,:d3,:d3,:d3,:c3,:c3,:c3,:c3,:c3,:d3],
      [q,e,e,e,e,q,e,e,e,e,q,e,e,e,e,q,q,q,q,e,e,e,e,q,e,e,e,e,q,e,e,e,e,dh],
      sustain: e, amp: amp_bass, cutoff: cutoff_bass
  end
end