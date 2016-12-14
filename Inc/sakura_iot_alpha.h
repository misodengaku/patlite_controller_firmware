#ifndef SAKURA_IOT_ALPHA_H
#define SAKURA_IOT_ALPHA_H

#ifdef __cplusplus
extern "C" {
#endif
    
#define SAKURACC_SLAVE_ADDR (0x4F << 1)

#define CMD_NETWORKSTATUS  0x01

#define CMD_UPDATED     0x10
#define CMD_UNTRANSMITTED 0x11
#define CMD_TXCH_STATUS    0x12
#define CMD_RXCH_STATUS   0x13

#define CMD_READ      0x20

#define CMD_WRITE     0x30

#define CMD_TRANSMIT    0x40


#define TRANSMIT_NONE   0x00
#define TRANSMIT_AUTO   0x01
#define TRANSMIT_ONCE   0x02

#define TYPE_INT32      'i'
#define TYPE_UINT32     'I'
#define TYPE_INT64      'l'
#define TYPE_UINT64     'L'
#define TYPE_FLOAT      'f'
#define TYPE_DOUBLE     'd'
#define TYPE_BYTES      'b'
    
    
#define CH_SIZE 128

#define TX_STATUS_NONE    0x00
#define TX_STATUS_MODIFIED  0x01

#define RX_STATUS_NONE    0x00
#define RX_STATUS_UPDATED 0x01

void Sakura_Init();

uint8_t GetNetworkStatus();
void Transmit(uint8_t mode);

void WriteChannelInt32(uint8_t ch, int32_t data);
void WriteChannelUInt32(uint8_t ch, uint32_t data);
void WriteChannelInt64(uint8_t ch, int64_t data);
void WriteChannelUInt64(uint8_t ch, uint64_t data);
void WriteChannelFloat(uint8_t ch, float data);
void WriteChannelDouble(uint8_t ch, double data);
void WriteChannelBytes(uint8_t ch, uint8_t *p);
uint8_t GetTxChannelStatus(uint8_t ch);
void ReadChannel(uint8_t ch, char *type, uint8_t *data);


#ifdef __cplusplus
}
#endif

#endif /* SAKURA_IOT_ALPHA_H */

