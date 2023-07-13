/* --COPYRIGHT--,FRAM-Utilities
 * Copyright (c) 2015, Texas Instruments Incorporated
 * All rights reserved.
 *
 * This source code is part of FRAM Utilities for MSP430 FRAM Microcontrollers.
 * Visit http://www.ti.com/tool/msp-fram-utilities for software information and
 * download.
 * --/COPYRIGHT--*/
#include <msp430.h>

#if defined(__MSP430FR2XX_4XX_FAMILY__) && !defined(__AUTOGENERATED__)
#include <msp430fr2xx_4xxgeneric.h>
#elif defined(__MSP430FR57XX_FAMILY__) && !defined(__AUTOGENERATED__)
#include <msp430fr57xxgeneric.h>
#elif defined(__MSP430FR5XX_6XX_FAMILY__) && !defined(__AUTOGENERATED__)
#include <msp430fr5xx_6xxgeneric.h>
#endif

#ifdef __MSP430_HAS_PMM_FRAM__

#include <stdint.h>

#include "ctpl_pmm.h"
#include "ctpl_hwreg.h"
#include "../ctpl_low_level.h"

void ctpl_PMM_save(uint16_t baseAddress, uint16_t *storage, uint16_t mode)
{
    /* Save register context to non-volatile storage. */
#if defined(__MSP430FR2XX_4XX_FAMILY__)
    storage[1] = HWREG16(baseAddress + OFS_PMMCTL0);
    storage[0] = HWREG16(baseAddress + OFS_PMMCTL2);
#else
    storage[0] = HWREG16(baseAddress + OFS_PMMCTL0);
#endif

    return;
}

void ctpl_PMM_restore(uint16_t baseAddress, uint16_t *storage, uint16_t mode)
{
    /* Restore register context from non-volatile storage. */
#if defined(__MSP430FR2XX_4XX_FAMILY__)
    HWREG16(baseAddress + OFS_PMMCTL0) = (storage[1] & 0x00ff) | PMMPW;
    HWREG16(baseAddress + OFS_PMMCTL2) = storage[0];
    HWREG8(baseAddress + OFS_PMMCTL0_H) = 0;
#else
    HWREG16(baseAddress + OFS_PMMCTL0) = (storage[0] & 0x00ff) | PMMPW;
    HWREG8(baseAddress + OFS_PMMCTL0_H) = 0;
#endif

    return;
}

#endif //__MSP430_HAS_PMM_FRAM__