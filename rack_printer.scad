// ==============================================================================
// MODULAR RACK & CABINET SYSTEM (PARAMETRICO 200mm)
// Supporto completo per Raspberry Pi 3, 4 e 5
// Include: Sistema Fibra Ottica 1mm per LED, Supporto SSD 2.5" e DC-DC Step-Down
// ==============================================================================

$fn = 50;

/* [Componente da Stampare] */
// Seleziona il componente da stampare o visualizzare
Part = "cabinet_assembly"; // [cabinet_assembly: Contenitore - Assieme Completo, frontplate: Contenitore - Piastra Frontale, cabinet: Contenitore - Corpo Scatola Box, lid: Contenitore - Coperchio Superiore, backplate: Contenitore - Piastra Posteriore, frame_tray: Telaio Aperto - Senza pareti e Fondo Alleggerito, board_preview: Simulazione 3D Scheda e Accessori, handles: Contenitore - Maniglie Frontali, light_guide: Supporto Fibra Ottica 1mm per LED RPi, oled_clip: Staffa Fissaggio Display OLED I2C, rack_end_open: Rack Frame - Piastra Aperta, rack_end_grid: Rack Frame - Piastra con Griglia, rack_end_chimney: Rack Frame - Piastra con Feritoie, rack_end_closed: Rack Frame - Piastra Chiusa, sidepanel: Rack Frame - Pannello Laterale Chiuso, sidepanel_handle: Rack Frame - Pannello con Maniglia, trap: Rack Frame - Nutless Trap M4, tophandle: Maniglia Superiore Rack (2pz), extrusion_plain: Profilato 2020 senza fori, extrusion_front: Profilato 2020 fori frontali, extrusion_all: Profilato 2020 fori completi]

/* [Simulazione 3D della Scheda nel Contenitore] */
// Mostra il modello 3D realistico della scheda e degli accessori all'interno del cabinet per verifica visiva
Show_Board_Mockup = true;

/* [Configurazione Profilato Estruso 2020] */
// Modalità di calcolo della lunghezza del profilato
Extrusion_Mode = "holes"; // [holes: Per numero di fori (Unità U), length: Per lunghezza personalizzata (mm)]
// Numero di fori / Unità U (attivo se modalità = holes)
Extrusion_Holes = 10; // [1:1:50]
// Lunghezza personalizzata in mm (attiva se modalità = length)
Extrusion_Custom_Length = 150; // [20:1:500]

/* [Configurazione Scheda / SBC] */
// Seleziona il modello di scheda (configura automaticamente distanziali, porte retro, led e asole)
Board_Type = "rpi4"; // [none: Nessuno (Cabinet Vuoto / Personalizzato), rpi3: Raspberry Pi 3B / 3B+, rpi4: Raspberry Pi 4B, rpi5: Raspberry Pi 5, rpizero: Raspberry Pi Zero / Zero 2 W (Mini), rpipico: Raspberry Pi Pico / Pico W, olimex_lime2: Olimex OLinuXino LIME2, bbb: BeagleBone Black (Standalone), bbb_cape: BeagleBone Black con Cape Espansione]

// Posizionamento della scheda nel vano da 200mm (vano utile 160mm)
Board_Position = "left"; // [left: A sinistra (scheda a sinistra e accessori a destra), right: A destra (scheda a destra e accessori a sinistra), center: Centrato nel cabinet]
// Spostamento laterale fine della scheda/CPU in mm (aggiorna automaticamente fori e aperture sui pannelli)
Board_Offset_X = 0; // [-10:0.5:60]
// Spostamento longitudinale (avanti/indietro) della scheda/CPU in mm (aggiorna automaticamente fori e asole laterali)
Board_Offset_Z = 0; // [-40:0.5:40]

/* [Accessori Interni & Frontali] */
// Includi fori e colonnine per montaggio disco SSD da 2.5 pollici
Include_SSD = true;

// Includi colonnine per stabilizzatore switching DC-DC step-down (5V)
Include_StepDown = true;

// Modello di stabilizzatore switching
StepDown_Type = "LM2596"; // [LM2596: Modulo LM2596 / LM2596S (fori 31.5x15mm), XL4015: Modulo XL4015 5A alta potenza (fori 47x18mm), Mini360: Modulo ultracompatto Mini360 / MP1584]

// Abilita finestra e colonnine M2 sul pannello frontale per display OLED I2C
Enable_OLED = false;
// Modello di display (OLED I2C o LCD classico 16x2 / 20x4)
OLED_Model = "oled_096_rect"; // [oled_096_rect: OLED 0.96 poll. 128x64 (23.5x13.5mm), oled_091_wide: OLED 0.91 poll. 128x32 (26x9mm), oled_130_rect: OLED 1.3 poll. 128x64 (31.5x17.5mm), oled_150_sq: OLED 1.5 poll. 128x128 (29x29mm - cons. 3U), lcd_1602: LCD 2x16 classico 1602 (72x25mm), lcd_2004: LCD 4x20 classico 2004 (97.5x40.5mm - cons. 2U)]
// Posizione del display OLED sul pannello frontale
OLED_Position = "right"; // [right: A destra (sopra SSD), center: Al centro, left: A sinistra (lato scheda)]
// Spostamento orizzontale fine del display OLED in mm
OLED_Offset_X = 0; // [-40:0.5:40]
// Spostamento verticale fine del display OLED in mm
OLED_Offset_Y = 0; // [-10:0.5:15]

// Abilita foro sul pannello posteriore per connettore alimentazione jack a barilotto DC
Enable_Rear_DC_Jack = true;
// Diametro foro jack DC a barilotto da pannello in mm
Rear_DC_Jack_Dia = 8.0; // [8.0: DC-022 Standard (foro 8.0 mm), 11.2: DC-099 Metallico (foro 11.2 mm), 12.0: Pannello Grande (foro 12.0 mm)]
// Posizione del jack DC sul pannello posteriore
Rear_DC_Jack_Pos = "right"; // [right: A destra (lato accessori/SSD), center: Al centro, left: A sinistra (lato scheda)]
// Spostamento orizzontale fine jack DC posteriore in mm
Rear_DC_Jack_Offset_X = 0; // [-70:0.5:70]
// Spostamento verticale fine jack DC posteriore in mm
Rear_DC_Jack_Offset_Y = 0; // [-10:0.5:30]

// Abilita le maniglie frontali e i relativi 4 fori svasati sul pannello frontale
Enable_Front_Handles = true;

// Abilita foro e pulsante di reset sul pannello frontale (a destra guardando dal fronte)
Enable_Reset_Button = true;
// Diametro foro pulsante reset da pannello in mm
Reset_Button_Dia = 7.0; // [6.5: Mini Pulsante 6.5 mm, 7.0: Pulsante Reset Standard 7.0 mm (PBS-110 mini), 12.0: Pulsante Pannello 12.0 mm]
// Posizione del pulsante di reset sul pannello frontale (vista frontale)
Reset_Button_Pos = "right"; // [right: A destra (fronte dx), center: Al centro, left: A sinistra (fronte sx)]
// Spostamento orizzontale fine pulsante reset in mm
Reset_Button_Offset_X = 0; // [-60:0.5:60]
// Spostamento verticale fine pulsante reset in mm
Reset_Button_Offset_Y = 0; // [-15:0.5:30]

/* [Scritta Utente Frontale] */
// Abilita scritta personalizzata sul pannello frontale
Enable_Custom_Label = false;
// Testo della scritta utente
Custom_Label_Text = "NODE 01";
// Stile della scritta (incisa o in rilievo)
Custom_Label_Mode = "engrave"; // [engrave: Incisa (scavata nel pannello), emboss: In rilievo (sporgente sul fronte)]
// Profondita / sporgenza della scritta in mm
Custom_Label_Depth = 0.6; // [0.2:0.1:2.5]
// Dimensione carattere in mm
Custom_Label_Size = 6.0; // [2.5:0.5:18.0]
// Posizione principale della scritta (vista frontale)
Custom_Label_Pos = "center"; // [center: Al centro, left: A sinistra (fronte sx), right: A destra (fronte dx)]
// Spostamento orizzontale fine della scritta in mm
Custom_Label_Offset_X = 0; // [-70:0.5:70]
// Spostamento verticale fine della scritta in mm
Custom_Label_Offset_Y = 0; // [-20:0.5:40]

// Abilita l'asola frontale per accesso MicroSD sul pannello frontale
Enable_Front_SD_Slot = false;

/* [Posizionamento Accessori Interni (mm)] */
// Orientamento connettori disco SSD 2.5"
SSD_Orientation = "front_sata"; // [front_sata: Connettore SATA verso il fronte (consigliato per LIME2), rear_sata: Connettore SATA verso il retro]
// Spostamento laterale fine SSD 2.5" in mm
SSD_Offset_X = 0; // [-30:0.5:30]
// Spostamento longitudinale (avanti/indietro) SSD 2.5" in mm
SSD_Offset_Z = 0; // [-30:0.5:40]

// Zona di posizionamento regolatore DC-DC Step-Down
StepDown_Side = "auto"; // [auto: Automatico (davanti all'SSD per LIME2, davanti alla scheda per altre), opposite: Sul lato opposto alla scheda, front_board: Davanti alla scheda]
// Spostamento laterale fine regolatore Step-Down in mm
StepDown_Offset_X = 0; // [-40:0.5:80]
// Spostamento longitudinale (avanti/indietro) regolatore Step-Down in mm
StepDown_Offset_Z = 0; // [-10:0.5:80]

/* [Sistema LED Frontali (Fibra Ottica)] */
// Abilita fori e tubetti per portare la luce dei LED sul frontale con fibra ottica
Enable_LED_Guide = true;

// Diametro della fibra ottica in mm (consigliata fibra da 1.0 mm)
Fiber_Diameter = 1.0; // [1.0: Fibra ottica 1.0 mm (Consigliata), 1.5: Fibra ottica 1.5 mm, 2.0: Fibra ottica 2.0 mm, 3.0: Filamento trasparente 3.0 mm]

// Tipo di supporto per catturare la luce dei LED con fibra ottica
LED_Guide_Style = "single_cap"; // [single_cap: Cappuccio Singolo (adesivo / colla a caldo - universale), single_screw: Braccetti Singoli a Vite su distanziale (senza colla - tutte le schede), dual_screw: Staffa Unica a Vite su distanziale (senza colla - 2 LED), pcb_clip: Clip a Scatto su Bordo PCB (senza colla - tutte le schede)]

/* [Dimensioni Principali (mm)] */
// Larghezza totale rack in mm (Fissata a 200 mm)
Rack_Width = 200; 
// Profondità struttura rack in mm (Default: 200 mm)
Rack_Depth = 200; 
// Profondità contenitore/cabinet in mm (Standard Raspberry Pi con SSD: 115mm o 98mm)
Depth      = 115; // [80:1:200]
// Adatta automaticamente la profondità del contenitore (senza superare 200mm totali) in base a scheda e accessori
Auto_Depth = true;
// Altezza in Unità Rack U (Standard per Raspberry Pi: 2U; 1U = ~14.05 mm)
Units      = 2;   // [1:1:20] 

/* [Dettagli Meccanici e Tolleranze] */
// Posizione viti orizzontali del cabinet (mm dal bordo laterale del rack)
screw_pos = 28; 

// Tolleranza gioco accoppiamenti (mm)
slip = 0.35;

// Spessori piastre e pareti (mm)
gauge     = 3; // Spessore piastre strutturali (3 mm)
gauge_box = 2; // Spessore pareti scatola e coperchio (2 mm)

/* [Chiusura Cabinet & Inserti Filettati] */
// Sistema di fissaggio per chiusura cabinet (frontale, coperchio, retro)
Cabinet_Fasteners = "insert_m4"; // [insert_m4: Inserti in ottone M4 a caldo (Heat-Set) + Viti M4, standard_m3: Viti M3 standard (originale KronBjorn), insert_m3: Inserti in ottone M3 a caldo (Heat-Set) + Viti M3]

// Diametro foro per inserimento a caldo inserto M4 in mm (Consigliato 5.6 mm per M4)
Insert_M4_Hole_Dia = 5.6; // [5.0:0.1:6.5]

// Profondità sede per inserto M4 in mm
Insert_M4_Depth = 6.0; // [4.0:0.5:10.0]

/* [Dimensioni Viti e Fori (mm)] */
screw_head        = (Cabinet_Fasteners == "insert_m4") ? 8.6 : 7.4; 
screw_head_height = (Cabinet_Fasteners == "insert_m4") ? 2.6 : 2.2;  
screw_dia         = (Cabinet_Fasteners == "insert_m4") ? 4.3 : (Cabinet_Fasteners == "insert_m3") ? 3.3 : 3.0;   
screw_hole        = 2.6; 
screw_length      = 15;
nut_4mm           = 8.1; 
Four_mm_screw     = 3.8; // Per fori M4 e autofilettanti nei binari
Five_mm_screw     = 4.8; // Per fori M5 angolari

// Parametri per sedi inserti filettati
insert_hole_d     = (Cabinet_Fasteners == "insert_m4") ? Insert_M4_Hole_Dia : 4.2;
insert_hole_len   = (Cabinet_Fasteners == "insert_m4") ? Insert_M4_Depth : 5.0;

/* [Dimensioni Asola Maniglia Pannello Laterale (mm)] */
handle_slot_w = 80;
handle_slot_h = 20;

// --- COSTANTI DERIVATE PER COMPATIBILITÀ ---
sixinch   = Rack_Width;           // Larghezza rack (mantenuto per compatibilità)
width     = Rack_Width - 20 - 20; // 160 mm utili tra i montanti verticali
depth_w   = Rack_Depth - 20 - 20; // Profondità utile tra i montanti
unit      = (44.5/19)*6;          // 1U = ~14.0526 mm
fiber_hole = Fiber_Diameter + 0.2; // Diametro foro per inserimento fibra con leggero attrito

go();

module go(){
    // Viti laterali: necessarie solo per altezze grandi (Units >= 4) per evitare imbarcamento
    // Per 1U, 2U e 3U la lista e vuota [] per evitare conflitti con RPi, porte e maniglie
    screw_side_list = (Units >= 4) ? [Units/2] : [];

    // Dimensioni caratteristiche della scheda
    board_w = (Board_Type == "olimex_lime2") ? 60 :
              (Board_Type == "bbb" || Board_Type == "bbb_cape") ? 55 :
              (Board_Type == "rpizero") ? 30 :
              (Board_Type == "rpipico") ? 21 : 56;

    // Offset X della scheda all'interno del vano utile (width = 160 mm)
    // Con "left", la scheda e a sinistra (X=10mm dalla parete sinistra, porte HDMI vicine al bordo) e SSD a destra
    // Con "right", la scheda e a destra e gli accessori a sinistra
    pi_offset_x = ((Board_Position == "center") ? (width - board_w)/2 :
                   (Board_Position == "right")  ? (width - board_w - 10) : 10) + Board_Offset_X;

    // Profondita effettiva automatica (compatta e non supera mai i 200mm totali del fondo del contenitore)
    auto_min_dp = (Board_Type == "olimex_lime2") ? (
                      (Include_SSD && Include_StepDown) ? ((StepDown_Type == "Mini360") ? 130 : 140) :
                      (Include_SSD || Include_StepDown) ? 120 : 105
                  ) : (Include_SSD && Include_StepDown) ? 125 : 98;
    eff_depth = Auto_Depth ? min(200, max(Depth, auto_min_dp)) : min(200, Depth);

    // Coordinate Z distanziali dinamiche + offset utente (aggiornano colonnine, asole e 3D mockup)
    // RPi 3/4/5: lunghezza 85mm, fori a 3.5mm dal fronte (MicroSD) e 23.5mm dal retro (USB/Ethernet)
    rpi_rear_z   = eff_depth - 3.0 - 23.5 + Board_Offset_Z;
    rpi_front_z  = rpi_rear_z - 58.0;

    // BeagleBone Black: lunghezza 86.36mm, fori a 11.43mm dal fronte e 8.89mm dal retro
    bbb_rear_z   = eff_depth - 3.0 - 8.89 + Board_Offset_Z;
    bbb_front_z  = bbb_rear_z - 66.04;

    // Olimex LIME2: lunghezza 83.96mm x 59.61mm, fori M3 (3.3mm) a 21.55mm da fronte/retro e 4.81mm dai bordi laterali (50.00mm x 40.86mm)
    lime_rear_z  = eff_depth - 4.0 - 21.55 + Board_Offset_Z;
    lime_front_z = lime_rear_z - 40.86;

    // RPi Zero / Zero 2 W: lunghezza 65mm, fori a 3.5mm dal fronte e 3.5mm dal retro
    zero_rear_z  = eff_depth - 3.0 - 3.5 + Board_Offset_Z;
    zero_front_z = zero_rear_z - 58.0;

    // RPi Pico / Pico W: lunghezza 51mm, fori a 2mm dal fronte e 2mm dal retro
    pico_rear_z  = eff_depth - 3.0 - 2.0 + Board_Offset_Z;
    pico_front_z = pico_rear_z - 47.0;

    // Distanziali (Pegs) in base al modello di scheda
    rpi_base_pegs = 
        (Board_Type == "olimex_lime2") ? [
            // Olimex A20-OLinuXino-LIME2: schema fori reale 50.00mm x 40.86mm (21.55mm da fronte/retro, 4.81mm dai lati), viti M3
            [pi_offset_x + 4.81,        lime_front_z, 6.5, 2.8, 6],
            [pi_offset_x + 4.81 + 50.0, lime_front_z, 6.5, 2.8, 6],
            [pi_offset_x + 4.81,        lime_rear_z,  6.5, 2.8, 6],
            [pi_offset_x + 4.81 + 50.0, lime_rear_z,  6.5, 2.8, 6]
        ] :
        (Board_Type == "bbb" || Board_Type == "bbb_cape") ? [
            // BeagleBone Black: schema fori 48.26mm x 66.04mm, viti M3
            [pi_offset_x + 3.18,         bbb_front_z, 6.5, 2.8, 6],
            [pi_offset_x + 3.18 + 48.26, bbb_front_z, 6.5, 2.8, 6],
            [pi_offset_x + 3.18,         bbb_rear_z,  6.5, 2.8, 6],
            [pi_offset_x + 3.18 + 48.26, bbb_rear_z,  6.5, 2.8, 6]
        ] :
        (Board_Type == "rpizero") ? [
            // Raspberry Pi Zero / Zero 2 W (Mini): schema fori 23mm x 58mm, viti M2.5
            [pi_offset_x + 3.5,      zero_front_z, 5.5, screw_hole, 6],
            [pi_offset_x + 3.5 + 23, zero_front_z, 5.5, screw_hole, 6],
            [pi_offset_x + 3.5,      zero_rear_z,  5.5, screw_hole, 6],
            [pi_offset_x + 3.5 + 23, zero_rear_z,  5.5, screw_hole, 6]
        ] :
        (Board_Type == "rpipico") ? [
            // Raspberry Pi Pico / Pico W: schema fori 11.4mm x 47mm, viti M2
            [pi_offset_x + 4.8,        pico_front_z, 5.0, 2.0, 5],
            [pi_offset_x + 4.8 + 11.4, pico_front_z, 5.0, 2.0, 5],
            [pi_offset_x + 4.8,        pico_rear_z,  5.0, 2.0, 5],
            [pi_offset_x + 4.8 + 11.4, pico_rear_z,  5.0, 2.0, 5]
        ] :
        (Board_Type != "none") ? [
            // Standard Raspberry Pi 3, 4, 5: schema fori 49mm x 58mm, viti M2.5
            [pi_offset_x + 3.5,      rpi_front_z, 6, screw_hole, 6],
            [pi_offset_x + 3.5 + 49, rpi_front_z, 6, screw_hole, 6],
            [pi_offset_x + 3.5,      rpi_rear_z,  6, screw_hole, 6],
            [pi_offset_x + 3.5 + 49, rpi_rear_z,  6, screw_hole, 6]
        ] : [];

    // Colonnine per disco SSD da 2.5" (Standard SFF-8201: fori distanziati 61.7mm x 76.6mm)
    // Posizionato tra la scheda e i pozzetti viti laterali (regolabile tramite SSD_Offset_X / SSD_Offset_Z / SSD_Orientation)
    ssd_x0 = ((pi_offset_x > width/2) ? (13 + 4.065) : (width - 61.7 - 16)) + SSD_Offset_X;
    ssd_z0 = (eff_depth - 103.0) + SSD_Offset_Z;
    ssd_pegs = (Board_Type != "none" && Include_SSD) ? [
        [ssd_x0,        ssd_z0,        6, 2.8, 5],
        [ssd_x0 + 61.7, ssd_z0,        6, 2.8, 5],
        [ssd_x0,        ssd_z0 + 76.6, 6, 2.8, 5],
        [ssd_x0 + 61.7, ssd_z0 + 76.6, 6, 2.8, 5]
    ] : [];

    // Colonnine per stabilizzatore switching DC-DC step-down (5V)
    // Posizionamento configurabile da menu (StepDown_Side, StepDown_Offset_X, StepDown_Offset_Z)
    step_use_opposite = (StepDown_Side == "opposite") || (StepDown_Side == "auto" && (Board_Type == "olimex_lime2" || !Include_SSD));
    lime_step_ok = (Board_Type != "olimex_lime2") || (StepDown_Side != "auto") || !Include_SSD || (StepDown_Type == "Mini360") || (eff_depth >= 128);
    if(Board_Type == "olimex_lime2" && Include_SSD && Include_StepDown && !lime_step_ok){
        echo("ATTENZIONE: Con Olimex LIME2 + SSD, abilita Auto_Depth (o imposta Depth >= 130mm) per alloggiare il regolatore davanti all'SSD senza ostruire HDMI/SATA.");
    }
    step_base_x0 = step_use_opposite ? (Include_SSD ? (ssd_x0 + 10) : ((pi_offset_x > width/2) ? 14 : (width - 45 - 14))) :
                                       ((pi_offset_x > width/2) ? (width - 45 - 14) : 18);
    step_base_z0 = step_use_opposite ? (Include_SSD ? 5 : 20) : 6;
    step_x0 = step_base_x0 + StepDown_Offset_X;
    step_z0 = step_base_z0 + StepDown_Offset_Z;
    step_pegs = (Board_Type != "none" && Include_StepDown && lime_step_ok) ? (
        (StepDown_Type == "LM2596") ? [
            [step_x0,        step_z0,        5, 2.8, 5],
            [step_x0 + 31.5, step_z0 + 15,   5, 2.8, 5]
        ] :
        (StepDown_Type == "XL4015") ? [
            [step_x0,      step_z0,        5, 2.8, 5],
            [step_x0 + 47, step_z0 + 18,   5, 2.8, 5]
        ] :
        [ // Mini360 / MP1584
            [step_x0,      step_z0,        5, 2.8, 5],
            [step_x0 + 17, step_z0 + 11,   5, 2.8, 5]
        ]
    ) : [];

    // Unione di tutti i distanziali da montare sul fondo del cabinet
    all_pegs = concat(rpi_base_pegs, ssd_pegs, step_pegs);

    // Tagli frontali: asola MicroSD o USB di servizio
    sd_center_x = (Board_Type == "olimex_lime2") ? (20 + gauge_box + pi_offset_x + 9.0) :
                  (Board_Type == "bbb" || Board_Type == "bbb_cape") ? (20 + gauge_box + pi_offset_x + 27.3) :
                  (Board_Type == "rpizero")      ? (20 + gauge_box + pi_offset_x + 15) :
                  (Board_Type == "rpipico")      ? (20 + gauge_box + pi_offset_x + 10.5) :
                  (20 + gauge_box + pi_offset_x + 28);
    sd_w = (Board_Type == "rpipico") ? 12 : (Board_Type == "rpizero") ? 14 : (Board_Type == "olimex_lime2") ? 15 : 16;
    rpi_front_sq = (Enable_Front_SD_Slot && Board_Type != "none") ? [
        [sd_center_x - sd_w/2, 2, sd_w, 4.5]
    ] : [];

    // Finestra e culla integrata sul pannello frontale per Display OLED I2C / LCD 16x2 / 20x4
    oled_win_w = (OLED_Model == "oled_091_wide") ? 26.0 :
                 (OLED_Model == "oled_130_rect") ? 31.5 :
                 (OLED_Model == "oled_150_sq")   ? 29.0 :
                 (OLED_Model == "lcd_1602")      ? 72.0 :
                 (OLED_Model == "lcd_2004")      ? 97.5 : 23.5;
    oled_win_h = (OLED_Model == "oled_091_wide") ? 9.0 :
                 (OLED_Model == "oled_130_rect") ? 17.5 :
                 (OLED_Model == "oled_150_sq")   ? 29.0 :
                 (OLED_Model == "lcd_1602")      ? 25.0 :
                 (OLED_Model == "lcd_2004")      ? 40.5 : 13.5;
    oled_hole_dx = (OLED_Model == "oled_091_wide") ? 33.0 :
                   (OLED_Model == "oled_130_rect") ? 30.5 :
                   (OLED_Model == "oled_150_sq")   ? 36.0 :
                   (OLED_Model == "lcd_1602")      ? 75.0 :
                   (OLED_Model == "lcd_2004")      ? 93.0 : 23.0;
    oled_hole_dy = (OLED_Model == "oled_091_wide") ? 0.0 :
                   (OLED_Model == "oled_130_rect") ? 28.5 :
                   (OLED_Model == "oled_150_sq")   ? 36.0 :
                   (OLED_Model == "lcd_1602")      ? 31.0 :
                   (OLED_Model == "lcd_2004")      ? 55.0 : 23.0;
    oled_cx = ((OLED_Position == "center") ? (Rack_Width / 2) :
               (OLED_Position == "left")   ? 60 : 135) + OLED_Offset_X;
    oled_cy = (Units * unit) / 2 + OLED_Offset_Y;

    oled_sq = Enable_OLED ? [
        [oled_cx - oled_win_w/2, oled_cy - oled_win_h/2, oled_win_w, oled_win_h]
    ] : [];
    // Fissaggio integrato a incastro/slitta direttamente nel pannello frontale (senza viti)
    oled_pegs = [];
    all_front_sq = concat(rpi_front_sq, oled_sq);

    // Fori per fibra ottica LED di stato (PWR sempre nella stessa posizione a x0+50; 5 fori su BBB)
    led_y = 12.0;
    pwr_x = 20 + gauge_box + pi_offset_x + 50.0;
    led_x1 = (Board_Type == "olimex_lime2") ? (20 + gauge_box + pi_offset_x + 44.0) :
             (Board_Type == "bbb" || Board_Type == "bbb_cape") ? (20 + gauge_box + pi_offset_x + 34.0) :
             (Board_Type == "rpizero")      ? (20 + gauge_box + pi_offset_x + 24.0) :
             (Board_Type == "rpipico")      ? (20 + gauge_box + pi_offset_x + 14.0) :
             (20 + gauge_box + pi_offset_x + 44.0);
    led_x2 = pwr_x;
    rpi_front_rd = (Board_Type != "none" && Enable_LED_Guide) ? (
        (Board_Type == "rpizero" || Board_Type == "rpipico") ? [
            [led_x1, led_y, fiber_hole]
        ] : (Board_Type == "bbb" || Board_Type == "bbb_cape") ? [
            [20 + gauge_box + pi_offset_x + 34.0, led_y, fiber_hole],
            [20 + gauge_box + pi_offset_x + 37.0, led_y, fiber_hole],
            [20 + gauge_box + pi_offset_x + 40.0, led_y, fiber_hole],
            [20 + gauge_box + pi_offset_x + 43.0, led_y, fiber_hole],
            [pwr_x, led_y, fiber_hole]
        ] : [
            [led_x1, led_y, fiber_hole],
            [led_x2, led_y, fiber_hole]
        ]
    ) : [];

    // Tagli posteriori: porte Ethernet, USB, SATA in base alla scheda
    rpi_rear_sq = 
        (Board_Type == "rpi3") ? [
            [pi_offset_x + 2,  5, 17, 15], // RJ45 Ethernet
            [pi_offset_x + 21, 5, 16, 17], // Blocco USB 1
            [pi_offset_x + 39, 5, 16, 17]  // Blocco USB 2
        ] :
        (Board_Type == "rpi4" || Board_Type == "rpi5") ? [
            [pi_offset_x + 2,  5, 16, 17], // Blocco USB 2.0
            [pi_offset_x + 20, 5, 16, 17], // Blocco USB 3.0
            [pi_offset_x + 38, 5, 17, 15]  // RJ45 Ethernet
        ] :
        (Board_Type == "bbb" || Board_Type == "bbb_cape") ? [
            [pi_offset_x + 17.5, 5, 17, 15], // RJ45 Ethernet 10/100 (P5)
            [pi_offset_x + 41.0, 5, 11, 12]  // 5V DC Power Barrel Jack (P1 - a dx)
        ] :
        (Board_Type == "olimex_lime2") ? [
            [pi_offset_x + 3.2,  5, 17.2, 15.0], // RJ45 Gigabit Ethernet (centro 12.06mm / 475mil)
            [pi_offset_x + 21.9, 5, 36.6, 16.5]  // 2x USB 2.0 Verticali + Batteria LiPo JST + 5V DC Barrel Jack
        ] :
        (Board_Type == "rpizero") ? [
            [pi_offset_x + 4,  5, 10, 8],  // MicroUSB Data OTG
            [pi_offset_x + 16, 5, 10, 8]   // MicroUSB Power
        ] :
        (Board_Type == "rpipico") ? [
            [pi_offset_x + 5,  5, 11, 7]   // MicroUSB / Type-C Debug & Power
        ] : [];

    // Foro pannello posteriore per connettore alimentazione jack a barilotto DC
    dc_jack_x = ((Rear_DC_Jack_Pos == "center") ? (width / 2 - gauge_box) :
                 (Rear_DC_Jack_Pos == "left")   ? 25 : (width - 2*gauge_box - 25)) + Rear_DC_Jack_Offset_X;
    dc_jack_y = (Units * unit) / 2 - gauge_box + Rear_DC_Jack_Offset_Y;
    dc_rear_rd = Enable_Rear_DC_Jack ? [
        [dc_jack_x, dc_jack_y, Rear_DC_Jack_Dia]
    ] : [];

    // Posizione del pulsante di reset frontale (a destra guardando dal fronte = -X)
    rst_btn_x = ((Reset_Button_Pos == "right") ? 34.0 :
                 (Reset_Button_Pos == "left")  ? (Rack_Width - 34.0) :
                 (Rack_Width / 2)) + Reset_Button_Offset_X;
    rst_btn_y = (Units * unit) / 2 + Reset_Button_Offset_Y;

    // --- SELEZIONE COMPONENTE DA GENERARE ---
    if(Part=="cabinet_assembly" || Part=="a" || Part=="All"){
        // Visualizzazione dell'assieme completo montato orientato dritto verso l'utente
        rotate([90,0,0]){
            if(Show_Board_Mockup && Board_Type != "none"){
                // Involucro semitrasparente (%) per ispezione interna visiva a raggi X
                %frontplate(Units, all_front_sq, rpi_front_rd, oled_pegs, screw_side_list, [screw_pos], [screw_pos], pi_offset_x);
                %cabinet(eff_depth, Units, [screw_pos], all_pegs, screw_side_list, pi_offset_x);
                %lid(eff_depth, Units, [screw_pos], [screw_pos]);
                %back_plate(Units, eff_depth, [screw_pos], [screw_pos], screw_side_list, rpi_rear_sq, dc_rear_rd);
                if(Enable_Front_Handles){ %handle(Units, false); }
                board_3d_mockup(Board_Type, pi_offset_x, eff_depth, Include_SSD, Include_StepDown, StepDown_Type);
                if(Enable_OLED){
                    oled_3d_mockup(oled_cx, oled_cy, OLED_Model);
                }
                if(Enable_Rear_DC_Jack){
                    dc_jack_3d_mockup(20 + gauge_box + dc_jack_x, gauge_box + dc_jack_y, eff_depth, Rear_DC_Jack_Dia);
                }
                if(Enable_Reset_Button){
                    reset_button_3d_mockup(rst_btn_x, rst_btn_y, Reset_Button_Dia);
                }
                if(Enable_LED_Guide && Board_Type != "none"){
                    light_guide_3d_mockup(Board_Type, pi_offset_x, eff_depth, Fiber_Diameter);
                }
            } else {
                frontplate(Units, all_front_sq, rpi_front_rd, oled_pegs, screw_side_list, [screw_pos], [screw_pos], pi_offset_x);
                cabinet(eff_depth, Units, [screw_pos], all_pegs, screw_side_list, pi_offset_x);
                lid(eff_depth, Units, [screw_pos], [screw_pos]);
                back_plate(Units, eff_depth, [screw_pos], [screw_pos], screw_side_list, rpi_rear_sq, dc_rear_rd);
                if(Enable_Front_Handles){ handle(Units, false); }
            }
        }
    }else if(Part=="board_preview"){
        // Visualizzazione 3D standalone della scheda e degli accessori interni per ispezione
        rotate([90,0,0]){
            %cabinet(eff_depth, Units, [screw_pos], all_pegs, screw_side_list, pi_offset_x);
            board_3d_mockup(Board_Type, pi_offset_x, eff_depth, Include_SSD, Include_StepDown, StepDown_Type);
            if(Enable_OLED){
                oled_3d_mockup(oled_cx, oled_cy, OLED_Model);
            }
            if(Enable_Rear_DC_Jack){
                dc_jack_3d_mockup(20 + gauge_box + dc_jack_x, gauge_box + dc_jack_y, eff_depth, Rear_DC_Jack_Dia);
            }
            if(Enable_Reset_Button){
                reset_button_3d_mockup(rst_btn_x, rst_btn_y, Reset_Button_Dia);
            }
            if(Enable_LED_Guide && Board_Type != "none"){
                light_guide_3d_mockup(Board_Type, pi_offset_x, eff_depth, Fiber_Diameter);
            }
        }
    }else if(Part=="frontplate" || Part=="b" || Part=="FrontPlate"){
        // Pronto per la stampa 3D (piatto sul piano di stampa XY)
        frontplate(Units, all_front_sq, rpi_front_rd, oled_pegs, screw_side_list, [screw_pos], [screw_pos], pi_offset_x);
    }else if(Part=="cabinet" || Part=="c" || Part=="Cabinet"){
        // Corpo scatola: se Show_Board_Mockup e attivo, mostra anche la scheda e gli accessori montati all'interno!
        cabinet(eff_depth, Units, [screw_pos], all_pegs, screw_side_list, pi_offset_x);
        if(Show_Board_Mockup && Board_Type != "none"){
            board_3d_mockup(Board_Type, pi_offset_x, eff_depth, Include_SSD, Include_StepDown, StepDown_Type);
        }
    }else if(Part=="lid" || Part=="d" || Part=="Lid"){
        // Pronto per la stampa 3D (piatto sul piano XY)
        lid(eff_depth, Units, [screw_pos], [screw_pos]); 
    }else if(Part=="backplate" || Part=="e" || Part=="BackPlate"){
        // Pronto per la stampa 3D (piatto sul piano XY)
        back_plate(Units, eff_depth, [screw_pos], [screw_pos], screw_side_list, rpi_rear_sq, dc_rear_rd);
    }else if(Part=="handles" || Part=="f" || Part=="Handles"){
        handle(Units, true);
    }else if(Part=="light_guide"){
        light_guide_bracket(Fiber_Diameter, Board_Type);
    }else if(Part=="oled_clip"){
        oled_clip_bracket(OLED_Model);
    // --- STRUTTURA DEL RACK (FRAME) ---
    }else if(Part=="rack_end_open" || Part=="g" || Part=="RackEndOpen"){
        rack_end(0);
    }else if(Part=="rack_end_grid" || Part=="h" || Part=="RackEndGrid"){
        rack_end(1);
    }else if(Part=="rack_end_chimney" || Part=="i" || Part=="RackEndChimney"){
        rack_end(2);
    }else if(Part=="rack_end_closed" || Part=="j" || Part=="RackEndClosed"){
        rack_end(3);
    }else if(Part=="sidepanel" || Part=="k" || Part=="SidePanel"){
        sidepanel(Units, false);
    }else if(Part=="sidepanel_handle" || Part=="l" || Part=="SidePanelHandle"){
        sidepanel(Units, true);
    }else if(Part=="trap" || Part=="m" || Part=="Trap"){
        trap(Units);
    }else if(Part=="frame_tray" || Part=="FrameTray"){
        // Telaio / Slitta aperta senza pareti avanti e dietro, con fondo alleggerito
        frame_tray(eff_depth, Units, width);
    // --- ESTRUSIONI E MANIGLIA SUPERIORE ---
    }else if(Part=="tophandle" || Part=="n" || Part=="TopHandle"){
        tophandle();
        translate([0,30,0]){ tophandle(); }
    }else if(Part=="extrusion_plain" || Part=="o" || Part=="ExtrusionNoHoles"){
        ext_u   = (Extrusion_Mode == "holes") ? Extrusion_Holes : Units;
        ext_len = (Extrusion_Mode == "length") ? Extrusion_Custom_Length : 0;
        extrusion(ext_u, true, false, false, ext_len);
    }else if(Part=="extrusion_front" || Part=="p" || Part=="ExtrusionFrontHoles"){
        ext_u   = (Extrusion_Mode == "holes") ? Extrusion_Holes : Units;
        ext_len = (Extrusion_Mode == "length") ? Extrusion_Custom_Length : 0;
        extrusion(ext_u, true, true, false, ext_len);
    }else if(Part=="extrusion_all" || Part=="q" || Part=="ExtrusionAllHoles"){
        ext_u   = (Extrusion_Mode == "holes") ? Extrusion_Holes : Units;
        ext_len = (Extrusion_Mode == "length") ? Extrusion_Custom_Length : 0;
        extrusion(ext_u, true, true, true, ext_len);
    }
}




// ==============================================================================
// MODULI CONTENITORE (CABINET)
// ==============================================================================

module frontplate(u, square_hole, round_hole, round_peg, screw_side_front, screw_top, screw_bottom_front, pi_ox=10){
    difference(){
        baseplate(u, Rack_Width);
        
        // Square holes (MicroSD, ecc.)
        if(len(square_hole)>0){
            for(i=[0:len(square_hole)-1]){
                x = square_hole[i][0];
                y = square_hole[i][1];
                w = square_hole[i][2];
                h = square_hole[i][3];            
                translate([x,y,-1]){ cube([w,h,gauge+2]); }        
            } 
        }
        
        // Round holes (Fori per fibra ottica)
        if(len(round_hole)>0){
            for(i=[0:len(round_hole)-1]){
                x = round_hole[i][0];
                y = round_hole[i][1];
                d = round_hole[i][2];                       
                translate([x,y,-1]){ cylinder(r=d/2, h=gauge+2); } 
                // Imbuto / svasatura sul retro per facilitare l'infilaggio della fibra ottica
                translate([x,y,gauge-0.8]){ cylinder(r1=d/2, r2=d/2+0.8, h=1); }
            }   
        }

        // Cabinet mounting holes
        frontholes(u, screw_top, screw_bottom_front, screw_side_front);
        
        // Handle holes (solo se Enable_Front_Handles e abilitato)
        if(Enable_Front_Handles){
            translate([18, 4.5, gauge-0.25]){ rotate([180,0,0]){ screw(); } }
            translate([18, u*unit-4.5, gauge-0.25]){ rotate([180,0,0]){ screw(); } }        
            translate([Rack_Width-18, 4.5, gauge-0.25]){ rotate([180,0,0]){ screw(); } }
            translate([Rack_Width-18, u*unit-4.5, gauge-0.25]){ rotate([180,0,0]){ screw(); } }
        }

        // Foro e incisione pulsante di reset frontale
        if(Enable_Reset_Button){
            rst_x = ((Reset_Button_Pos == "right") ? 34.0 :
                     (Reset_Button_Pos == "left")  ? (Rack_Width - 34.0) :
                     (Rack_Width / 2)) + Reset_Button_Offset_X;
            rst_y = (u * unit) / 2 + Reset_Button_Offset_Y;
            translate([rst_x, rst_y, -1]){ cylinder(d=Reset_Button_Dia, h=gauge+2, $fn=28); }
            translate([rst_x, rst_y + Reset_Button_Dia/2 + 2.2, -0.01]){
                linear_extrude(height=0.55){
                    mirror([1,0,0]){
                        text("RST", size=2.3, halign="center", valign="bottom", font="Liberation Sans:style=Bold");
                    }
                }
            }
        }

        // Scritta utente personalizzata (modalita incisa)
        if(Enable_Custom_Label && Custom_Label_Mode == "engrave" && Custom_Label_Text != ""){
            lbl_x = ((Custom_Label_Pos == "right") ? 45.0 :
                     (Custom_Label_Pos == "left")  ? (Rack_Width - 45.0) :
                     (Rack_Width / 2)) + Custom_Label_Offset_X;
            lbl_y = (u * unit) / 2 + Custom_Label_Offset_Y;
            translate([lbl_x, lbl_y, -0.01]){
                linear_extrude(height=Custom_Label_Depth + 0.01){
                    mirror([1,0,0]){
                        text(Custom_Label_Text, size=Custom_Label_Size, halign="center", valign="center", font="Liberation Sans:style=Bold");
                    }
                }
            }
        }

        // Incisione scritte LED sulla facciata frontale sopra i fori della fibra
        if(Board_Type != "none" && Enable_LED_Guide){
            led_y = 12.0;
            pwr_x = 20 + gauge_box + pi_ox + 50.0;
            led_x1 = (Board_Type == "olimex_lime2") ? (20 + gauge_box + pi_ox + 44.0) :
                     (Board_Type == "bbb" || Board_Type == "bbb_cape") ? (20 + gauge_box + pi_ox + 38.5) :
                     (Board_Type == "rpizero")      ? (20 + gauge_box + pi_ox + 24.0) :
                     (Board_Type == "rpipico")      ? (20 + gauge_box + pi_ox + 14.0) :
                     (20 + gauge_box + pi_ox + 44.0);
            led_x2 = pwr_x;
            txt1 = (Board_Type == "bbb" || Board_Type == "bbb_cape") ? "USR0..3" : "ACT";
            translate([led_x1, led_y + 3.5, -0.01]){
                linear_extrude(0.6){
                    mirror([1, 0, 0]){
                        text(txt1, size=1.4, halign="center", valign="center", font="Liberation Sans:style=Bold");
                    }
                }
            }
            if(Board_Type != "rpizero" && Board_Type != "rpipico"){
                translate([led_x2, led_y + 3.5, -0.01]){
                    linear_extrude(0.6){
                        mirror([1, 0, 0]){
                            text("PWR", size=1.4, halign="center", valign="center", font="Liberation Sans:style=Bold");
                        }
                    }
                }
            }
        }
    } 

    // Tubetti di ritenzione e guida della fibra ottica sul retro del pannello frontale
    if(Board_Type != "none" && Enable_LED_Guide){
        led_y = 12.0;
        pwr_x = 20 + gauge_box + pi_ox + 50.0;
        led_x1 = (Board_Type == "olimex_lime2") ? (20 + gauge_box + pi_ox + 44.0) :
                 (Board_Type == "rpizero")      ? (20 + gauge_box + pi_ox + 24.0) :
                 (Board_Type == "rpipico")      ? (20 + gauge_box + pi_ox + 14.0) :
                 (20 + gauge_box + pi_ox + 44.0);
        led_x2 = pwr_x;
        collar_d = max(3.0, fiber_hole + 1.8);
        if(Board_Type == "bbb" || Board_Type == "bbb_cape"){
            // Blocchetto unico a 4 fori per USR0..3 + collarino separato per PWR
            translate([20 + gauge_box + pi_ox + 38.5, led_y, gauge]){
                difference(){
                    translate([-6.5, -1.8, 0]){ cube([13.0, 3.6, 5]); }
                    for(dx = [-4.5, -1.5, 1.5, 4.5]){
                        translate([dx, 0, -0.5]){ cylinder(d=fiber_hole, h=6); }
                    }
                }
            }
            translate([pwr_x, led_y, gauge]){
                difference(){
                    cylinder(d=collar_d, h=5);
                    translate([0,0,-0.5]){ cylinder(d=fiber_hole, h=6); }
                }
            }
        } else {
            translate([led_x1, led_y, gauge]){
                difference(){
                    cylinder(d=collar_d, h=5);
                    translate([0,0,-0.5]){ cylinder(d=fiber_hole, h=6); }
                }
            }
            if(Board_Type != "rpizero" && Board_Type != "rpipico"){
                translate([led_x2, led_y, gauge]){
                    difference(){
                        cylinder(d=collar_d, h=5);
                        translate([0,0,-0.5]){ cylinder(d=fiber_hole, h=6); }
                    }
                }
            }
        }
    }

    // Support pegs
    if(len(round_peg)>0){
        for(i=[0:len(round_peg)-1]){
            x  = round_peg[i][0];
            y  = round_peg[i][1];
            od = round_peg[i][2];
            id = round_peg[i][3];  
            he = round_peg[i][4];  
            translate([x,y,gauge]){
                difference(){
                    cylinder(r=od/2,h=he);
                    cylinder(r=id/2,h=he+1);
                }        
            }
        }
    }
    
    // Culla / slitta a incastro integrata sul retro per Display OLED I2C o LCD (senza viti, con apertura contatti)
    if(Enable_OLED){
        o_pcb_w = (OLED_Model == "oled_091_wide") ? 38.0 :
                  (OLED_Model == "oled_130_rect") ? 35.4 :
                  (OLED_Model == "oled_150_sq")   ? 42.0 :
                  (OLED_Model == "lcd_1602")      ? 80.0 :
                  (OLED_Model == "lcd_2004")      ? 98.0 : 27.3;
        o_pcb_h = (OLED_Model == "oled_091_wide") ? 12.0 :
                  (OLED_Model == "oled_130_rect") ? 33.5 :
                  (OLED_Model == "oled_150_sq")   ? 42.0 :
                  (OLED_Model == "lcd_1602")      ? 36.0 :
                  (OLED_Model == "lcd_2004")      ? 60.0 : 27.8;
        o_cx = ((OLED_Position == "center") ? (Rack_Width / 2) :
                (OLED_Position == "left")   ? 60 : 135) + OLED_Offset_X;
        o_cy = (u * unit) / 2 + OLED_Offset_Y;
        cw = o_pcb_w + 0.6;
        ch = o_pcb_h + 0.6;
        wall = 1.4;
        translate([o_cx, o_cy, gauge]){
            difference(){
                union(){
                    // Cornice perimetrale di guida PCB
                    translate([-(cw/2 + wall), -(ch/2 + wall), 0]){
                        cube([cw + 2*wall, ch + 2*wall, 2.8]);
                    }
                }
                // Vano interno PCB
                translate([-cw/2, -ch/2, -0.5]){
                    cube([cw, ch, 3.8]);
                }
                // Apertura per passaggio contatti elettrici / header I2C 4-pin (a sx guardando dal fronte = +X per 0.91" e LCD, in alto = +Y per gli altri OLED)
                if(OLED_Model == "oled_091_wide" || OLED_Model == "lcd_1602" || OLED_Model == "lcd_2004"){
                    translate([cw/2 - 0.5, -5.5, -0.5]){
                        cube([wall + 1.5, 11.0, 3.8]);
                    }
                } else {
                    translate([-5.5, ch/2 - 0.5, -0.5]){
                        cube([11.0, wall + 1.5, 3.8]);
                    }
                }
            }
            // Due labbri di ritenzione elastica a scatto (snap-in) sui lati lunghi (senza viti, spessore 0.8mm con invito a 45°)
            for(sy = [-1, 1]){
                translate([-cw/4, sy * (ch/2 - 0.55), 1.8]){
                    cube([cw/2, 1.1, 1.0]);
                }
            }
            // Fermo elastico a scatto sul lato opposto ai contatti
            if(OLED_Model == "oled_091_wide" || OLED_Model == "lcd_1602" || OLED_Model == "lcd_2004"){
                translate([-(cw/2 + 0.45), -4.0, 1.8]){
                    cube([0.9, 8.0, 1.0]);
                }
            } else {
                translate([-4.0, -(ch/2 + 0.45), 1.8]){
                    cube([8.0, 0.9, 1.0]);
                }
            }
        }
    }

    // Scritta utente personalizzata (modalita in rilievo sul fronte -Z)
    if(Enable_Custom_Label && Custom_Label_Mode == "emboss" && Custom_Label_Text != ""){
        lbl_x_e = ((Custom_Label_Pos == "right") ? 45.0 :
                   (Custom_Label_Pos == "left")  ? (Rack_Width - 45.0) :
                   (Rack_Width / 2)) + Custom_Label_Offset_X;
        lbl_y_e = (u * unit) / 2 + Custom_Label_Offset_Y;
        translate([lbl_x_e, lbl_y_e, -Custom_Label_Depth]){
            linear_extrude(height=Custom_Label_Depth + 0.01){
                mirror([1,0,0]){
                    text(Custom_Label_Text, size=Custom_Label_Size, halign="center", valign="center", font="Liberation Sans:style=Bold");
                }
            }
        }
    }

    // Cabinet support bars (lasciano libera l'asola MicroSD a sinistra e la zona OLED/LCD)
    translate([0,0,gauge]){
        difference(){
            union(){
                translate([20+width*0.1, unit*u-1-gauge_box-0.2, 0]){ cube([width*0.8, 1, 1]); }
                translate([20+gauge_box+pi_ox+40, gauge_box+0.2, 0]){ cube([width - (gauge_box+pi_ox+45), 1, 1]); }
            }
            if(Enable_OLED){
                o_pw = (OLED_Model == "oled_091_wide") ? 41.0 :
                       (OLED_Model == "oled_130_rect") ? 38.4 :
                       (OLED_Model == "oled_150_sq")   ? 45.0 :
                       (OLED_Model == "lcd_1602")      ? 83.0 :
                       (OLED_Model == "lcd_2004")      ? 101.0 : 30.3;
                o_ph = (OLED_Model == "oled_091_wide") ? 15.0 :
                       (OLED_Model == "oled_130_rect") ? 36.5 :
                       (OLED_Model == "oled_150_sq")   ? 45.0 :
                       (OLED_Model == "lcd_1602")      ? 39.0 :
                       (OLED_Model == "lcd_2004")      ? 63.0 : 30.8;
                o_cx2 = ((OLED_Position == "center") ? (Rack_Width / 2) :
                         (OLED_Position == "left")   ? 60 : 135) + OLED_Offset_X;
                o_cy2 = (u * unit) / 2 + OLED_Offset_Y;
                translate([o_cx2 - o_pw/2, o_cy2 - o_ph/2, -0.5]){ cube([o_pw, o_ph, 2.0]); }
            }
        }
    }
}


// 1) Cappuccio / convogliatore singolo per 1 LED SMD (adesivo / colla a caldo - universale)
module light_guide_single(fiber_d=1.0){
    fh = fiber_d + 0.2;
    difference(){
        union(){
            translate([-2.5, -2.5, 0]){ cube([5.0, 6.2, 1.2]); }
            translate([-2.2, -2.0, 0]){ cube([4.4, 5.2, 6.5]); }
        }
        translate([0, 0, -0.1]){ cylinder(d1=3.2, d2=fh, h=1.8, $fn=20); }
        translate([0, 0, 1.3]){
            rotate([-45, 0, 0]){
                cylinder(d=fh, h=10.5, $fn=20);
            }
        }
    }
}

// Helper coordinate relative LED rispetto al distanziale piu vicino per ciascuna scheda
function _led_screw_d(b) = (b == "olimex_lime2" || b == "bbb" || b == "bbb_cape") ? 3.2 : (b == "rpipico") ? 2.2 : 2.8;
function _led_rel_xy(b, idx=0) =
    (b == "olimex_lime2") ? ((idx == 0) ? [3.39, -13.59] : [-13.31, -10.09]) :
    (b == "bbb" || b == "bbb_cape") ? ((idx == 0) ? [-10.5, 9.47] : [-3.3, 9.47]) :
    (b == "rpizero") ? [-2.5, 0.5] :
    (b == "rpipico") ? [1.7, 3.0] :
    ((idx == 0) ? [0.0, 1.0] : [4.0, 1.0]); // rpi3 / rpi4 / rpi5 (distanziale anteriore sinistro [3.5, 3.5])

// 2) Braccetto singolo a vite su distanziale per 1 LED SMD (senza colla)
module light_guide_single_screw(fiber_d=1.0, board_type=Board_Type, led_index=0){
    fh = fiber_d + 0.2;
    sd = _led_screw_d(board_type);
    xy = _led_rel_xy(board_type, led_index);
    lx = xy[0];
    ly = xy[1];
    difference(){
        union(){
            cylinder(d=7.2, h=2.2, $fn=24);
            hull(){
                cylinder(d=5.8, h=2.0, $fn=20);
                translate([lx, ly, 0]){ cylinder(d=4.8, h=2.0, $fn=20); }
            }
            translate([lx - 2.2, ly - 2.0, 0]){ cube([4.4, 5.2, 6.5]); }
        }
        translate([0, 0, -1]){ cylinder(d=sd, h=5, $fn=20); }
        translate([lx, ly, -0.1]){ cylinder(d1=3.2, d2=fh, h=1.8, $fn=20); }
        translate([lx, ly, 1.3]){
            rotate([-45, 0, 0]){
                cylinder(d=fh, h=10.5, $fn=20);
            }
        }
    }
}

// 3) Staffa unica a vite su distanziale per 2 LED (senza colla)
module light_guide_dual_screw(fiber_d=1.0, board_type=Board_Type){
    fh = fiber_d + 0.2;
    sd = _led_screw_d(board_type);
    p0 = _led_rel_xy(board_type, 0);
    p1 = (board_type == "rpizero" || board_type == "rpipico") ? p0 : _led_rel_xy(board_type, 1);
    min_x = min(p0[0], p1[0]) - 2.6;
    max_x = max(p0[0], p1[0]) + 2.6;
    mid_y = (p0[1] + p1[1]) / 2;
    difference(){
        union(){
            cylinder(d=7.5, h=3.0, $fn=24);
            hull(){
                cylinder(d=6.8, h=2.4, $fn=20);
                translate([p0[0], p0[1], 0]){ cylinder(d=5.0, h=2.4, $fn=20); }
                translate([p1[0], p1[1], 0]){ cylinder(d=5.0, h=2.4, $fn=20); }
            }
            translate([min_x, mid_y - 2.2, 0]){
                cube([max_x - min_x, 5.8, 6.8]);
            }
        }
        translate([0, 0, -1]){ cylinder(d=sd, h=6, $fn=20); }
        translate([0, 0, 1.4]){ cylinder(d=5.6, h=3, $fn=20); }
        for(pt = (board_type == "rpizero" || board_type == "rpipico") ? [p0] : [p0, p1]){
            translate([pt[0], pt[1], -0.1]){ cylinder(d1=3.2, d2=fh, h=1.8, $fn=20); }
            translate([pt[0], pt[1], 1.3]){
                rotate([-45, 0, 0]){
                    cylinder(d=fh, h=10.5, $fn=20);
                }
            }
        }
    }
}

// 4) Clip a scatto sul bordo del PCB per 1 singolo LED (senza colla e senza viti, stampabile piatta)
module light_guide_pcb_clip(fiber_d=1.0, pcb_t=1.6, reach=6.5){
    fh = fiber_d + 0.2;
    slot = pcb_t + 0.15;
    difference(){
        union(){
            translate([-2.4, -2.2, -(slot + 1.4)]){
                cube([4.8, 3.8, slot + 3.0]);
            }
            translate([-2.4, -reach - 2.2, 0]){
                cube([4.8, reach + 3.0, 6.2]);
            }
            translate([-2.4, -reach * 0.65, -(slot + 1.4)]){
                cube([4.8, reach * 0.65 + 1.2, 1.4]);
            }
        }
        translate([-3.0, -reach - 1.0, -slot]){
            cube([6.0, reach + 1.2, slot]);
        }
        translate([0, -reach, -0.1]){ cylinder(d1=3.2, d2=fh, h=1.8, $fn=20); }
        translate([0, -reach, 1.3]){
            rotate([-45, 0, 0]){
                cylinder(d=fh, h=10.5, $fn=20);
            }
        }
    }
}

// 5) Pezzo unico a 4 fibre per i 4 LED utente (USR0..USR3) della BeagleBone Black
module light_guide_bbb_usr4(fiber_d=1.0){
    fh = fiber_d + 0.2;
    difference(){
        union(){
            translate([-2.0, -2.4, 0]){ cube([11.2, 6.0, 1.2]); }
            translate([-1.8, -2.0, 0]){ cube([10.8, 5.2, 6.5]); }
        }
        for(i = [0 : 3]){
            lx = i * 2.4;
            translate([lx, 0, -0.1]){ cylinder(d1=2.2, d2=fh, h=1.8, $fn=16); }
            translate([lx, 0, 1.3]){
                rotate([-45, 0, 0]){
                    cylinder(d=fh, h=10.5, $fn=16);
                }
            }
        }
    }
}

// Genera il/i supporti LED pronti per la stampa in base a LED_Guide_Style e Board_Type
module light_guide_bracket(fiber_d=1.0, board_type=Board_Type, style=LED_Guide_Style){
    if(board_type == "bbb" || board_type == "bbb_cape"){
        // Pezzo unico a 4 fibre per USR0..3 + cappuccio singolo separato per PWR
        light_guide_bbb_usr4(fiber_d);
        translate([16.0, 0, 0]){
            light_guide_single(fiber_d);
        }
    } else {
        count = (board_type == "rpizero" || board_type == "rpipico") ? 1 : 2;
        pcb_t = (board_type == "rpipico") ? 1.0 : 1.6;
        if(style == "dual_screw"){
            light_guide_dual_screw(fiber_d, board_type);
        } else if(style == "single_screw"){
            for(i = [0 : count - 1]){
                translate([i * 15.0, 0, 0]){
                    light_guide_single_screw(fiber_d, board_type, i);
                }
            }
        } else if(style == "pcb_clip"){
            for(i = [0 : count - 1]){
                translate([i * 10.0, 0, pcb_t + 1.55]){
                    light_guide_pcb_clip(fiber_d, pcb_t, 6.5);
                }
            }
        } else {
            for(i = [0 : count - 1]){
                translate([i * 9.0, 0, 0]){
                    light_guide_single(fiber_d);
                }
            }
        }
    }
}

// Simulazione 3D del supporto LED scelto montato su tutte le schede e relative fibre ottiche
module light_guide_3d_mockup(board_type, pi_ox, dp, fiber_d=1.0, style=LED_Guide_Style){
    x0 = 20 + gauge_box + pi_ox;
    y0 = 6.0;
    t  = (board_type == "rpipico") ? 1.0 : 1.6;

    z_led = (board_type == "olimex_lime2") ? (gauge + (dp - 4.0 - 21.55 + Board_Offset_Z - 40.86 - 21.55) + 76.0) :
            (board_type == "bbb" || board_type == "bbb_cape") ? (gauge + (dp - 3.0 - 8.89 + Board_Offset_Z - 66.04 - 11.43) + 76.0) :
            (board_type == "rpizero") ? (gauge + (dp - 3.0 - 3.5 + Board_Offset_Z - 58.0 - 3.5) + 61.0) :
            (board_type == "rpipico") ? (gauge + (dp - 4.0 - 2.0 + Board_Offset_Z - 47.0 - 2.0) + 46.0) :
            (gauge + (dp - 3.0 - 3.5 + Board_Offset_Z - 49.0 - 3.5) + 2.5); // rpi3 / rpi4 / rpi5
    z_led2 = (board_type == "olimex_lime2") ? (z_led - 3.5) : z_led;

    led_x1 = (board_type == "olimex_lime2") ? (x0 + 58.2) :
             (board_type == "bbb" || board_type == "bbb_cape") ? (x0 + 36.0) :
             (board_type == "rpizero") ? (x0 + 24.0) :
             (board_type == "rpipico") ? (x0 + 6.5) : (x0 + 3.5);
    led_x2 = (board_type == "olimex_lime2") ? (x0 + 41.5) :
             (board_type == "bbb" || board_type == "bbb_cape") ? (x0 + 43.2) : (x0 + 7.5);

    front_x1 = (board_type == "olimex_lime2") ? (x0 + 44.0) :
               (board_type == "bbb" || board_type == "bbb_cape") ? (x0 + 34.0) :
               (board_type == "rpizero") ? (x0 + 24.0) :
               (board_type == "rpipico") ? (x0 + 14.0) : (x0 + 44.0);
    front_x2 = x0 + 50.0; // PWR sempre nella stessa posizione sul frontale
    front_y = 12.0;

    z_front = gauge + 4.5;
    led_pairs = (board_type == "rpizero" || board_type == "rpipico") ?
                [[led_x1, front_x1, z_led]] :
                (board_type == "bbb" || board_type == "bbb_cape") ? [
                    [x0 + 4.0,  x0 + 34.0, z_led],
                    [x0 + 6.4,  x0 + 37.0, z_led],
                    [x0 + 8.8,  x0 + 40.0, z_led],
                    [x0 + 11.2, x0 + 43.0, z_led],
                    [x0 + 39.5, front_x2,  z_led] // PWR D1 vicino al jack 5V P1 -> foro PWR a x0+50
                ] :
                [[led_x1, front_x1, z_led], [led_x2, front_x2, z_led2]];

    // Render del supporto scelto (rotate([-90,0,0]) porta +Z su +Y in alto e +Y su -Z verso il fronte)
    if(board_type == "bbb" || board_type == "bbb_cape"){
        // Pezzo unico orizzontale a 4 fibre su D2..D5 (USR0..USR3) + cappuccio singolo su D1 (PWR vicino P1)
        color([0.92, 0.72, 0.15]){
            translate([x0 + 4.0, y0 + t, z_led]){
                rotate([-90, 0, 0]){ light_guide_bbb_usr4(fiber_d); }
            }
            translate([x0 + 39.5, y0 + t, z_led]){
                rotate([-90, 0, 0]){ light_guide_single(fiber_d); }
            }
        }
    } else if(style == "dual_screw"){
        p0 = _led_rel_xy(board_type, 0);
        color([0.92, 0.72, 0.15]){
            translate([led_x1 - p0[0], y0 + t, z_led + p0[1]]){
                rotate([-90, 0, 0]){
                    light_guide_dual_screw(fiber_d, board_type);
                }
            }
        }
    } else if(style == "single_screw"){
        for(idx = [0 : len(led_pairs) - 1]){
            px = led_pairs[idx][0];
            pz = led_pairs[idx][2];
            rel = _led_rel_xy(board_type, idx);
            color([0.92, 0.72, 0.15]){
                translate([px - rel[0], y0 + t + idx * 2.3, pz + rel[1]]){
                    rotate([-90, 0, 0]){
                        light_guide_single_screw(fiber_d, board_type, idx);
                    }
                }
            }
        }
    } else if(style == "pcb_clip"){
        for(p = led_pairs){
            color([0.92, 0.72, 0.15]){
                translate([p[0], y0 + t, p[2] - 6.5]){
                    rotate([-90, 0, 0]){
                        light_guide_pcb_clip(fiber_d, t, 6.5);
                    }
                }
            }
        }
    } else {
        for(p = led_pairs){
            color([0.92, 0.72, 0.15]){
                translate([p[0], y0 + t, p[2]]){
                    rotate([-90, 0, 0]){
                        light_guide_single(fiber_d);
                    }
                }
            }
        }
    }

    // Fibre ottiche simulate: partono direttamente dal LED dentro il supporto e arrivano dentro i collarini PWR/ACT sul frontale
    for(idx = [0 : len(led_pairs) - 1]){
        lx = led_pairs[idx][0];
        fx = led_pairs[idx][1];
        zl = led_pairs[idx][2];
        y_base = y0 + t + ((style == "single_screw") ? (idx * 2.3) : 0);
        f_col = (idx == len(led_pairs) - 1 && len(led_pairs) > 1) ? [1.00, 0.25, 0.20] : [0.20, 0.85, 1.00];

        p_start = [lx, y_base + 0.8, zl];
        p_exit  = [lx, y_base + 5.2, zl - 4.2];
        p_mid   = [(lx + fx)/2, (y_base + 5.2 + front_y)/2 - 0.5, (zl - 4.2 + z_front)/2];
        p_col   = [fx, front_y, z_front];
        p_front = [fx, front_y, -0.6];

        color(f_col){
            hull(){ translate(p_start){ sphere(d=fiber_d, $fn=12); } translate(p_exit){  sphere(d=fiber_d, $fn=12); } }
            hull(){ translate(p_exit){  sphere(d=fiber_d, $fn=12); } translate(p_mid){   sphere(d=fiber_d, $fn=12); } }
            hull(){ translate(p_mid){   sphere(d=fiber_d, $fn=12); } translate(p_col){   sphere(d=fiber_d, $fn=12); } }
            hull(){ translate(p_col){   sphere(d=fiber_d, $fn=12); } translate(p_front){ sphere(d=fiber_d, $fn=12); } }
            // Punta luminosa visibile sulla facciata frontale
            translate([fx, front_y, -0.8]){ cylinder(d=fiber_d + 0.8, h=1.0, $fn=16); }
        }
    }
}


// Feritoie di raffreddamento estese a tutto il fondo del contenitore
// Garantiscono la massima ventilazione mantenendo piazzole piene di supporto sotto ogni colonnina e vite
module cabinet_bottom_cooling(dp=Depth, w=width, pi_ox=14, round_peg=[]){
    slot_len = max(15, dp - 20);
    slot_z   = gauge + 10;
    
    difference(){
        // 1. Serie completa di feritoie longitudinali (estrusione 2D pulita per garantire 2-manifold perfetto in CGAL)
        union(){
            for(x = [29 : 5.5 : 20 + w - 9]){
                translate([x, gauge_box + 2, slot_z]){
                    rotate([90, 0, 0]){
                        linear_extrude(gauge_box + 4){
                            hull(){
                                translate([0, 0]){ circle(d=2.5, $fn=24); }
                                translate([0, slot_len]){ circle(d=2.5, $fn=24); }
                            }
                        }
                    }
                }
            }
        }
        
        // 2. Zone di rispetto solide (maschere sottrattive per preservare la plastica piena)
        union(){
            // Aree piene per i pozzetti delle 4 viti agli angoli (frontali e posteriori)
            translate([20 - 1, -2, gauge - 1]){ cube([18, gauge_box + 4, 22]); }
            translate([20 + w - 17, -2, gauge - 1]){ cube([18, gauge_box + 4, 22]); }
            translate([20 - 1, -2, gauge + dp - 21]){ cube([18, gauge_box + 4, 22]); }
            translate([20 + w - 17, -2, gauge + dp - 21]){ cube([18, gauge_box + 4, 22]); }
            
            // Piazzole cilindriche piene attorno a OGNI colonnina di montaggio (RPi, SSD, StepDown)
            // Asse orientato lungo Y (perpendicolare al fondo XZ) con ampio diametro di supporto pieno
            if(len(round_peg) > 0){
                for(i = [0 : len(round_peg)-1]){
                    px = 20 + gauge_box + round_peg[i][0];
                    pz = gauge + round_peg[i][1];
                    pod = round_peg[i][2];
                    pad_d = max(16, pod + 8); // Ampia area piena (diametro >= 16mm)
                    translate([px, gauge_box + 2, pz]){
                        rotate([90, 0, 0]){
                            cylinder(d=pad_d, h=gauge_box + 4, $fn=36);
                        }
                    }
                }
            }
        }
    }
}


module cabinet(dp,u,screw_bottom_front,round_peg,screw_side_front,pi_ox=14){
    difference(){
        box(dp,u,screw_bottom_front,round_peg,screw_side_front,pi_ox);
        
        // Fessure laterali per HDMI e alimentazione (allineate esattamente ai connettori laterali di ciascuna scheda)
        cutout_x = (pi_ox > width/2) ? (20 + width - 5) : 15;
        if(Board_Type != "none"){
            if(Board_Type == "rpi3"){
                // MicroUSB Power (z_local 7..14) + HDMI Standard (z_local 24..40) -> PCB front = gauge + dp - 88
                translate([cutout_x, 6, dp - 80 + Board_Offset_Z]){ cube([15, 14, 42]); }
            } else if(Board_Type == "rpi4" || Board_Type == "rpi5"){
                // USB-C Power (z_local 7..16) + Dual Micro-HDMI (z_local 22..43) -> PCB front = gauge + dp - 88
                translate([cutout_x, 6, dp - 80 + Board_Offset_Z]){ cube([15, 13, 44]); }
            } else if(Board_Type == "olimex_lime2"){
                // Su Olimex LIME2 i lati lunghi ospitano i pin header GPIO/LCD (nessuna porta laterale esterna)
            } else if(Board_Type == "bbb" || Board_Type == "bbb_cape"){
                // Accesso laterale debug/espansione -> PCB front = gauge + dp - 89.36
                translate([cutout_x, 6, dp - 72 + Board_Offset_Z]){ cube([15, 14, 40]); }
            } else if(Board_Type == "rpizero"){
                // Mini-HDMI + Dual MicroUSB sul lato lungo -> PCB front = gauge + dp - 68
                translate([cutout_x, 6, dp - 62 + Board_Offset_Z]){ cube([15, 12, 56]); }
            }
        }
    }
}


module box(dp,u,screw_bottom_front,round_peg,screw_side_front,pi_ox=14){
    difference(){
        translate([20,0,gauge]){
            difference(){
                cube([width, u*unit, dp]);
                translate([gauge_box, gauge_box, -1]){ 
                    cube([width-gauge_box*2, u*unit, dp+2]);
                }
            }            
        }
        // Feritoie di aerazione estese a tutto il fondo (con rispetto pieno per colonnine e viti)
        cabinet_bottom_cooling(dp, width, pi_ox, round_peg); 
    }
    
    // Screw mounts on the bottom plate
    if(len(screw_bottom_front)>0){
        for(i=[0:len(screw_bottom_front)-1]){
            p = screw_bottom_front[i];
            translate([p+5, gauge_box, gauge]){ rotate([0,-90,0]){ screwtrap(); } }
            translate([Rack_Width-p+5, gauge_box, gauge]){ rotate([0,-90,0]){ screwtrap(); } }        
            translate([p-5, gauge_box, gauge+dp-gauge_box]){ rotate([0,90,0]){ screwtrap(); } }
            translate([Rack_Width-p-5, gauge_box, gauge+dp-gauge_box]){ rotate([0,90,0]){ screwtrap(); } }
        }
    }
    
    // Screw mounts on the side of cabinet
    if(len(screw_side_front)>0){
        for(i=[0:len(screw_side_front)-1]){
            p = screw_side_front[i]*unit;
            translate([20+gauge_box, p-5, gauge]){ rotate([0,-90,-90]){ screwtrap(); } }
            translate([Rack_Width-20-gauge_box, p+5, gauge]){ rotate([0,-90,90]){ screwtrap(); } }    
            translate([20+gauge_box, p+5, gauge+dp-gauge_box]){ rotate([0,90,-90]){ screwtrap(); } }
            translate([Rack_Width-20-gauge_box, p-5, gauge+dp-gauge_box]){ rotate([0,90,90]){ screwtrap(); } }    
        }
    }
    
    // Screw mounts for lid. Two on each side, three only if dp>160
    translate([20+gauge_box, unit*u-gauge_box, gauge+10]){ rotate([0,0,-90]){ screwtrap(); } }
    translate([20+gauge_box, unit*u-gauge_box, gauge+dp-20]){ rotate([0,0,-90]){ screwtrap(); } }            
    translate([Rack_Width-20-gauge_box, unit*u-gauge_box, gauge+20]){ rotate([180,0,-90]){ screwtrap(); } }
    translate([Rack_Width-20-gauge_box, unit*u-gauge_box, gauge+dp-10]){ rotate([180,0,-90]){ screwtrap(); } }
    if(dp>160){
        translate([Rack_Width-20-gauge_box, unit*u-gauge_box, gauge+dp/2+5]){ rotate([180,0,-90]){ screwtrap(); } }
        translate([20+gauge_box, unit*u-gauge_box, gauge+dp/2-5]){ rotate([0,0,-90]){ screwtrap(); } }
    }
        
    // Lid rest bar 
    translate([20+gauge_box, unit*u-3-gauge_box, gauge]){
        linear_extrude(dp-gauge_box){ polygon(points=[[0,0],[3,3],[0,3]]); }
    }
    translate([Rack_Width-20-gauge_box, unit*u-3-gauge_box, gauge]){
        linear_extrude(dp-gauge_box){ polygon(points=[[0,0],[-3,3],[0,3]]); }
    }
        
    // Back rest bar (solo battuta inferiore sul fondo, senza sbalzi sulle pareti verticali)
    translate([20+gauge_box, gauge_box, dp+gauge-2-gauge_box]){
        cube([width-2*gauge_box, 2, 2]);
    }
              
    // Colonnine e fori di montaggio (Pegs per RPi, SSD e Step-down)
    translate([20+gauge_box, 0, gauge]){ 
        if(len(round_peg)>0){
            for(i=[0:len(round_peg)-1]){
                x  = round_peg[i][0];
                z  = round_peg[i][1];
                od = round_peg[i][2];
                id = round_peg[i][3];  
                he = round_peg[i][4];      
                translate([x, 0, z]){ peg(0, 0, od, id, he); }
            }        
        }
    }    
}


module lid(dp,u,screw_front,screw_back){    
    difference(){
        union(){ 
            if(len(screw_front)>0){
                for(i=[0:len(screw_front)-1]){                                
                    p = screw_front[i];                
                    translate([p-5, unit*u-gauge_box, gauge]){ rotate([0,-90,180]){ screwtrap(); } }
                    translate([Rack_Width-p-5, unit*u-gauge_box, gauge]){ rotate([0,-90,180]){ screwtrap(); } }
                }
            }        
            if(len(screw_back)>0){
                for(i=[0:len(screw_back)-1]){                                
                    p = screw_back[i];                                
                    translate([p+5, unit*u-gauge_box, gauge+dp-gauge_box]){ rotate([0,90,180]){ screwtrap(); } }
                    translate([Rack_Width-p+5, unit*u-gauge_box, gauge+dp-gauge_box]){ rotate([0,90,180]){ screwtrap(); } } 
                }
            }
            
            // Lid plate
            translate([20+gauge_box+slip, u*unit-gauge_box, gauge]){
                cube([width-gauge_box*2-slip*2, gauge_box, dp]);
            }    
            // Back rest
            translate([Rack_Width/2-40, u*unit-gauge_box-2, gauge+dp-2-gauge_box]){
                cube([80, 2, 2]);
            }
        }        

        // Negative screw holes
        translate([20+gauge_box+4, unit*u+0.01, gauge+15]){ rotate([90,0,0]){ screw(); } }
        translate([20+gauge_box+4, unit*u+0.01, gauge+dp-15]){ rotate([90,0,0]){ screw(); } }    
        translate([Rack_Width-20-gauge_box-4, unit*u+0.01, gauge+15]){ rotate([90,0,0]){ screw(); } }
        translate([Rack_Width-20-gauge_box-4, unit*u+0.01, gauge+dp-15]){ rotate([90,0,0]){ screw(); } }
        if(dp>160){
            translate([Rack_Width-20-gauge_box-4, unit*u+0.01, gauge+dp/2]){ rotate([90,0,0]){ screw(); } }    
            translate([20+gauge_box+4, unit*u+0.01, gauge+dp/2]){ rotate([90,0,0]){ screw(); } }
        }
        
        chimney(dp, width);
    }        
}


module back_plate(u,dp,screw_top,screw_bottom,screw_side,square_hole,round_hole){
    difference(){
        union(){
            translate([20+gauge_box+slip, gauge_box+slip, gauge+dp-gauge_box]){
                cube([width-2*gauge_box-2*slip, u*unit-2*gauge_box-2*slip, gauge_box]);
            }
        }
     
        // Square holes
        if(len(square_hole)>0){
            for(i=[0:len(square_hole)-1]){
                x = square_hole[i][0];
                y = square_hole[i][1];
                w = square_hole[i][2];
                h = square_hole[i][3];            
                translate([x+20+gauge_box, y+gauge_box, dp-1]){ cube([w,h,gauge+2]); }        
            } 
        }
    
        // Round holes
        if(len(round_hole)>0){
            for(i=[0:len(round_hole)-1]){
                x   = round_hole[i][0];
                y   = round_hole[i][1];
                dia = round_hole[i][2];
                translate([20+gauge_box+x, gauge_box+y, dp-4]){ cylinder(d=dia, h=10); }
            }
        }
        
        // Screw holes
        if(len(screw_top)>0){
            for(i=[0:len(screw_top)-1]){
                p = screw_top[i];
                translate([p, unit*u-gauge_box-4, gauge+dp+0.1]){ rotate([0,180,0]){ screw(); } }
                translate([Rack_Width-p, unit*u-gauge_box-4, gauge+dp+0.1]){ rotate([0,180,0]){ screw(); } } 
            }
        }
        if(len(screw_bottom)>0){
            for(i=[0:len(screw_bottom)-1]){
                p = screw_bottom[i]; 
                translate([p, gauge_box+4, gauge+dp+0.1]){ rotate([0,180,0]){ screw(); } }
                translate([Rack_Width-p, gauge_box+4, gauge+dp+0.1]){ rotate([0,180,0]){ screw(); } } 
            }
        }
        if(len(screw_side)>0){
            for(i=[0:len(screw_side)-1]){
                p = screw_side[i];  
                translate([Rack_Width-20-6, unit*p, gauge+dp+0.1]){ rotate([0,180,0]){ screw(); } } 
                translate([20+6, unit*p, gauge+dp+0.1]){ rotate([0,180,0]){ screw(); } }   
            }
        }
    }
}


module handle(u,print){
    if(print){
        translate([16, -u*unit, 8]){ rotate([0,90,0]){ handle1(u); } }
        translate([0, -u*unit, 8]){ rotate([0,90,0]){ handle1(u); } }
    }else{
        translate([22, 2, 0]){ rotate([0,180,0]){ handle1(u); } }
        translate([Rack_Width-14, 2, 0]){ rotate([0,180,0]){ handle1(u); } }        
    }        
}

module handle1(u){
    difference(){
        handle2(8, u*unit-4, 10, 3);
        translate([-1, 5, -1]){ handle2(10, u*unit-10-4, 6, 3); }
        translate([4, 2.5, -1]){ cylinder(r=screw_hole/2, h=9); }
        translate([4, u*unit-4-2.5, -1]){ cylinder(r=screw_hole/2, h=9); }
    }
}

module handle2(w,h,d,ra){          
    translate([0, ra, d-ra]){
        rotate([0,90,0]){ cylinder(r=ra, h=w); }
    }
    translate([0, h-ra, d-ra]){
        rotate([0,90,0]){ cylinder(r=ra, h=w); }
    }        
    translate([0, ra, 0]){ cube([w, h-ra-ra, d]); }
    cube([w, h, d-ra]);    
}


// Feritoie di ventilazione
module chimney(dp=Depth, w=width) {    
    slot_len     = min(60, max(20, dp - 40));
    slot_z       = (dp > 40) ? (dp - slot_len)/2 : 10;
    slot_count   = floor((w - 40) / 8);
    slot_span    = max(8, slot_count * 8);
    slot_x_start = 20 + (w - slot_span)/2;
    for(i=[0:8:slot_span]){
        translate([slot_x_start + i, -1, slot_z]){
            minkowski(){
                cube([0.01, 200, slot_len]);    
                sphere(d=2);        
            }
        }
    }
}


module screw(){
    cylinder(r1=screw_head/2, r2=screw_dia/2, h=screw_head_height);
    cylinder(r=screw_dia/2, h=40);    
    translate([0,0,-0.99]){ cylinder(r=screw_head/2, h=1); }    
}

module screwtrap(){  
    w_x = (Cabinet_Fasteners == "insert_m4") ? 10.0 : 8.5;
    w_y = (Cabinet_Fasteners == "insert_m4") ? 9.5 : 8.2;
    difference(){
        // Blocchetto smussato a 45 gradi (sostituisce la sfera per una stampa pulita sulle pareti verticali)
        hull(){
            translate([0, 0, 0.5]){ cube([0.5, w_y, 9.0]); }
            translate([0, 0, 2.0]){ cube([w_x, w_y - 1.2, 6.0]); }
        }  
        
        // Asse di foratura allineato alla vite (lungo X a Y=4, Z=5)
        translate([0, 4, 5]){
            rotate([0, 90, 0]){
                if(Cabinet_Fasteners == "insert_m4" || Cabinet_Fasteners == "insert_m3"){
                    // 1. Invito e imbocco per centratura inserto a caldo
                    translate([0, 0, -0.1]){ cylinder(d=insert_hole_d + 0.6, h=0.9, $fn=30); }
                    // 2. Sede di interferenza termica per inserto in ottone
                    translate([0, 0, 0]){ cylinder(d=insert_hole_d, h=insert_hole_len, $fn=36); }
                    // 3. Foro di scarico libero per la punta della vite oltre l'inserto
                    translate([0, 0, -1]){ cylinder(d=screw_dia, h=22, $fn=30); }
                } else {
                    // Vite standard M3 (foro autofilettante originale KronBjorn)
                    translate([0, 0, -5]){ cylinder(d=screw_dia, h=25, $fn=30); }
                }
            }
        }    
    }
}

module peg(x,y,od,id,he){
    translate([x,y,0]){
        rotate([-90,0,0]){
            difference(){
                cylinder(r=od/2, h=he);
                translate([0,0,-0.5]){ cylinder(r=id/2, h=he+1); }
            }        
        }
    }
}

module frontholes(u,screw_top,screw_bottom_front,screw_side_front){
    if(len(screw_bottom_front)>0){ 
        for(i=[0:len(screw_bottom_front)-1]){
            p = screw_bottom_front[i];
            translate([p, gauge_box+4, -0.01]){ screw(); }
            translate([Rack_Width-p, gauge_box+4, -0.01]){ screw(); }
        } 
    }    
    if(len(screw_side_front)>0){   
        for(i=[0:len(screw_side_front)-1]){
            p = screw_side_front[i]*unit;
            translate([20+gauge_box+4, p, -0.01]){ screw(); }
            translate([Rack_Width-20-gauge_box-4, p, -0.01]){ screw(); }    
        } 
    }   
    if(len(screw_top)>0){   
        for(i=[0:len(screw_top)-1]){
            p = screw_top[i];
            translate([p, unit*u-gauge_box-4, -0.01]){ screw(); }
            translate([Rack_Width-p, unit*u-gauge_box-4, -0.01]){ screw(); }    
        }
    }
}




// ==============================================================================
// MODULI STRUTTURA DEL RACK (FRAME & SUPPORTI - ALLINEATI A 200mm)
// ==============================================================================

// 0: open, 1: grid, 2: chimney, 3: closed
module rack_end(type){
    rw = Rack_Width + 1;
    rd = Rack_Depth + 1;
    
    difference(){
        union(){
            translate([1.25, 1.25, 1.25]){
                minkowski(){
                    cube([rw - 2.5, rd - 2.5, gauge - 2.5]);                        
                    sphere(r=1.25);
                }
            }
        }
        
        // Vano centrale aperto (per type 0 e 1)
        if(type==0 || type==1){
            translate([20, 20, -1]){ 
                cube([rw - 40, rd - 40, gauge + 2]);
            }  
        }
        
        // Fori angolari di fissaggio per montanti verticali (viti M5)
        translate([10, 10, -0.1])           { cylinder(d=5, h=10); cylinder(d1=10, d2=6, h=3.5); }
        translate([rw - 10, 10, -0.1])      { cylinder(d=5, h=10); cylinder(d1=10, d2=6, h=3.5); }
        translate([10, rd - 10, -0.1])      { cylinder(d=5, h=10); cylinder(d1=10, d2=6, h=3.5); }
        translate([rw - 10, rd - 10, -0.1]) { cylinder(d=5, h=10); cylinder(d1=10, d2=6, h=3.5); }  
      
        // Feritoie di aerazione (type 2: chimney) - 4 file perfettamente centrate in X e Y
        if(type==2){
            row_len      = 24;  // Lunghezza feritoia lungo Y
            row_pitch    = 34;  // Passo tra le 4 file lungo Y
            cy           = rd / 2;
            cx           = rw / 2;
            slot_pitch_x = 7.5;
            num_slots    = 17;  // 17 feritoie per fila (campata 120mm simmetrica)
            span_x       = (num_slots - 1) * slot_pitch_x;
            start_x      = cx - span_x / 2;
            
            // 4 file centrate perfettamente rispetto all'asse Y (intervalli simmetrici)
            for(r = [-1.5, -0.5, 0.5, 1.5]){
                ry = cy + r * row_pitch - row_len / 2;
                for(s = [0 : num_slots - 1]){
                    sx = start_x + s * slot_pitch_x;
                    translate([sx, ry, -1]){
                        minkowski(){
                            cube([0.5, row_len - 2, gauge + 2]);
                            cylinder(r=1, h=0.01, $fn=16);
                        }
                    }
                }
            }
        }    
    }  

    // Griglia (type 1: grid)
    if(type==1){
        cx = rw / 2;
        cy = rd / 2;
        diag_len  = sqrt(rw*rw + rd*rd);
        max_dim   = max(rw, rd);
        grid_span = ceil(max_dim / 12) * 12;
        
        intersection(){
            union(){
                for(i = [-grid_span : 12 : grid_span]){        
                    translate([cx + i, cy, gauge/2]){
                        rotate([0, 0, 45]){
                            cube([2, diag_len, gauge], center=true);        
                        }
                    }
                    translate([cx + i, cy, gauge/2]){
                        rotate([0, 0, -45]){
                            cube([2, diag_len, gauge], center=true);        
                        }
                    }
                }
            }
            // Maschera di ritaglio (lascia 15mm di bordo, quindi si fonde di 5mm con il bordo da 20mm)
            translate([15, 15, -1]){
                cube([rw - 30, rd - 30, gauge + 4]);
            }
        }
    }
}


module sidepanel(u, handle){
    difference(){
        baseplate(u, Rack_Depth);
        if(handle){
            translate([(Rack_Depth - handle_slot_w)/2, 9, -4]){ 
                cube([handle_slot_w, handle_slot_h, 10]);
            }
            translate([(Rack_Depth - handle_slot_w)/2, 9 + handle_slot_h/2, -4]){ 
                cylinder(d=handle_slot_h, h=10);
            }
            translate([Rack_Depth - (Rack_Depth - handle_slot_w)/2, 9 + handle_slot_h/2, -4]){ 
                cylinder(d=handle_slot_h, h=10);
            }
        }
    }
}


module baseplate(u, panel_w=Rack_Width){
    difference(){
        union(){
            translate([1.25, 1.25, 1.25]){
                minkowski(){
                    cube([panel_w - 2.5, unit*u - 2.5, gauge - 2.5]);
                    sphere(r=1.25);
                }
            }
        }
        // Rack mount holes
        translate([10 - 0.5, unit/2, -gauge/2])                 { cylinder(r=2.3, h=gauge*2); }
        translate([panel_w - 10 + 0.5, unit/2, -gauge/2])         { cylinder(r=2.3, h=gauge*2); }
        translate([10 - 0.5, u*unit - (unit/2), -gauge/2])        { cylinder(r=2.3, h=gauge*2); }
        translate([panel_w - 10 + 0.5, u*unit - (unit/2), -gauge/2]){ cylinder(r=2.3, h=gauge*2); }
        if(u >= 5){
            translate([10 - 0.5, (u*unit)/2, -gauge/2])          { cylinder(r=2.3, h=gauge*2); }
            translate([panel_w - 10 + 0.5, (u*unit)/2, -gauge/2]){ cylinder(r=2.3, h=gauge*2); }
        }  
    }    
}


// Nut-less Trap per profilati estruso
module trap(u){
    difference(){
        union(){
            translate([-2.4, 0, 4]){
                cube([4.8, unit*u, 1.5]);
            }    
            translate([-2.4, unit*u, 0]){
                rotate([90,0,0]){
                    linear_extrude(unit*u){
                        polygon(points=[[0,0],[4.8,0],[7,4],[-2.2,4]]);
                    }
                }
            }
        }                        
        for(i=[1:u]){
            translate([0, unit*i-unit/2, -1]){
                cylinder(d=Four_mm_screw, h=10);
            }                       
        }
    }
}




// ==============================================================================
// MODULI ORIGINALI MANTENUTI INTATTI (Estrusione e TopHandle)
// ==============================================================================

module tophandle(){
    rotate([0,180,0]){
    difference(){
        union(){
            rotate([0,45,0]){
                extrusion(4,false,false,false);
            }
            translate([sixinch,20,0]){
                rotate([0,45,180]){
                    extrusion(4,false,false,false);
                }
            }
        }    
        wedge();            
        translate([90,90,10]){
           cube([200,200,20],center=true);
        }
       
        translate([10,10,0]){handlescrew();}
        translate([sixinch-10,10,0]){handlescrew();}
        
    }
    intersection(){
        translate([0,0,-27.4]){
            extrusion(11,false,false,false);
        }
        wedge();        
    } 
}    
}

module handlescrew(){
    translate([0,0,-39]){cylinder(d=5,h=40); }
    translate([0,0,-4]){cylinder(d1=10,d2=6,h=3.5);}
    translate([0,0,-34]){cylinder(d=10,h=30);}
}

module wedge(){
    translate([sixinch/2,-10,15]){
        rotate([0,45+45/2,0]){
            cube([80,80,30]);
        }
        translate([0,80,0]){
            rotate([0,45+45/2,180]){
                cube([80,80,30]);
            }
        }
        translate([-20,0,-100]){
            cube([40,80,100]);
        }
    }
}

// Telaio aperto (frame tray) senza pareti anteriore e posteriore, con fondo alleggerito
module frame_tray(dp=Depth, u=Units, w=width){
    h = u * unit;
    
    difference(){
        union(){
            // Parete laterale sinistra
            translate([20, 0, gauge]){
                cube([gauge_box, h, dp]);
            }
            // Parete laterale destra
            translate([20 + w - gauge_box, 0, gauge]){
                cube([gauge_box, h, dp]);
            }
            
            // Fondo strutturale con bordi e traversi di rinforzo
            translate([20, 0, gauge]){
                cube([w, gauge_box, dp]);
            }
            
            // Nervature superiori di irrigidimento sulle pareti laterali
            translate([20, h - 2, gauge]){
                cube([4, 2, dp]);
            }
            translate([20 + w - 4, h - 2, gauge]){
                cube([4, 2, dp]);
            }
        }
        
        // Fondo a griglia quadrata (per il passaggio di fascette da 2.5mm/3.6mm/4.8mm e viti M3/M4 con rondelle)
        // Caselle quadrate da 9x9mm con nervature ortogonali da 3mm e raccordi interni da 1mm
        hole_size = 9;
        rib_size  = 3;
        pitch     = hole_size + rib_size; // 12 mm
        
        margin_x  = 8;
        margin_z  = 8;
        
        cols = floor((w - 2 * margin_x) / pitch);
        rows = floor((dp - 2 * margin_z) / pitch);
        
        start_x = 20 + margin_x + (w - 2 * margin_x - cols * pitch + rib_size) / 2;
        start_z = gauge + margin_z + (dp - 2 * margin_z - rows * pitch + rib_size) / 2;
        
        for(c = [0 : cols - 1]){
            for(r = [0 : rows - 1]){
                qx = start_x + c * pitch;
                qz = start_z + r * pitch;
                translate([qx, -1, qz]){
                    minkowski(){
                        cube([hole_size - 2, gauge_box + 2, hole_size - 2]);
                        cylinder(r=1, h=0.01, $fn=16);
                    }
                }
            }
        }
        
        // Asolature posteriori per compatibilita con le linguette di aggancio del rack
        translate([20, unit/2+3, dp+gauge-5]){ cylinder(d=gauge_box, h=10); }
        translate([20, unit/2+0, dp+gauge-5]){ cylinder(d=gauge_box, h=10); }
        translate([20, unit/2-3, dp+gauge-5]){ cylinder(d=gauge_box, h=10); }
    
        translate([20+w, unit/2+3, dp+gauge-5]){ cylinder(d=gauge_box, h=10); }
        translate([20+w, unit/2+0, dp+gauge-5]){ cylinder(d=gauge_box, h=10); }
        translate([20+w, unit/2-3, dp+gauge-5]){ cylinder(d=gauge_box, h=10); }
    }
}


module extrusion(u=Units, center=true, front=true, side=false, custom_len=0){
    len = (custom_len > 0) ? custom_len : unit * u;
    num_holes = floor((len - unit/2) / unit) + 1;
    difference(){
        translate([0,2,2]){
            minkowski(){
                cube([len,16,16]);
                sphere(d=4);
            }
        } 

        translate([-5,10,1.99]){
            rotate([0,90,0]){linear_extrude(len+10){polygon(points=[[0,-2.5],[2,-4],[2,4],[0,2.5]]);}}
        }
        translate([-5,10,18.01]){
            rotate([0,-90,180]){linear_extrude(len+10){polygon(points=[[0,-2.5],[2,-4],[2,4],[0,2.5]]);}}
        }
        
        translate([-5,18.01,10]){
            rotate([90,0,90]){linear_extrude(len+10){polygon(points=[[0,-2.5],[2,-4],[2,4],[0,2.5]]);}}
        }
        
        translate([-5,1.99,10]){
            rotate([-90,0,-90]){linear_extrude(len+10){polygon(points=[[0,-2.5],[2,-4],[2,4],[0,2.5]]);}}
        }
        
        if(center){
            translate([-5,10,10]){
                rotate([0,90,0]){
                    cylinder(d=4.6,h=len+10);
                }
            }
        } 
        
        // Holes
        if(front && num_holes > 0){
            for(i=[0 : num_holes-1]){
                hx = unit/2 + i*unit;
                if(hx < len - 2){
                    translate([hx, 10, -5]){ cylinder(d=3.8, h=30); }
                }
            }
        }    
        if(side && num_holes > 0){
            for(i=[0 : num_holes-1]){
                hx = unit/2 + i*unit;
                if(hx < len - 2){
                    translate([hx, 25, 10]){ rotate([90,0,0]){ cylinder(d=3.8, h=30); } }
                }
            }
        }

        // Length cutoff
        translate([-2,0,0]){cube([4,60,60],center=true);}
        translate([len+2,0,0]){cube([4,60,60],center=true);}    
    }
}


// ==============================================================================
// MODULO SIMULAZIONE 3D SCHEDA, COMPONENTI E ACCESSORI
// Permette la verifica visiva di ingombri, allineamento porte, distanziali e collisioni
// ==============================================================================

module board_3d_mockup(board_type="rpi4", pi_ox=14, dp=115, inc_ssd=true, inc_step=true, step_type="LM2596"){
    x0 = 20 + gauge_box + pi_ox;
    y0 = 6; // Piano di appoggio superiore delle colonnine (distanziali)

    if(board_type == "rpi3" || board_type == "rpi4" || board_type == "rpi5"){
        // Raspberry Pi 3B / 4B / 5 (85x56mm)
        w = 56;
        l = 85;
        t = 1.6;
        rpi_rear_z  = dp - 3.0 - 23.5 + Board_Offset_Z;
        rpi_front_z = rpi_rear_z - 58.0;
        z0 = gauge + rpi_front_z - 3.5; // Fori anteriori a 3.5mm dal fronte, posteriori a 23.5mm dal retro

        translate([x0, y0, z0]){
            // PCB Verde
            color([0.13, 0.55, 0.25]){
                difference(){
                    cube([w, t, l]);
                    // Fori di montaggio M2.5 reali (3.5mm dal fronte, 23.5mm dal retro)
                    translate([3.5, -0.5, 3.5]){ cylinder(d=2.7, h=t+1, $fn=20); }
                    translate([3.5 + 49, -0.5, 3.5]){ cylinder(d=2.7, h=t+1, $fn=20); }
                    translate([3.5, -0.5, 3.5 + 58]){ cylinder(d=2.7, h=t+1, $fn=20); }
                    translate([3.5 + 49, -0.5, 3.5 + 58]){ cylinder(d=2.7, h=t+1, $fn=20); }
                }
            }

            // SoC Principale (Processore Broadcom con heat spreader metallico o package nero)
            color([0.82, 0.82, 0.85]){
                translate([w/2 - 7.5, t, 38]){ cube([15, 1.8, 15]); }
            }
            // RAM chip
            color([0.18, 0.18, 0.18]){
                translate([w/2 - 6, t, 21]){ cube([12, 1.2, 12]); }
            }

            // Header GPIO 40-pin
            color([0.15, 0.15, 0.15]){
                translate([w - 6, t, 22]){ cube([5, 8.5, 51]); }
            }
            color([0.85, 0.75, 0.2]){
                translate([w - 5, t + 8.5, 23]){
                    for(p=[0:19]){
                        translate([0, 0, p*2.54]){
                            cube([0.6, 2.5, 0.6]);
                            translate([2, 0, 0]) cube([0.6, 2.5, 0.6]);
                        }
                    }
                }
            }

            // Porte Posteriori
            if(board_type == "rpi3"){
                // RJ45 Ethernet a sinistra
                color([0.78, 0.78, 0.8]){ translate([2, t, l - 15]){ cube([16, 13.5, 18.5]); } }
                // 2x USB Doppie
                color([0.82, 0.82, 0.84]){
                    translate([21, t, l - 15]){ cube([14.5, 16, 17.5]); }
                    translate([39, t, l - 15]){ cube([14.5, 16, 17.5]); }
                }
            } else {
                // RPi 4 / 5: 2x USB a sinistra (USB 2.0 nero, USB 3.0 blu)
                color([0.82, 0.82, 0.84]){
                    translate([2, t, l - 15]){ cube([14.5, 16, 17.5]); }
                    translate([20, t, l - 15]){ cube([14.5, 16, 17.5]); }
                }
                // Inserti blu porte USB 3.0
                color([0.1, 0.35, 0.85]){
                    translate([21, t + 2, l + 1.5]){ cube([12.5, 3, 1]); }
                    translate([21, t + 9, l + 1.5]){ cube([12.5, 3, 1]); }
                }
                // RJ45 Gigabit Ethernet a destra
                color([0.78, 0.78, 0.8]){ translate([38, t, l - 15]){ cube([16, 13.5, 20]); } }
            }

            // Connettori laterali sinistri
            if(board_type == "rpi3"){
                // MicroUSB Power
                color([0.8, 0.8, 0.8]){ translate([-1.5, t, 10]){ cube([8, 3.2, 6]); } }
                // HDMI Standard
                color([0.8, 0.8, 0.8]){ translate([-2, t, 28]){ cube([11, 6.5, 15]); } }
            } else {
                // USB-C Power
                color([0.8, 0.8, 0.8]){ translate([-1.5, t, 8]){ cube([8, 3.2, 9]); } }
                // Dual Micro-HDMI
                color([0.8, 0.8, 0.8]){
                    translate([-1.5, t, 24]){ cube([7.5, 3.0, 7]); }
                    translate([-1.5, t, 38]){ cube([7.5, 3.0, 7]); }
                }
            }

            // Slot MicroSD sul lato inferiore (fronte)
            color([0.75, 0.75, 0.75]){
                translate([w/2 - 6, -1.8, -2]){ cube([12, 1.8, 15]); }
            }

            // LED PWR (Rosso) e ACT (Verde) vicino all'angolo anteriore sinistro (USB Power / MicroSD)
            color([0.9, 0.1, 0.1]){ translate([3.5, t, 2.5]){ cylinder(d=1.4, h=0.8, $fn=12); } }
            color([0.1, 0.9, 0.2]){ translate([7.5, t, 2.5]){ cylinder(d=1.4, h=0.8, $fn=12); } }
        }

    } else if(board_type == "bbb" || board_type == "bbb_cape"){
        // BeagleBone Black (86.36 x 54.61 mm)
        w = 54.61;
        l = 86.36;
        t = 1.6;
        bbb_rear_z  = dp - 3.0 - 8.89 + Board_Offset_Z;
        bbb_front_z = bbb_rear_z - 66.04;
        z0 = gauge + bbb_front_z - 11.43; // Allineato a filo con la piastra posteriore

        translate([x0, y0, z0]){
            // PCB Nero opaco caratteristico di BeagleBone Black
            color([0.12, 0.12, 0.13]){
                difference(){
                    cube([w, t, l]);
                    // 4 Fori di montaggio M3 (3.2mm)
                    translate([3.18, -0.5, 11.43]){ cylinder(d=3.2, h=t+1, $fn=20); }
                    translate([3.18 + 48.26, -0.5, 11.43]){ cylinder(d=3.2, h=t+1, $fn=20); }
                    translate([3.18, -0.5, 11.43 + 66.04]){ cylinder(d=3.2, h=t+1, $fn=20); }
                    translate([3.18 + 48.26, -0.5, 11.43 + 66.04]){ cylinder(d=3.2, h=t+1, $fn=20); }
                }
            }

            // Processore Texas Instruments Sitara AM3358 (BGA package)
            color([0.18, 0.18, 0.18]){
                translate([20, t, 39]){ cube([15, 1.4, 15]); }
            }
            // Logo / serigrafia TI
            color([0.75, 0.75, 0.75]){
                translate([24, t + 1.41, 44]){ cube([7, 0.05, 5]); }
            }
            // Kingston eMMC flash
            color([0.22, 0.22, 0.22]){
                translate([21, t, 59]){ cube([12, 1.2, 14]); }
            }
            // RAM DDR3
            color([0.22, 0.22, 0.22]){
                translate([22, t, 22]){ cube([10, 1.2, 13]); }
            }

            // Headers di espansione P8 e P9 (2x23 pin ciascuno)
            // P9 (sinistro) e P8 (destro)
            color([0.16, 0.16, 0.16]){
                translate([1, t, 14]){ cube([5.0, 8.5, 58.5]); }
                translate([w - 6, t, 14]){ cube([5.0, 8.5, 58.5]); }
            }
            // Pin dorati interni femmina
            color([0.85, 0.75, 0.2]){
                translate([2, t + 8.5, 15]){
                    for(p=[0:22]){
                        translate([0, 0, p*2.54]){
                            cube([0.8, 0.2, 0.8]);
                            translate([2, 0, 0]) cube([0.8, 0.2, 0.8]);
                        }
                    }
                }
                translate([w - 5, t + 8.5, 15]){
                    for(p=[0:22]){
                        translate([0, 0, p*2.54]){
                            cube([0.8, 0.2, 0.8]);
                            translate([2, 0, 0]) cube([0.8, 0.2, 0.8]);
                        }
                    }
                }
            }

            // Porte Posteriori BeagleBone Black (Fig. 9.2 Manuale Ufficiale: P5 Ethernet + P1 Jack 5V a dx)
            // 1. RJ45 Ethernet 10/100 (P5)
            color([0.78, 0.78, 0.8]){
                translate([18.0, t, l - 16]){ cube([16, 13.5, 21]); }
            }

            // 2. Jack di alimentazione 5V DC (P1, 5.5mm x 2.1mm - a dx)
            color([0.18, 0.18, 0.18]){
                translate([42.0, t, l - 14]){ cube([9, 11, 14.5]); }
            }
            color([0.8, 0.8, 0.82]){
                translate([46.5, t + 5.5, l - 14 + 14.5]){
                    rotate([90, 0, 0]){ cylinder(d=5.5, h=2.5, $fn=24); }
                }
            }

            // Connettori Frontali BeagleBone Black (USB Host P3, microHDMI P6 sotto, microSD P7 sotto)
            color([0.82, 0.82, 0.84]){
                translate([2.0, t, -2.0]){ cube([14.5, 7.5, 17]); } // USB 2.0 Host Type-A (P3)
            }
            color([0.75, 0.75, 0.78]){
                translate([24.0, -3.2, -1.5]){ cube([7.5, 3.2, 8.0]); } // microHDMI (P6 underside)
            }
            color([0.75, 0.75, 0.75]){
                translate([34.0, -1.8, -1.5]){ cube([14, 1.8, 15]); } // microSD (P7 underside)
            }

            // 4 LED Blu di stato Utente (D2..D5 / USR0..USR3 in fila orizzontale a sx di P5) + LED PWR (D1 vicino a P1)
            color([0.1, 0.45, 0.95]){
                for(led_i=[0:3]){
                    translate([4.0 + led_i*2.4, t, 76.0]){
                        cylinder(d=1.2, h=0.6, $fn=12);
                    }
                }
            }
            color([0.1, 0.45, 0.95]){ translate([39.5, t, 76.0]){ cylinder(d=1.2, h=0.6, $fn=12); } }

            // Pulsanti Power, Reset, Boot
            color([0.15, 0.15, 0.15]){
                translate([4, t, 2]){ cube([4, 2.5, 4]); }
                translate([w - 8, t, 2]){ cube([4, 2.5, 4]); }
                translate([w - 8, t, l - 8]){ cube([4, 2.5, 4]); }
            }

            // Se abilitata la versione con Cape: simulazione 3D della scheda di espansione montata sopra
            if(board_type == "bbb_cape"){
                cape_y = t + 8.5; // Quota superiore degli header P8/P9 (~10.1mm da base BBB)
                cape_t = 1.6;

                translate([0, cape_y, 0]){
                    // PCB del Cape (Blu industriale)
                    color([0.12, 0.35, 0.68]){
                        difference(){
                            cube([w, cape_t, l]);
                            // Fori di fissaggio allineati ai fori BBB
                            translate([3.18, -0.5, 11.43]){ cylinder(d=3.2, h=cape_t+1, $fn=20); }
                            translate([3.18 + 48.26, -0.5, 11.43]){ cylinder(d=3.2, h=cape_t+1, $fn=20); }
                            translate([3.18, -0.5, 11.43 + 66.04]){ cylinder(d=3.2, h=cape_t+1, $fn=20); }
                            translate([3.18 + 48.26, -0.5, 11.43 + 66.04]){ cylinder(d=3.2, h=cape_t+1, $fn=20); }
                        }
                    }

                    // Morsettiere a vite industriali (Verdi)
                    color([0.15, 0.65, 0.25]){
                        translate([2, cape_t, 18]){ cube([7.5, 10, 26]); }
                        translate([2, cape_t, 48]){ cube([7.5, 10, 26]); }
                    }
                    // Viti metalliche sui morsetti
                    color([0.8, 0.8, 0.8]){
                        for(vi=[0:5]){
                            translate([4.5, cape_t + 10.05, 21 + vi*4.3]){
                                cylinder(d=2.2, h=0.3, $fn=16);
                            }
                            translate([4.5, cape_t + 10.05, 51 + vi*4.3]){
                                cylinder(d=2.2, h=0.3, $fn=16);
                            }
                        }
                    }

                    // Due Relè di potenza industriali a cubo (Blu Songle)
                    color([0.1, 0.35, 0.88]){
                        translate([16, cape_t, 22]){ cube([15.5, 15, 19]); }
                        translate([16, cape_t, 46]){ cube([15.5, 15, 19]); }
                    }

                    // LED di segnalazione del Cape
                    color([0.9, 0.15, 0.15]){ translate([w - 12, cape_t, 25]){ cylinder(d=3, h=4, $fn=16); } }
                    color([0.15, 0.85, 0.25]){ translate([w - 12, cape_t, 35]){ cylinder(d=3, h=4, $fn=16); } }
                    color([0.9, 0.75, 0.15]){ translate([w - 12, cape_t, 45]){ cylinder(d=3, h=4, $fn=16); } }

                    // Header di breakout secondario
                    color([0.15, 0.15, 0.15]){
                        translate([w - 8, cape_t, 55]){ cube([5, 8.5, 22]); }
                    }
                }
            }
        }

    } else if(board_type == "olimex_lime2"){
        // Olimex A20-OLinuXino-LIME2 (83.96x59.61mm) - PCB Nero opaco caratteristico Olimex
        w = 59.61;
        l = 83.96;
        t = 1.6;
        lime_rear_z  = dp - 4.0 - 21.55 + Board_Offset_Z;
        lime_front_z = lime_rear_z - 40.86;
        z0 = gauge + lime_front_z - 21.55; // Fori reali a 21.55mm da fronte/retro e 4.81mm dai lati

        translate([x0, y0, z0]){
            // PCB Nero opaco
            color([0.12, 0.12, 0.13]){
                difference(){
                    cube([w, t, l]);
                    translate([4.81,        -0.5, 21.55]){ cylinder(d=3.3, h=t+1, $fn=20); }
                    translate([4.81 + 50.0, -0.5, 21.55]){ cylinder(d=3.3, h=t+1, $fn=20); }
                    translate([4.81,        -0.5, 21.55 + 40.86]){ cylinder(d=3.3, h=t+1, $fn=20); }
                    translate([4.81 + 50.0, -0.5, 21.55 + 40.86]){ cylinder(d=3.3, h=t+1, $fn=20); }
                }
            }
            // SoC Allwinner A20 Dual-Core
            color([0.20, 0.20, 0.22]){ translate([22, t, 34]){ cube([14, 1.4, 14]); } }
            // 2x DDR3 RAM (1GB totali)
            color([0.18, 0.18, 0.19]){
                translate([22, t, 20]){ cube([13, 1.1, 8]); }
                translate([38, t, 34]){ cube([8, 1.1, 13]); }
            }
            // PMIC AXP209 & Gigabit PHY RTL8211E
            color([0.18, 0.18, 0.19]){
                translate([14, t, 24]){ cube([6, 1.0, 6]); }
                translate([12, t, 56]){ cube([6, 1.0, 6]); }
            }

            // Porte Posteriori (lato corto 59.61mm verso il retro - quote ufficiali Olimex):
            // 1. RJ45 Gigabit Ethernet (centro 475mil = 12.06mm)
            color([0.78, 0.78, 0.80]){ translate([4.0, t, l - 16]){ cube([16, 13.5, 18.5]); } }
            // 2. 2x USB 2.0 Host VERTICALI (centri 1025mil = 26.04mm e 1405mil = 35.69mm)
            color([0.82, 0.82, 0.84]){
                translate([22.3, t, l - 13]){ cube([7.5, 14.5, 15.5]); }
                translate([31.9, t, l - 13]){ cube([7.5, 14.5, 15.5]); }
            }
            // 3. Connettore Batteria LiPo JST 2-pin (centro 1710mil = 43.43mm)
            color([0.92, 0.92, 0.90]){ translate([40.5, t, l - 7.5]){ cube([6.0, 6.0, 8.0]); } }
            // 4. 5V DC Barrel Jack (angolo posteriore superiore)
            color([0.16, 0.16, 0.16]){ translate([48.0, t, l - 10]){ cube([9.5, 11.0, 12.5]); } }
            color([0.80, 0.80, 0.82]){
                translate([52.75, t + 5.5, l + 2.5]){
                    rotate([90, 0, 0]){ cylinder(d=5.5, h=2.0, $fn=24); }
                }
            }

            // Connettori sul lato corto anteriore (fronte):
            // Mini-USB OTG, HDMI Standard, SATA Nativo 7-pin, SATA 5V Power (2-pin JST)
            color([0.80, 0.80, 0.82]){ translate([4.5, t, -2.0]){ cube([8.5, 4.0, 9.0]); } }    // Mini-USB OTG
            color([0.80, 0.80, 0.82]){ translate([21.0, t, -2.5]){ cube([15.0, 6.5, 12.0]); } } // HDMI Standard
            color([0.16, 0.16, 0.16]){ translate([38.5, t, -1.5]){ cube([12.0, 7.5, 7.0]); } }  // SATA 7-pin
            color([0.92, 0.92, 0.90]){ translate([52.0, t, -1.5]){ cube([5.5, 5.5, 7.5]); } }   // SATA 5V Power (2-pin JST)

            // Header espansione GPIO-1/2/3 e LCD lungo i lati lunghi (caratteristici Olimex LIME2)
            color([0.15, 0.15, 0.15]){
                translate([1.5, t, 26]){ cube([5.0, 6.0, 32]); }
                translate([w - 6.5, t, 26]){ cube([5.0, 6.0, 32]); }
            }

            // Slot MicroSD sul lato inferiore anteriore (sotto Mini-USB OTG, a dx dell'HDMI guardando dal fronte)
            color([0.75, 0.75, 0.75]){ translate([2.5, -1.8, -1.5]){ cube([13, 1.8, 15]); } }

            // LED di stato (PWR_LED Rosso a dx del jack 5V, CHGLED Verde dietro batteria LiPo leggermente a sx)
            color([0.9, 0.1, 0.1]){ translate([58.2, t, 76.0]){ cylinder(d=1.4, h=0.8, $fn=12); } }
            color([0.1, 0.9, 0.2]){ translate([41.5, t, 72.5]){ cylinder(d=1.4, h=0.8, $fn=12); } }
        }

    } else if(board_type == "rpizero"){
        // Raspberry Pi Zero / Zero 2 W (65x30mm)
        w = 30;
        l = 65;
        t = 1.6;
        zero_rear_z  = dp - 3.0 - 3.5 + Board_Offset_Z;
        zero_front_z = zero_rear_z - 58.0;
        z0 = gauge + zero_front_z - 3.5; // Allineato a filo con la piastra posteriore

        translate([x0, y0, z0]){
            color([0.13, 0.55, 0.25]){
                difference(){
                    cube([w, t, l]);
                    translate([3.5, -0.5, 3.5]){ cylinder(d=2.7, h=t+1, $fn=20); }
                    translate([3.5 + 23, -0.5, 3.5]){ cylinder(d=2.7, h=t+1, $fn=20); }
                    translate([3.5, -0.5, 3.5 + 58]){ cylinder(d=2.7, h=t+1, $fn=20); }
                    translate([3.5 + 23, -0.5, 3.5 + 58]){ cylinder(d=2.7, h=t+1, $fn=20); }
                }
            }
            // SoC RP3A0 / BCM2835
            color([0.18, 0.18, 0.18]){ translate([w/2 - 6, t, 25]){ cube([12, 1.2, 12]); } }
            // 2x MicroUSB + Mini-HDMI sul lato lungo sinistro
            color([0.8, 0.8, 0.82]){
                translate([-1.5, t, 8]){ cube([7, 3.2, 11]); }  // Mini-HDMI
                translate([-1.5, t, 38]){ cube([7, 3.2, 8]); }  // MicroUSB Data
                translate([-1.5, t, 50]){ cube([7, 3.2, 8]); }  // MicroUSB Power
            }
        }

    } else if(board_type == "rpipico"){
        // Raspberry Pi Pico / Pico W (51x21mm)
        w = 21;
        l = 51;
        t = 1.6;
        pico_rear_z  = dp - 3.0 - 2.0 + Board_Offset_Z;
        pico_front_z = pico_rear_z - 47.0;
        z0 = gauge + pico_front_z - 2.0; // Allineato a filo con la piastra posteriore

        translate([x0, y0, z0]){
            color([0.13, 0.55, 0.25]){
                difference(){
                    cube([w, t, l]);
                    translate([4.8, -0.5, 2.0]){ cylinder(d=2.1, h=t+1, $fn=16); }
                    translate([4.8 + 11.4, -0.5, 2.0]){ cylinder(d=2.1, h=t+1, $fn=16); }
                    translate([4.8, -0.5, 2.0 + 47.0]){ cylinder(d=2.1, h=t+1, $fn=16); }
                    translate([4.8 + 11.4, -0.5, 2.0 + 47.0]){ cylinder(d=2.1, h=t+1, $fn=16); }
                }
            }
            // RP2040 Microcontroller
            color([0.18, 0.18, 0.18]){ translate([w/2 - 3.5, t, 20]){ cube([7, 1.0, 7]); } }
            // MicroUSB sul retro
            color([0.8, 0.8, 0.82]){ translate([w/2 - 4, t, l - 6]){ cube([8, 3.2, 8]); } }
            // Bottone BOOTSEL bianco e LED verde GP25 vicino MicroUSB
            color([0.9, 0.9, 0.9]){ translate([w/2 - 2, t, 12]){ cube([4, 2, 4]); } }
            color([0.1, 0.9, 0.2]){ translate([6.5, t, l - 5.0]){ cylinder(d=1.4, h=0.8, $fn=12); } }
        }
    }

    // --- ACCESSORIO 1: DISCO SSD DA 2.5 POLLICI ---
    if(inc_ssd && (board_type != "none")){
        ssd_x0_rel = ((pi_ox > width/2) ? (13 + 4.065) : (width - 61.7 - 16)) + SSD_Offset_X;
        ssd_z0_rel = (dp - 103.0) + SSD_Offset_Z;
        ssd_front_sata = (SSD_Orientation == "front_sata");
        ssd_x = 20 + gauge_box + ssd_x0_rel - 4.065; // Fori centrati sui distanziali
        ssd_z = gauge + ssd_z0_rel - (ssd_front_sata ? 9.4 : 14.0);
        ssd_y = 5; // Appoggio sulle colonnine da 5mm
        ssd_w = 69.85;
        ssd_l = 100;
        ssd_h = 7.0;

        translate([ssd_x, ssd_y, ssd_z]){
            // Cassa metallica SSD grigio antracite
            color([0.24, 0.25, 0.27]){
                cube([ssd_w, ssd_h, ssd_l]);
            }
            // Etichetta satinata superiore
            color([0.88, 0.90, 0.92]){
                translate([3, ssd_h + 0.05, 12]){ cube([ssd_w - 6, 0.1, ssd_l - 24]); }
            }
            // Logo / serigrafia SSD
            color([0.1, 0.35, 0.75]){
                translate([8, ssd_h + 0.18, 30]){ cube([ssd_w - 16, 0.1, 14]); }
            }
            if(ssd_front_sata){
                // Connettore SATA Anteriore 7+15 pin (rivolto verso il fronte / LIME2)
                color([0.15, 0.15, 0.15]){ translate([15.85, 1, -4]){ cube([46, 5, 4]); } }
                color([0.85, 0.75, 0.2]){ translate([17.85, 2, -4.2]){ cube([42, 2, 0.3]); } }
            } else {
                // Connettore SATA Posteriore 7+15 pin
                color([0.15, 0.15, 0.15]){ translate([8, 1, ssd_l]){ cube([46, 5, 4]); } }
                color([0.85, 0.75, 0.2]){ translate([10, 2, ssd_l + 3.9]){ cube([42, 2, 0.3]); } }
            }
        }
    }

    // --- ACCESSORIO 2: STABILIZZATORE SWITCHING DC-DC STEP-DOWN ---
    step_use_opp_m = (StepDown_Side == "opposite") || (StepDown_Side == "auto" && (board_type == "olimex_lime2" || !inc_ssd));
    lime_step_ok_m = (board_type != "olimex_lime2") || (StepDown_Side != "auto") || !inc_ssd || (step_type == "Mini360") || (dp >= 128);
    if(inc_step && (board_type != "none") && lime_step_ok_m){
        ssd_x0_m = ((pi_ox > width/2) ? (13 + 4.065) : (width - 61.7 - 16)) + SSD_Offset_X;
        step_base_x_m = step_use_opp_m ? (inc_ssd ? (ssd_x0_m + 10) : ((pi_ox > width/2) ? 14 : (width - 45 - 14))) :
                                         ((pi_ox > width/2) ? (width - 45 - 14) : 18);
        step_base_z_m = step_use_opp_m ? (inc_ssd ? 5 : 20) : 6;
        step_x0_rel = step_base_x_m + StepDown_Offset_X;
        step_z0_rel = step_base_z_m + StepDown_Offset_Z;
        step_x = 20 + gauge_box + step_x0_rel - ((step_type == "LM2596") ? 5.75 : (step_type == "XL4015") ? 3.5 : 0);
        step_z = gauge + step_z0_rel - 3.0;
        step_y = 5; // Appoggio sulle colonnine da 5mm

        translate([step_x, step_y, step_z]){
            if(step_type == "LM2596"){
                // Modulo LM2596 (43 x 21 mm, fori 31.5 x 15 mm)
                color([0.1, 0.32, 0.72]){ cube([43, 1.6, 21]); }
                // Bobina toroidale di rame
                color([0.78, 0.42, 0.15]){
                    translate([9, 1.6 + 6, 10]){
                        rotate([90,0,0]){ cylinder(d=11, h=5.5, $fn=24); }
                    }
                }
                // Condensatori elettrolitici in alluminio
                color([0.78, 0.78, 0.82]){
                    translate([3, 1.6, 10]){ cylinder(d=6.5, h=10, $fn=18); }
                    translate([30, 1.6, 10]){ cylinder(d=6.5, h=10, $fn=18); }
                }
                // Trimmer potenziometro blu multigiro con vite in ottone
                color([0.15, 0.45, 0.85]){ translate([18, 1.6, 12]){ cube([9.5, 9.5, 4.5]); } }
                color([0.85, 0.75, 0.2]){ translate([22, 1.6 + 9.5, 14.25]){ cylinder(d=2, h=1, $fn=12); } }
                // Chip LM2596 con aletta
                color([0.15, 0.15, 0.15]){ translate([18, 1.6, 3]){ cube([9, 4, 7]); } }
            } else if(step_type == "XL4015"){
                // Modulo XL4015 Alta Potenza (54 x 24 mm)
                color([0.1, 0.32, 0.72]){ cube([50, 1.6, 23]); }
                // Grande dissipatore in alluminio nero
                color([0.15, 0.15, 0.15]){ translate([12, 1.6, 4]){ cube([24, 12, 15]); } }
                // Bobina schermata
                color([0.2, 0.2, 0.2]){ translate([38, 1.6, 5]){ cube([10, 8, 10]); } }
            } else {
                // Mini360 ultracompatto (17 x 11 mm)
                color([0.15, 0.55, 0.25]){ cube([17, 1.6, 11]); }
                color([0.2, 0.2, 0.2]){ translate([5, 1.6, 2.5]){ cube([6, 3, 6]); } }
            }
        }
    }
}

// Simulazione 3D del modulo Display OLED I2C o LCD 16x2 / 20x4 montato sul retro del pannello frontale
module oled_3d_mockup(cx, cy, model="oled_096_rect"){
    is_lcd = (model == "lcd_1602" || model == "lcd_2004");
    pcb_w = (model == "oled_091_wide") ? 38.0 :
            (model == "oled_130_rect") ? 35.4 :
            (model == "oled_150_sq")   ? 42.0 :
            (model == "lcd_1602")      ? 80.0 :
            (model == "lcd_2004")      ? 98.0 : 27.3;
    pcb_h = (model == "oled_091_wide") ? 12.0 :
            (model == "oled_130_rect") ? 33.5 :
            (model == "oled_150_sq")   ? 42.0 :
            (model == "lcd_1602")      ? 36.0 :
            (model == "lcd_2004")      ? 60.0 : 27.8;
    scr_w = (model == "oled_091_wide") ? 26.0 :
            (model == "oled_130_rect") ? 31.5 :
            (model == "oled_150_sq")   ? 29.0 :
            (model == "lcd_1602")      ? 71.2 :
            (model == "lcd_2004")      ? 97.0 : 23.5;
    scr_h = (model == "oled_091_wide") ? 9.0 :
            (model == "oled_130_rect") ? 17.5 :
            (model == "oled_150_sq")   ? 29.0 :
            (model == "lcd_1602")      ? 24.2 :
            (model == "lcd_2004")      ? 40.0 : 13.5;

    z_pcb = gauge; // Appoggiato direttamente dietro la frontplate dentro la culla a scatto (senza viti)
    translate([cx, cy, z_pcb]){
        // PCB del modulo display (verde per LCD classico, blu per OLED)
        color(is_lcd ? [0.10, 0.45, 0.20] : [0.10, 0.30, 0.70]){
            translate([-pcb_w/2, -pcb_h/2, 0]){ cube([pcb_w, pcb_h, 1.6]); }
        }
        // Cornice/vetro del display rivolto verso il fronte (-Z)
        color([0.08, 0.08, 0.10]){
            translate([-scr_w/2, -scr_h/2, is_lcd ? -4.0 : -1.6]){ cube([scr_w, scr_h, is_lcd ? 4.0 : 1.6]); }
        }
        // Area attiva simulata (blu retroilluminato per LCD, ciano per OLED)
        color(is_lcd ? [0.12, 0.55, 0.90] : [0.10, 0.75, 0.95]){
            translate([-(scr_w - (is_lcd ? 8 : 3))/2, -(scr_h - (is_lcd ? 8 : 3))/2, is_lcd ? -4.1 : -1.7]){
                cube([scr_w - (is_lcd ? 8 : 3), scr_h - (is_lcd ? 8 : 3), 0.15]);
            }
        }
        // Header I2C 4-pin (VCC, GND, SCL, SDA) a sx guardando dal fronte (+X) per 0.91" e LCD, in alto (+Y) per gli altri OLED
        color([0.15, 0.15, 0.15]){
            if(model == "oled_091_wide" || is_lcd){
                translate([pcb_w/2 - 3.0, -5.0, 1.6]){ cube([2.5, 10.0, 6.0]); }
            } else {
                translate([-5.0, pcb_h/2 - 3.0, 1.6]){ cube([10.0, 2.5, 6.0]); }
            }
        }
    }
}

// Staffa / ponticello posteriore stampabile (senza supporti) per bloccare il display OLED / LCD
// Si avvita sulle due colonnine laterali sul retro del pannello frontale
module oled_clip_bracket(model="oled_091_wide"){
    span = (model == "oled_091_wide") ? 45.0 :
           (model == "oled_130_rect") ? 30.5 :
           (model == "oled_150_sq")   ? 36.0 :
           (model == "lcd_1602")      ? 75.0 :
           (model == "lcd_2004")      ? 93.0 : 23.0;
    difference(){
        union(){
            // Traversa posteriore di bloccaggio (preme sul retro del PCB lasciando libero l'header I2C)
            translate([-(span/2 + 4.5), -3.5, 0]){
                cube([span + 9.0, 7.0, 2.2]);
            }
            // Due piedini di appoggio sulle colonnine da 3.5mm
            translate([-span/2, 0, -1.6]){ cylinder(d=6.0, h=1.8, $fn=24); }
            translate([ span/2, 0, -1.6]){ cylinder(d=6.0, h=1.8, $fn=24); }
        }
        // Fori passanti per viti M2 / M2.5
        translate([-span/2, 0, -2.5]){ cylinder(d=2.6, h=6.0, $fn=20); }
        translate([ span/2, 0, -2.5]){ cylinder(d=2.6, h=6.0, $fn=20); }
    }
}

// Simulazione 3D del connettore di alimentazione jack DC a barilotto montato sulla piastra posteriore
module dc_jack_3d_mockup(jx, jy, dp, dia=8.0){
    z_back = gauge + dp;
    translate([jx, jy, z_back]){
        // Ghiera esterna cromata/nera a filo piastra posteriore
        color([0.75, 0.75, 0.78]){ cylinder(d=dia + 2.5, h=1.8, $fn=24); }
        // Foro centrale con perno positivo interno
        color([0.12, 0.12, 0.12]){ cylinder(d=5.5, h=1.9, $fn=20); }
        color([0.85, 0.75, 0.20]){ cylinder(d=2.1, h=2.0, $fn=16); }
        // Corpo cilindrico filettato + corpo posteriore interno (-Z)
        color([0.18, 0.18, 0.20]){
            translate([0, 0, -13.0]){ cylinder(d=dia - 0.2, h=13.0, $fn=24); }
        }
        // Dado di serraggio interno
        color([0.75, 0.75, 0.78]){
            translate([0, 0, -gauge_box - 2.2]){ cylinder(d=dia + 3.5, h=2.2, $fn=6); }
        }
        // Terminali a saldare interni
        color([0.85, 0.75, 0.20]){
            translate([-1.0,  2.5, -17.0]){ cube([2.0, 0.6, 4.0]); }
            translate([-1.0, -3.1, -17.0]){ cube([2.0, 0.6, 4.0]); }
        }
    }
}

// Simulazione 3D del pulsante di reset da pannello montato sul frontale (-Z sporgente in avanti)
module reset_button_3d_mockup(rx, ry, dia=7.0){
    translate([rx, ry, 0]){
        // Ghiera / battuta esterna sul fronte
        color([0.78, 0.78, 0.80]){
            translate([0, 0, -1.6]){ cylinder(d=dia + 2.6, h=1.6, $fn=24); }
        }
        // Tasto rosso sporgente sul fronte
        color([0.85, 0.12, 0.12]){
            translate([0, 0, -3.8]){ cylinder(d=dia * 0.65, h=2.4, $fn=24); }
        }
        // Corpo filettato + microswitch interno (+Z dietro la frontplate)
        color([0.16, 0.16, 0.18]){
            cylinder(d=dia - 0.2, h=10.5, $fn=24);
        }
        // Dado di fissaggio sul retro della frontplate
        color([0.75, 0.75, 0.78]){
            translate([0, 0, gauge]){ cylinder(d=dia + 3.2, h=2.0, $fn=6); }
        }
        // 2 terminali posteriori
        color([0.85, 0.75, 0.20]){
            translate([-1.6, -0.4, 10.5]){ cube([0.7, 0.8, 3.5]); }
            translate([ 0.9, -0.4, 10.5]){ cube([0.7, 0.8, 3.5]); }
        }
    }
}
