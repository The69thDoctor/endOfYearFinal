//
//  MusicViewController.swift
//  endOfYearTake2
//
//  Created by Mobile Apps 31 on 4/18/23.
//

import UIKit
import AVFoundation

class MusicViewController: UIViewController {
    var musicPlayer = AVAudioPlayer()
    var musicPlayer2 = AVAudioPlayer()
    var musicPlayer3 = AVAudioPlayer()
    var musicPlayer4 = AVAudioPlayer()
    var musicPlayer5 = AVAudioPlayer()
    @IBOutlet weak var volumeSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        musicPlayer.prepareToPlay()
        musicPlayer2.prepareToPlay()
        musicPlayer3.prepareToPlay()
        musicPlayer4.prepareToPlay()
        musicPlayer5.prepareToPlay()
    }
    
    func soundFiles() {
        let bundle = Bundle.main
        guard let sound = bundle.path(forResource: "forte theme mmbn", ofType: "mp3") else { return }
        do {
            musicPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound))
            print("sound found")
        } catch {
            print("sound not found")
        }
    }
    
    func soundFiles2() {
        let bundle2 = Bundle.main
        guard let sound2 = bundle2.path(forResource: "Popcorn JMJ", ofType: "mp3") else { return }
        do {
            musicPlayer2 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound2))
            print("sound found")
        } catch {
            print("sound not found")
        }
    }
    
    func soundFiles3() {
        let bundle3 = Bundle.main
        guard let sound3 = bundle3.path(forResource: "yiay intro bad", ofType: "mp3") else { return }
        do {
            musicPlayer3 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound3))
            print("sound found")
        } catch {
            print("sound not found")
        }
    }
    
    func soundFiles4() {
        let bundle4 = Bundle.main
        guard let sound4 = bundle4.path(forResource: "Target Blitz", ofType: "mp3") else { return }
        do {
            musicPlayer4 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound4))
            print("sound found")
        } catch {
            print("sound not found")
        }
    }
    
    func soundFiles5() {
        let bundle5 = Bundle.main
        guard let sound5 = bundle5.path(forResource: "Happy", ofType: "mp3") else { return }
        do {
            musicPlayer5 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound5))
            print("sound found")
        } catch {
            print("sound not found")
        }
    }
    
    @IBAction func playButton(_ sender: UIButton) {
        soundFiles()
        musicPlayer.play()
    }
    @IBAction func play2Button(_ sender: UIButton) {
        soundFiles2()
        musicPlayer2.play()
    }
    @IBAction func play3Button(_ sender: UIButton) {
        soundFiles3()
        musicPlayer3.play()
    }
    @IBAction func play4Button(_ sender: UIButton) {
        soundFiles4()
        musicPlayer4.play()
    }
    @IBAction func play5Button(_ sender: UIButton) {
        soundFiles5()
        musicPlayer5.play()
    }
    
    @IBAction func stopButton(_ sender: UIButton) {
        musicPlayer.stop()
        musicPlayer.currentTime = 0
        musicPlayer2.stop()
        musicPlayer2.currentTime = 0
        musicPlayer3.stop()
        musicPlayer3.currentTime = 0
        musicPlayer4.stop()
        musicPlayer4.currentTime = 0
        musicPlayer5.stop()
        musicPlayer5.currentTime = 0
    }
    
    //MARK: Seperate Section
    
    @IBAction func volumeSlider(_ sender: UISlider) {
        musicPlayer.volume = volumeSlider.value
    }
    
}
