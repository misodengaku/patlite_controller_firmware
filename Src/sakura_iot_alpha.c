/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
#include "stm32f3xx_hal.h"
#include "sakura_iot_alpha.h"
#include "cmsis_os.h"

extern I2C_HandleTypeDef hi2c1;

void Sakura_Init(){
    Transmit(TRANSMIT_NONE);
}

uint8_t GetNetworkStatus() {
    uint8_t cmd = CMD_NETWORKSTATUS;
    HAL_I2C_Master_Transmit(&hi2c1, SAKURACC_SLAVE_ADDR, &cmd , 1, 1000);
    osDelay(10);
    cmd = 0xff;
    HAL_I2C_Master_Receive(&hi2c1, SAKURACC_SLAVE_ADDR, &cmd , 1, 1000);
    return cmd;
}

void Transmit(uint8_t mode) {
    uint8_t cmd[2] = {CMD_TRANSMIT, mode};
    HAL_I2C_Master_Transmit(&hi2c1, SAKURACC_SLAVE_ADDR, cmd , 2, 1000);
}

void WriteChannelInt32(uint8_t ch, int32_t data){
    uint8_t *p = (uint8_t *)&data;
    uint8_t cmd[3 + sizeof(data)] = {0};
    cmd[0] = CMD_WRITE;
    cmd[1] = ch;
    cmd[2] = TYPE_INT32;
    // printf("%02x %02x %02x ", cmd[0], cmd[1], cmd[2]);
    
    for (int i = 0; i < sizeof(int32_t); i++)
    {
        cmd[3 + i] = p[i];
        // printf("%02x ", cmd[3 + i]);
    }
    // printf("\r\n");
    if (HAL_I2C_Master_Transmit(&hi2c1, SAKURACC_SLAVE_ADDR, cmd, 3 + sizeof(data), 10000) != HAL_OK)
    {
        // printf("[ERROR] HAL_I2C_Master_Transmit fail.\r\n");
    }
}

void WriteChannelUInt32(uint8_t ch, uint32_t data){
    uint8_t *p = (uint8_t *)&data;
    uint8_t cmd[3 + sizeof(data)] = {0};
    cmd[0] = CMD_WRITE;
    cmd[1] = ch;
    cmd[2] = TYPE_UINT32;
    
    for (int i = 0; i < sizeof(int32_t); i++)
    {
        cmd[3 + i] = p[i];
    }
    HAL_I2C_Master_Transmit(&hi2c1, SAKURACC_SLAVE_ADDR, cmd, 3 + sizeof(data), 10000);
}

void WriteChannelInt64(uint8_t ch, int64_t data){
    uint8_t *p = (uint8_t *)&data;
    uint8_t cmd[3 + sizeof(data)] = {0};
    cmd[0] = CMD_WRITE;
    cmd[1] = ch;
    cmd[2] = TYPE_INT64;
    
    for (int i = 0; i < sizeof(data); i++)
    {
        cmd[3 + i] = p[i];
    }
    HAL_I2C_Master_Transmit(&hi2c1, SAKURACC_SLAVE_ADDR, cmd, 3 + sizeof(data), 10000);
}

void WriteChannelUInt64(uint8_t ch, uint64_t data){
    uint8_t *p = (uint8_t *)&data;
    uint8_t cmd[3 + sizeof(data)] = {0};
    cmd[0] = CMD_WRITE;
    cmd[1] = ch;
    cmd[2] = TYPE_UINT64;
    
    for (int i = 0; i < sizeof(data); i++)
    {
        cmd[3 + i] = p[i];
    }
    HAL_I2C_Master_Transmit(&hi2c1, SAKURACC_SLAVE_ADDR, cmd, 3 + sizeof(data), 10000);
}

void WriteChannelFloat(uint8_t ch, float data){
    uint8_t *p = (uint8_t *)&data;
    uint8_t cmd[3 + sizeof(data)] = {0};
    cmd[0] = CMD_WRITE;
    cmd[1] = ch;
    cmd[2] = TYPE_FLOAT;
    
    for (int i = 0; i < sizeof(data); i++)
    {
        cmd[3 + i] = p[i];
    }
    HAL_I2C_Master_Transmit(&hi2c1, SAKURACC_SLAVE_ADDR, cmd, 3 + sizeof(data), 10000);
}

void WriteChannelDouble(uint8_t ch, double data){
    uint8_t *p = (uint8_t *)&data;
    uint8_t cmd[3 + sizeof(data)] = {0};
    cmd[0] = CMD_WRITE;
    cmd[1] = ch;
    cmd[2] = TYPE_DOUBLE;
    
    for (int i = 0; i < sizeof(data); i++)
    {
        cmd[3 + i] = p[i];
    }
    HAL_I2C_Master_Transmit(&hi2c1, SAKURACC_SLAVE_ADDR, cmd, 3 + sizeof(data), 10000);
}

void WriteChannelBytes(uint8_t ch, uint8_t *p){
    uint8_t cmd[11] = {0};
    cmd[0] = CMD_WRITE;
    cmd[1] = ch;
    cmd[2] = TYPE_DOUBLE;
    
    for (int i = 0; i < 8; i++)
    {
        cmd[3 + i] = p[i];
    }
    HAL_I2C_Master_Transmit(&hi2c1, SAKURACC_SLAVE_ADDR, cmd, 11, 10000);
}

uint8_t GetTxChannelStatus(uint8_t ch) {
    uint8_t status=0xff;

    uint8_t cmd[2] = {CMD_TXCH_STATUS, ch};
    HAL_I2C_Master_Transmit(&hi2c1, SAKURACC_SLAVE_ADDR, cmd, 2, 10000);

    HAL_I2C_Master_Receive(&hi2c1, SAKURACC_SLAVE_ADDR, &status, 1, 1000);

    return status;
}


void ReadChannel(uint8_t ch, char *type, uint8_t *data) {
    uint8_t cmd[2] = {CMD_READ, ch};
    HAL_I2C_Master_Transmit(&hi2c1, SAKURACC_SLAVE_ADDR, cmd, 2, 10000);

    uint8_t buf[9];
    HAL_I2C_Master_Receive(&hi2c1, SAKURACC_SLAVE_ADDR, buf, 9, 1000);
    *(uint8_t *)type = buf[0];

    for ( int i = 0 ; i < 8 ; i++ ) {
        data[i] = buf[1 + i];
    }
}
