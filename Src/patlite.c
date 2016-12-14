#include "main.h"
#include "stm32f3xx_hal.h"
#include "cmsis_os.h"
#include "patlite.h"
#include "sakura_iot_alpha.h"

static PinMap signal_list[8] = {
    {SIGNAL_1_GPIO_Port, SIGNAL_1_Pin},
    {SIGNAL_2_GPIO_Port, SIGNAL_2_Pin},
    {SIGNAL_3_GPIO_Port, SIGNAL_3_Pin},
    {SIGNAL_4_GPIO_Port, SIGNAL_4_Pin},
    {SIGNAL_5_GPIO_Port, SIGNAL_5_Pin},
    {SIGNAL_6_GPIO_Port, SIGNAL_6_Pin},
    {SIGNAL_7_GPIO_Port, SIGNAL_7_Pin},
    {SIGNAL_8_GPIO_Port, SIGNAL_8_Pin}};

void SignalControlTask(void const *argument)
{
    for (;;)
    {
        if (GetNetworkStatus() == 1)
            break;
        SetSignalStatus(1, 0);
        osDelay(100);
        SetSignalStatus(1, 1);
        osDelay(100);
    }
    Transmit(TRANSMIT_AUTO);
    for (uint8_t i = 0; i < 8; i++)
    {
        SetSignalStatus(i, 1);
    }
    osDelay(1000);
    for (uint8_t i = 0; i < 8; i++)
    {
        SetSignalStatus(i, 0);
    }

    uint64_t cnt = 0;
    for (;;)
    {
        char type;
        uint8_t bytes[8] = {0};
        int32_t *data_int = (int32_t *)bytes;
        for (uint8_t i = 0; i < 8; i++)
        {
            ReadChannel(i, &type, bytes);
            if (data_int[0] == 0)
                SetSignalStatus(i, 0);
            else
                SetSignalStatus(i, 1);
        }

        osDelay(10);
        //WriteChannelUInt32(0, cnt);
        cnt++;
    }
}

void SetSignalStatus(uint8_t index, uint8_t state)
{
    if (sizeof(signal_list) - 1 < index)
        return;
    HAL_GPIO_WritePin(signal_list[index].port, signal_list[index].pin, state);
}
