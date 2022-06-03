function onLoad()
    clearMusic()
end

frame_count = 0

function onFixedUpdate()
    frame_count = frame_count + 1
    if frame_count >= 90 then
        updateTitle()
        frame_count = 0
    end
end    

function updateTitle()
    cur = MusicPlayer.getCurrentAudioclip()
    if cur ~= nil then
        self.UI.setAttribute("title", "text", cur.title)
    end
end

function skipForward()
    MusicPlayer.skipForward()
    updateTitle()
end

function skipBack()
    MusicPlayer.skipBack()
    updateTitle()
end

function pause()
    if MusicPlayer.player_status == "Play" then
        MusicPlayer.pause()
    else
        MusicPlayer.play()
    end
end

function playRandom(prefix, list, title)
    if title == nil then
        title = '---'
    end
    MusicPlayer.pause()
    MusicPlayer.setCurrentAudioclip(
        {
            url = prefix .. list[math.random(#list)],
            title = title
        }
    )
    MusicPlayer.play()
end

function nicehit()
    playRandom(
        "https://tartarus.briareos.net/tts/dd/",
        {
            "vo_narr_good_crit_01 {176e47e9-86d0-4a3a-87c8-3069896c8320}.ogg",
            "vo_narr_good_crit_02 {3d31156c-2c31-4aea-a391-9294107a5f71}.ogg",
            "vo_narr_good_crit_03 {8afb4cc7-efab-4c95-a794-476b099a75f2}.ogg",
            "vo_narr_good_crit_04 {9b514763-a57e-4a39-a7c5-e99cbef9fe4f}.ogg",
            "vo_narr_good_victoryfirst_02 {48a37aa4-5d22-479e-afe1-df6b1458cd.ogg",
        }
    )
end

function nicekill()
    playRandom(
        "https://tartarus.briareos.net/tts/dd/",
        {
            "vo_narr_good_kill_big_01 {975d4411-f757-4392-ad67-09b29402208a}.ogg",
            "vo_narr_good_kill_big_02 {058b76d0-3a7a-4b35-b2d8-b4494cad0653}.ogg",
            "vo_narr_good_kill_big_03 {98d39f07-11e3-46b7-af9d-d14c09847d11}.ogg",
            "vo_narr_good_kill_strong_01 {b812116a-7b25-4a7f-9ce7-3ad3b61bf45.ogg",
            "vo_narr_good_kill_strong_02 {e89f9942-fe30-4460-8309-915dd161714.ogg",
            "vo_narr_good_kill_strong_03 {9d226b07-77c7-4caa-8884-03b725ba4d1.ogg",
            "vo_narr_good_kill_weak_01 {58fe9b2c-1165-4c11-a2c4-89f6ff545745}.ogg",
            "vo_narr_good_kill_weak_03 {5aec1a0d-b534-45dc-bba6-80c46e3e86ff}.ogg",
            "vo_narr_good_killfirst_01 {809db78f-8dac-4112-8f90-c0c105563f19}.ogg",
            "vo_narr_good_killfirst_02 {cb683bd8-484c-48d6-bb92-b7ccab35b088}.ogg",
            "vo_narr_good_killfirst_03 {08d943ba-adc0-42de-82a8-022af208e743}.ogg",
            "vo_narr_good_victoryfirst_01 {e6b99f94-eb0a-4b56-9a10-3bbcf7aa40.ogg",
            "vo_narr_good_victoryfirst_02 {48a37aa4-5d22-479e-afe1-df6b1458cd.ogg",
            "vo_narr_good_victoryfirst_03 {be4c2c49-0373-4ce6-b26b-7b294cfc21.ogg",
            "vo_narr_good_victoryfirst_04 {fc7a5f69-2c3a-49bd-8303-0ddb9ed813.ogg",
            "vo_narr_good_victoryfirst_05 {70ca6b95-ed3d-449c-b9c1-760f0286b8.ogg",
        }
    )
end

function wound()
    playRandom(
        "https://tartarus.briareos.net/tts/dd/",
        {
            "vo_narr_good_kill_dot_01 {fb40381e-cb31-4ef9-a3ca-0ce024927bc0}.ogg",
            "vo_narr_good_kill_dot_02 {739be454-4b4c-4f27-9935-458d0d980389}.ogg",
        }
    )
end

function trap()
    playRandom(
        "https://tartarus.briareos.net/tts/dd/",
        {
            "vo_narr_bad_trap_01 {5dbf2c2a-a9d8-4262-a77e-89459c91c406}.ogg",
            "vo_narr_bad_trap_02 {0e252056-4f06-4c47-b95a-dc90b7543be7}.ogg",
            "vo_narr_bad_trap_03 {aca067b1-674f-4bc9-9a23-e451bddce205}.ogg",
            "vo_narr_bad_trap_04 {9d1af87c-06f6-481b-a54f-881584c9068f}.ogg",
            "vo_narr_bad_trap_05 {174cd659-f2c7-4f6f-a81e-9f0e4c7c7483}.ogg",                   }
    )
end

function loot()
    playRandom(
        "https://tartarus.briareos.net/tts/dd/",
        {
            "vo_narr_good_lootfirst_01 {fc00b547-142f-40b5-8a64-a7489a6ed200}.ogg",
            "vo_narr_good_lootfirst_02 {a4c464b0-ed1e-456f-8dd7-695db93a494a}.ogg",
            "vo_narr_good_lootfirst_03 {6306b9a5-68d2-47c9-8994-0a1467339cab}.ogg",
            --"vo_narr_good_lootfirst_04 {7794a6e8-d908-465e-a73e-6d89b8580e4a}.ogg",
            "vo_narr_good_lootfirst_05 {e9c938d1-bb75-428f-a31a-65ddb03b1e3e}.ogg",
        }
    )
end

function badhit()
    playRandom(
        "https://tartarus.briareos.net/tts/dd/",
        {
            "vo_narr_bad_crit_01 {2b22ec53-1a49-4b5b-a2b1-0cc4778dd9f4}.ogg",
            "vo_narr_bad_crit_02 {39b52bee-741d-4876-8b9e-63289f300181}.ogg",
            "vo_narr_bad_crit_03 {93321379-3ebb-4328-b237-b3b7ee8ec5ea}.ogg",
            "vo_narr_bad_crit_04 {c9454d5e-e742-48eb-8a0e-bf0d7e4aac5c}.ogg",
            "vo_narr_bad_crit_05 {3ef4c2f7-84ad-4187-8fe6-46e3daf22b5c}.ogg",
            "vo_narr_bad_deathsdoor_01 {92b080e3-db30-43f2-865c-4d0cd5b12fde}.ogg",
            "vo_narr_bad_deathsdoor_02 {c5c882f1-8cab-48d4-b1cd-d55bcc93bc8a}.ogg",
            "vo_narr_bad_deathsdoor_03 {6c27b71f-8534-4799-80bd-75e03c2d7c0f}.ogg",
            "vo_narr_bad_deathsdoor_04 {7a87f6af-aaee-492a-a84d-1e35fb895cd9}.ogg",
            "vo_narr_bad_deathsdoor_05 {07df29e4-f57e-4c71-8c5c-c6ad8171ddae}.ogg",
        }
    )
end

function lol()
    playRandom(
        "https://tartarus.briareos.net/tts/",
        {
            "sitcom-laughing-1.mp3",
        },
        "[APPLAUSE]"
    )
end

function trombone()
    playRandom(
        "https://tartarus.briareos.net/tts/trombone/",
        {
            "sadtrombone2.mp3",
            --"sadtrombone3.mp3"
        },
        "[SAD TROMBONE]"
    )
end

function clearMusic()
    MusicPlayer.pause()
    MusicPlayer.setPlaylist({})
    MusicPlayer.shuffle = true
end

function loadMusic()
    MusicPlayer.setPlaylist(
        {
            {
            url = "https://tartarus.briareos.net/tts/hades/01%20No%20Escape.mp3",
            title = "No Escape"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/02%20The%20House%20of%20Hades.mp3",
            title = "The House of Hades"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/03%20Out%20of%20Tartarus.mp3",
            title = "Out of Tartarus"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/04%20Wretched%20Shades.mp3",
            title = "Wretched Shades"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/06%20The%20Painful%20Way.mp3",
            title = "The Painful Way"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/07%20From%20Olympus.mp3",
            title = "From Olympus"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/08%20Through%20Asphodel.mp3",
            title = "Through Asphodel"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/10%20Final%20Expense.mp3",
            title = "Final Expense"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/11%20Mouth%20of%20Styx.mp3",
            title = "Mouth of Styx"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/12%20Primordial%20Chaos.mp3",
            title = "Primordial Chaos"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/13%20The%20Bloodless.mp3",
            title = "The Bloodless"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/14%20Scourge%20of%20the%20Furies.mp3",
            title = "Scourge of the Furies"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/16%20Field%20of%20Souls.mp3",
            title = "Field of Souls"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/18%20Death%20and%20I.mp3",
            title = "Death and I"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/19%20Rage%20of%20the%20Myrmidons.mp3",
            title = "Rage of the Myrmidons"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/20%20The%20Exalted.mp3",
            title = "The Exalted"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/21%20Last%20Words.mp3",
            title = "Last Words"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/22%20The%20King%20and%20the%20Bull.mp3",
            title = "The King and the Bull"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/24%20Gates%20of%20Hell.mp3",
            title = "Gates of Hell"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/25%20God%20of%20the%20Dead.mp3",
            title = "God of the Dead"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/27%20On%20the%20Coast.mp3",
            title = "On The Coast"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/28%20In%20the%20Blood%20(ft.%20Ashley%20Barrett).mp3",
            title = "In The Blood"
            },
            {
            url = "https://tartarus.briareos.net/tts/hades/29%20The%20Unseen%20Ones%20(ft.%20Masahiro%20Aoki%20and%20Daisuke%20Kurosawa).mp3",
            title = "The Unseen Ones"
            },
            {
            url = "https://tartarus.briareos.net/tts/gow/01%20-%20God%20of%20War.mp3",
            title = "God of War"
            },
            {
            url = "https://tartarus.briareos.net/tts/gow/06%20-%20Peaks%20Pass.mp3",
            title = "Peaks Pass"
            },
            {
            url = "https://tartarus.briareos.net/tts/gow/08%20-%20The%20Dragon.mp3",
            title = "The Dragon"
            },
            {
            url = "https://tartarus.briareos.net/tts/gow/10%20-%20Magni%20and%20Modi.mp3",
            title = "Magni and Modi"
            },
            {
            url = "https://tartarus.briareos.net/tts/gow/15%20-%20Stone%20Mason.mp3",
            title = "Stone Mason"
            },
            {
            url = "https://tartarus.briareos.net/tts/gow/16%20-%20Valkyries.mp3",
            title = "Valkyries"
            }     
        }
    )
    MusicPlayer.playlist_index = math.random(#MusicPlayer.getPlaylist())
    MusicPlayer.shuffle = true
    MusicPlayer.skipForward()
    MusicPlayer.play()
end