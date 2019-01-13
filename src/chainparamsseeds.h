#ifndef MARLIN_CHAINPARAMSSEEDS_H
#define MARLIN_CHAINPARAMSSEEDS_H
/**
 * Each line contains a 16-byte IPv6 address and a port.
 * IPv4 as well as onion addresses are wrapped inside a IPv6 address accordingly.
 */
static SeedSpec6 pnSeed6_main[] = {
    {{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xff,0xff,0x12,0xdb,0xf8,0x20}, 8999}
};

static SeedSpec6 pnSeed6_test[] = {

};
#endif // MARLIN_CHAINPARAMSSEEDS_H
