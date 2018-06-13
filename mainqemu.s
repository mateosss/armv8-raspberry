.data
// Qemu specific modifications
QEMU_BASE_ADDRESS: .dword 0x0000000040080000
UPDATE_DELTA: .dword 1
BACKGROUND_COLOR: .dword 0x0

PARTICLE_LIFETIME: .dword 60 // TODO this should be individual per particle
ORIGIN_X: .dword 256
ORIGIN_Y: .dword 256

PARTICLES_AMOUNT: .dword 30
PARTICLE_SIZE: .dword 10 // Amount of properties of a particle
PARTICLES:
  /* Notes:
    - dir are percentage of movement, 100 means 1 pixel per frame,
    - tempDir is always 0 at start, and updates until it reaches 100 or more and it depletes to move
    - lifetime is 0 for restart, and X for living X frames more
    - radius and initialRadius should be equal
  */
  // particlex: .dword posX, posY, dirX, dirY, tempDirX, tempDirY, color, lifetime, radius, initialRadius
  //									 0     8     16    24    32        40        48     56				64			72
  PARTICLE1: .dword 128, 128, -50, 100, 0, 0, 0x07FF, 1, 2, 2
  PARTICLE2: .dword 128, 128, 50, 100, 0, 0, 0xF81F, 2, 2, 2
  PARTICLE3: .dword 128, 128, 400, 1, 0, 0, 0xFFE0, 3, 2, 2
  PARTICLE4: .dword 128, 128, -31, 142, 0, 0, 0x520E, 4, 2, 2
  PARTICLE5: .dword 128, 128, 194, 351, 0, 0, 0x25FD, 5, 7, 7
  PARTICLE6: .dword 128, 128, -259, -46, 0, 0, 0x20D9, 6, 6, 6
  PARTICLE7: .dword 128, 128, 103, -293, 0, 0, 0x30B0, 7, 5, 5
  PARTICLE8: .dword 128, 128, -381, -204, 0, 0, 0xC1D9, 8, 7, 7
  PARTICLE9: .dword 128, 128, -317, 11, 0, 0, 0x8751, 9, 6, 6
  PARTICLE10: .dword 128, 128, -212, -309, 0, 0, 0x1A80, 10, 7, 7
  PARTICLE11: .dword 128, 128, -262, 240, 0, 0, 0xE388, 11, 5, 5
  PARTICLE12: .dword 128, 128, 16, -11, 0, 0, 0x7278, 12, 2, 2
  PARTICLE13: .dword 128, 128, 160, 53, 0, 0, 0x6B6A, 13, 4, 4
  PARTICLE14: .dword 128, 128, 63, 44, 0, 0, 0xE126, 14, 3, 3
  PARTICLE15: .dword 128, 128, 177, -305, 0, 0, 0x1D1C, 15, 4, 4
  PARTICLE16: .dword 384, 384, -167, -350, 0, 0, 0x59FC, 16, 7, 7
  PARTICLE17: .dword 384, 384, 166, 242, 0, 0, 0xEA93, 17, 7, 7
  PARTICLE18: .dword 384, 384, 315, 74, 0, 0, 0xF608, 18, 7, 7
  PARTICLE19: .dword 384, 384, 297, 366, 0, 0, 0x749C, 19, 5, 5
  PARTICLE20: .dword 384, 384, -252, 343, 0, 0, 0x2597, 20, 4, 4
  PARTICLE21: .dword 384, 384, -214, 204, 0, 0, 0xC5FB, 21, 6, 6
  PARTICLE22: .dword 384, 384, 212, -175, 0, 0, 0x3428, 22, 5, 5
  PARTICLE23: .dword 384, 384, 349, -103, 0, 0, 0xA8C6, 23, 3, 3
  PARTICLE24: .dword 384, 384, -312, 16, 0, 0, 0xC77B, 24, 3, 3
  PARTICLE25: .dword 384, 384, -280, 38, 0, 0, 0x4E61, 25, 6, 6
  PARTICLE26: .dword 384, 384, 143, 135, 0, 0, 0xEB4C, 26, 4, 4
  PARTICLE27: .dword 384, 384, -262, -132, 0, 0, 0xC07B, 27, 6, 6
  PARTICLE28: .dword 384, 384, -1, 202, 0, 0, 0x31DE, 28, 2, 2
  PARTICLE29: .dword 384, 384, 321, -121, 0, 0, 0xC2D3, 29, 6, 6
  PARTICLE30: .dword 384, 384, -263, 227, 0, 0, 0xAFEC, 30, 2, 2


.text
.org 0x0000

mov x0, 0x4008
lsl x0, x0, 16
add x0, x0, 0x200

//--------------------------------------
b app
