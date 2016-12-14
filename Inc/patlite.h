#ifndef PATLITE_H
#define PATLITE_H

#ifdef __cplusplus
extern "C" {
#endif
#include <stdint.h>
#include "stm32f3xx_hal.h"
#include "main.h"


typedef struct {
    GPIO_TypeDef *port;
    uint16_t pin;
} PinMap;

void SetSignalStatus(uint8_t index, uint8_t state);
void SignalControlTask(void const * argument);

#ifdef __cplusplus
}
#endif

#endif /* PATLITE_H */

