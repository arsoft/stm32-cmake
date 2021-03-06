
SET (CHIBIOS_CONTRIB_INCLUDES_hal
        os/hal/include
        )

SET (CHIBIOS_CONTRIB_SOURCES_hal_COMMUNITY       os/hal/src/hal_community.c)
SET (CHIBIOS_CONTRIB_SOURCES_hal_ONEWIRE         os/hal/src/hal_onewire.c)
SET (CHIBIOS_CONTRIB_SOURCES_hal_EICU            os/hal/src/hal_eicu.c)
SET (CHIBIOS_CONTRIB_SOURCES_hal_QEI             os/hal/src/hal_qei.c)

SET (CHIBIOS_CONTRIB_SOURCES_hal_EICU_F0     os/hal/ports/STM32/LLD/TIMv1/hal_eicu_lld.c)
SET (CHIBIOS_CONTRIB_SOURCES_hal_QEI_F0      os/hal/ports/STM32/LLD/TIMv1/hal_qei_lld.c)

SET (CHIBIOS_CONTRIB_INCLUDES_hal_EICU_F0    os/hal/ports/STM32/LLD/TIMv1)
SET (CHIBIOS_CONTRIB_INCLUDES_hal_QEI_F0     os/hal/ports/STM32/LLD/TIMv1)

IF (CHIBIOS_CONTRIB_SOURCES_hal_${STM32_FAMILY})
    LIST(APPEND CHIBIOS_CONTRIB_SOURCES_hal ${CHIBIOS_CONTRIB_SOURCES_hal_${STM32_FAMILY}})
ENDIF()

IF (CHIBIOS_CONTRIB_INCLUDES_hal_${STM32_FAMILY})
    LIST(APPEND CHIBIOS_CONTRIB_INCLUDES_hal ${CHIBIOS_CONTRIB_INCLUDES_hal_${STM32_FAMILY}})
ENDIF()

FOREACH (COMP ${CHIBIOS_CONTRIB_HAL_COMPONENTS})
    IF (CHIBIOS_CONTRIB_SOURCES_hal_${COMP})
        LIST(APPEND CHIBIOS_CONTRIB_SOURCES_hal ${CHIBIOS_CONTRIB_SOURCES_hal_${COMP}})
    ENDIF()
    IF (CHIBIOS_CONTRIB_INCLUDES_hal_${COMP})
        LIST(APPEND CHIBIOS_CONTRIB_INCLUDES_hal ${CHIBIOS_CONTRIB_INCLUDES_hal_${COMP}})
    ENDIF()

    IF (CHIBIOS_CONTRIB_SOURCES_hal_${COMP}_${STM32_FAMILY})
        LIST(APPEND CHIBIOS_CONTRIB_SOURCES_hal ${CHIBIOS_CONTRIB_SOURCES_hal_${COMP}_${STM32_FAMILY}})
    ENDIF()
    IF (CHIBIOS_CONTRIB_INCLUDES_hal_${COMP}_${STM32_FAMILY})
        LIST(APPEND CHIBIOS_CONTRIB_INCLUDES_hal ${CHIBIOS_CONTRIB_INCLUDES_hal_${COMP}_${STM32_FAMILY}})
    ENDIF()
ENDFOREACH()
