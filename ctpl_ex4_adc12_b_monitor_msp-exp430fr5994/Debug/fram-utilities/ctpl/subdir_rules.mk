################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
fram-utilities/ctpl/%.obj: ../fram-utilities/ctpl/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: MSP430 Compiler'
	"C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/bin/cl430" -vmspx --data_model=restricted --use_hw_mpy=F5 --include_path="C:/ti/ccs1230/ccs/ccs_base/msp430/include" --include_path="C:/Users/AdmGistLab2/Documents/msp430novo/ctpl_ex4_adc12_b_monitor_msp-exp430fr5994" --include_path="C:/Users/AdmGistLab2/Documents/msp430novo/ctpl_ex4_adc12_b_monitor_msp-exp430fr5994/fram-utilities/ctpl" --include_path="C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include" --advice:power=all --advice:hw_config=all --define=__MSP430FR5994__ --define=CTPL_STACK_SIZE=160 --define=CTPL_SAVE_TA0 --define=CTPL_SAVE_REF_A --define=CTPL_SAVE_ADC12_B --define=_MPU_ENABLE --define=CTPL_RAM_SIZE=4096 -g --printf_support=minimal --diag_suppress=10367 --diag_warning=225 --diag_wrap=off --display_error_number --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU40 --preproc_with_compile --preproc_dependency="fram-utilities/ctpl/$(basename $(<F)).d_raw" --obj_directory="fram-utilities/ctpl" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

fram-utilities/ctpl/%.obj: ../fram-utilities/ctpl/%.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: MSP430 Compiler'
	"C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/bin/cl430" -vmspx --data_model=restricted --use_hw_mpy=F5 --include_path="C:/ti/ccs1230/ccs/ccs_base/msp430/include" --include_path="C:/Users/AdmGistLab2/Documents/msp430novo/ctpl_ex4_adc12_b_monitor_msp-exp430fr5994" --include_path="C:/Users/AdmGistLab2/Documents/msp430novo/ctpl_ex4_adc12_b_monitor_msp-exp430fr5994/fram-utilities/ctpl" --include_path="C:/ti/ccs1230/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include" --advice:power=all --advice:hw_config=all --define=__MSP430FR5994__ --define=CTPL_STACK_SIZE=160 --define=CTPL_SAVE_TA0 --define=CTPL_SAVE_REF_A --define=CTPL_SAVE_ADC12_B --define=_MPU_ENABLE --define=CTPL_RAM_SIZE=4096 -g --printf_support=minimal --diag_suppress=10367 --diag_warning=225 --diag_wrap=off --display_error_number --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU40 --preproc_with_compile --preproc_dependency="fram-utilities/ctpl/$(basename $(<F)).d_raw" --obj_directory="fram-utilities/ctpl" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


