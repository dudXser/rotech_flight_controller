#include "main.h"

/* declare SPI NCS GPIO Structure */
typedef struct __NCS_IO
{
    GPIO_TypeDef *port;
    uint16_t pin;
} ncs_io;

extern __attribute((aligned(8))) uint8_t spiDataBuf[20];

uint8_t spi_wr_byte(SPI_HandleTypeDef *hspi, uint8_t byte);

void spi_w_bytes(SPI_HandleTypeDef *hspi, uint8_t address, uint8_t *bytes,
                 uint16_t num, ncs_io cs);

void spi_r_bytes(SPI_HandleTypeDef *hspi, uint8_t address, uint8_t num,
                 ncs_io cs);

void spi_w_byte(SPI_HandleTypeDef *hspi, uint8_t address, uint8_t byte,
                ncs_io cs);

uint8_t spi_r_byte(SPI_HandleTypeDef *hspi, uint8_t address, ncs_io cs);
