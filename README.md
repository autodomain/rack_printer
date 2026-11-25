# Modular 200mm Mini-Rack & SBC Cabinet System (OpenSCAD)

Parametric 3D-printable 200 mm modular mini-rack and SBC enclosure system based on KronBjorn's design, extended with multi-board support, adjustable depth (`Auto_Depth` up to 200 mm), heat-set brass inserts (`M4` / `M3`), and a realistic 3D board & accessory preview (`Show_Board_Mockup`).

## Supported SBCs (`Board_Type`)
- **Raspberry Pi 3B / 3B+** (`rpi3`)
- **Raspberry Pi 4B** (`rpi4`)
- **Raspberry Pi 5** (`rpi5`)
- **Raspberry Pi Zero / Zero 2 W** (`rpizero`)
- **Raspberry Pi Pico / Pico W** (`rpipico`)
- **Olimex A20-OLinuXino-LIME2** (`olimex_lime2`) — official CAD hole layout (`50.00 × 40.86 mm`, M3) & rear RJ45 + 2× USB + 5V DC cutouts
- **BeagleBone Black** (`bbb`) & **BeagleBone Black + Expansion Cape** (`bbb_cape`)

## Features
- **Internal Accessories (`Include_SSD`, `Include_StepDown`):** 2.5" SSD (flipped 180° so SATA connectors face inward toward LIME2) and DC-DC Step-Down (`LM2596`, `XL4015`, `Mini360`).
- **Auto Depth (`Auto_Depth`):** Automatically adjusts container depth (capped at 200 mm max) to fit the selected board, SSD, and Step-Down without blocking front connectors.
- **Heat-Set Inserts (`Cabinet_Fasteners`):** Supports `insert_m4`, `insert_m3`, and `standard_m3`.
- **2020 Extrusions & Open Frame Tray:** Customizable by U-hole count or mm length, plus grid `frame_tray` and 4-row `rack_end_chimney`.
- **3D Visual Verification (`Show_Board_Mockup`, `board_preview`):** Renders realistic 3D PCBs, ports, SSD, and Step-Down inside a ghosted enclosure or open cabinet view.
