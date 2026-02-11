# 🎵 Lecteur Audio FPGA - ULX3S

**Auteur :** Mohammed Habbi  
**Formation :** 3ème année ISN - ENSEM Nancy  
**Projet :** Lecteur audio embarqué sur FPGA avec interface graphique OLED

---

## 📋 Description du projet

Lecteur audio multi-albums implémenté sur carte FPGA **ULX3S** avec :
- Processeur RISC-V (Ice-V)
- Écran OLED 128×128 pixels
- Lecture audio streaming depuis carte SD
- Interface de navigation par boutons
- Affichage des pochettes d'album

---

## ✨ Fonctionnalités

### Fonctionnalités de base ✅
- ✅ **Menu par album** : navigation dans des répertoires d'albums
- ✅ **Lecture/pause** : contrôle de la lecture musicale
- ✅ **Arrêt** : retour au menu principal
- ✅ **Affichage d'image** : pochette d'album (grayscale 128×128)
- ✅ **Effet LED** : chenillard hardware pendant la lecture

### Fonctionnalités bonus ⭐
- ⭐ animation pendant la musique (ecran ou LED ou les deux)
- ⭐ **Sons système** : clics de navigation + son de démarrage
- ⭐ **Pause non bloquante** : LEDs animées même en pause

---

## 🛠️ Structure du projet



projet-audio-fpga/
├── hardware/
│ ├── soc.si # SOC principal Silice
│ └── ice-v.si # Processeur RISC-V
├── firmware/
│ ├── step_final1.c # Code C du lecteur
│ ├── config.h # Définitions périphériques
│ ├── oled.c/h # Driver OLED
│ └── display.c/h # Gestion affichage
├── BUILD_final/
│ └── build.bit # Bitstream compilé
├── sdcard/ # Contenu carte SD
│ ├── Album1/
│ │ ├── track1.raw
│ │ ├── track2.raw
│ │ └── cover.raw # 128×128 grayscale
│ ├── Album2/
│ │ └── ...
│ └── Sounds/
│ ├── click.raw
│ └── startup.raw
└── README.md


---

## 🚀 Instructions de compilation

### Prérequis
- Silice (dernière version)
- Toolchain RISC-V : `riscv64-unknown-elf-gcc`
- `openFPGALoader`
- Carte ULX3S

### Compilation complète

```bash
# Clone du dépôt
git clone https://github.com/votre-username/audio-player-fpga.git
cd audio-player-fpga

# Compilation hardware + firmware
make final FIRMWARE=step_final1

# Programmation FLASH (permanent)
openFPGALoader -f -b ulx3s BUILD_final/build.bit


Compilation rapide :
make final FIRMWARE=step_final1

🎮 Utilisation
Mapping des boutons



| Bouton | Menu Albums | Menu Pistes | Lecture          |
| ------ | ----------- | ----------- | ---------------- |
| BTN 0  | -           | Retour menu | Piste précédente |
| BTN 1  | -           | -           | Stop             |
| BTN 2  | Valider     | Valider     | -                |
| BTN 3  | Haut ↑      | Haut ↑      | -                |
| BTN 4  | Bas ↓       | Bas ↓       | -                |
| BTN 5  | -           | -           | Pause/Reprise    |
| BTN 6  | -           | -           | Piste suivante   |


Navigation
Menu Albums : choisir un album avec BTN3/4, valider avec BTN2

Menu Pistes : choisir une musique, valider pour lire

Lecture :

BTN5 = pause/reprise

BTN6 = piste suivante

BTN0 = piste précédente

BTN1 = stop (retour menu)

💾 Préparation carte SD
Structure requise

/Album1/
  ├── track1.raw    # Audio 8-bit mono 48kHz
  ├── track2.raw
  └── cover.raw     # Image 128×128 grayscale
/Album2/
  └── ...
/Sounds/
  ├── click.raw
  └── startup.raw

Conversion image (GIMP)
Ouvrir l'image

Image → Mode → Grayscale

Image → Scale Image : 128×128 pixels

File → Export As : cover.raw

Sélectionner Raw image data

Vérifier : ls -l cover.raw → 16384 octets


🔧 Configuration hardware
Périphériques mémoire mappés


| Adresse | Périphérique | Description                 |
| ------- | ------------ | --------------------------- |
| 0x10000 | LEDS         | 8 LEDs                      |
| 0x10020 | SDCARD       | Interface SD                |
| 0x10040 | BUTTONS      | 7 boutons                   |
| 0x18000 | AUDIO        | Buffer audio (2×512 octets) |


🎓 Améliorations futures
 Support RGB couleur (modification SOC)

 Décodage MP3 hardware

 Visualiseur temps réel (FFT)

 Playlist persistante

 Mode shuffle/repeat

