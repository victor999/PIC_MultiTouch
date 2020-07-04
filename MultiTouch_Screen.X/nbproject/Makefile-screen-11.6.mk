#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-screen-11.6.mk)" "nbproject/Makefile-local-screen-11.6.mk"
include nbproject/Makefile-local-screen-11.6.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=screen-11.6
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MultiTouch_Screen.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MultiTouch_Screen.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=usb_function_hid.c USB/usb_device.c touch_comm.c main.c PIC18InterruptVectors.asm i2c.c usb_descriptors_116.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/usb_function_hid.o ${OBJECTDIR}/USB/usb_device.o ${OBJECTDIR}/touch_comm.o ${OBJECTDIR}/main.o ${OBJECTDIR}/PIC18InterruptVectors.o ${OBJECTDIR}/i2c.o ${OBJECTDIR}/usb_descriptors_116.o
POSSIBLE_DEPFILES=${OBJECTDIR}/usb_function_hid.o.d ${OBJECTDIR}/USB/usb_device.o.d ${OBJECTDIR}/touch_comm.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/PIC18InterruptVectors.o.d ${OBJECTDIR}/i2c.o.d ${OBJECTDIR}/usb_descriptors_116.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/usb_function_hid.o ${OBJECTDIR}/USB/usb_device.o ${OBJECTDIR}/touch_comm.o ${OBJECTDIR}/main.o ${OBJECTDIR}/PIC18InterruptVectors.o ${OBJECTDIR}/i2c.o ${OBJECTDIR}/usb_descriptors_116.o

# Source Files
SOURCEFILES=usb_function_hid.c USB/usb_device.c touch_comm.c main.c PIC18InterruptVectors.asm i2c.c usb_descriptors_116.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-screen-11.6.mk dist/${CND_CONF}/${IMAGE_TYPE}/MultiTouch_Screen.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F14K50
MP_PROCESSOR_OPTION_LD=18f14k50
MP_LINKER_DEBUG_OPTION=-r=ROM@0x3E00:0x3FFF  -u_DEBUGSTACK
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/PIC18InterruptVectors.o: PIC18InterruptVectors.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PIC18InterruptVectors.o.d 
	@${RM} ${OBJECTDIR}/PIC18InterruptVectors.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/PIC18InterruptVectors.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_PK3=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/PIC18InterruptVectors.lst\" -e\"${OBJECTDIR}/PIC18InterruptVectors.err\" $(ASM_OPTIONS)  -o\"${OBJECTDIR}/PIC18InterruptVectors.o\" \"PIC18InterruptVectors.asm\"
	@${DEP_GEN} -d "${OBJECTDIR}/PIC18InterruptVectors.o"
	@${FIXDEPS} "${OBJECTDIR}/PIC18InterruptVectors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/PIC18InterruptVectors.o: PIC18InterruptVectors.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PIC18InterruptVectors.o.d 
	@${RM} ${OBJECTDIR}/PIC18InterruptVectors.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/PIC18InterruptVectors.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/PIC18InterruptVectors.lst\" -e\"${OBJECTDIR}/PIC18InterruptVectors.err\" $(ASM_OPTIONS)  -o\"${OBJECTDIR}/PIC18InterruptVectors.o\" \"PIC18InterruptVectors.asm\"
	@${DEP_GEN} -d "${OBJECTDIR}/PIC18InterruptVectors.o"
	@${FIXDEPS} "${OBJECTDIR}/PIC18InterruptVectors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/usb_function_hid.o: usb_function_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_function_hid.o.d 
	@${RM} ${OBJECTDIR}/usb_function_hid.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/microchip_solutions_v2013-06-15/Microchip/Include" -I"./" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/usb_function_hid.o   usb_function_hid.c 
	@${DEP_GEN} -d ${OBJECTDIR}/usb_function_hid.o 
	@${FIXDEPS} "${OBJECTDIR}/usb_function_hid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/USB/usb_device.o: USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/USB" 
	@${RM} ${OBJECTDIR}/USB/usb_device.o.d 
	@${RM} ${OBJECTDIR}/USB/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/microchip_solutions_v2013-06-15/Microchip/Include" -I"./" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/USB/usb_device.o   USB/usb_device.c 
	@${DEP_GEN} -d ${OBJECTDIR}/USB/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/USB/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/touch_comm.o: touch_comm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/touch_comm.o.d 
	@${RM} ${OBJECTDIR}/touch_comm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/microchip_solutions_v2013-06-15/Microchip/Include" -I"./" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/touch_comm.o   touch_comm.c 
	@${DEP_GEN} -d ${OBJECTDIR}/touch_comm.o 
	@${FIXDEPS} "${OBJECTDIR}/touch_comm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/microchip_solutions_v2013-06-15/Microchip/Include" -I"./" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/main.o   main.c 
	@${DEP_GEN} -d ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/i2c.o: i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c.o.d 
	@${RM} ${OBJECTDIR}/i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/microchip_solutions_v2013-06-15/Microchip/Include" -I"./" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/i2c.o   i2c.c 
	@${DEP_GEN} -d ${OBJECTDIR}/i2c.o 
	@${FIXDEPS} "${OBJECTDIR}/i2c.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/usb_descriptors_116.o: usb_descriptors_116.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_descriptors_116.o.d 
	@${RM} ${OBJECTDIR}/usb_descriptors_116.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/microchip_solutions_v2013-06-15/Microchip/Include" -I"./" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/usb_descriptors_116.o   usb_descriptors_116.c 
	@${DEP_GEN} -d ${OBJECTDIR}/usb_descriptors_116.o 
	@${FIXDEPS} "${OBJECTDIR}/usb_descriptors_116.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/usb_function_hid.o: usb_function_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_function_hid.o.d 
	@${RM} ${OBJECTDIR}/usb_function_hid.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/microchip_solutions_v2013-06-15/Microchip/Include" -I"./" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/usb_function_hid.o   usb_function_hid.c 
	@${DEP_GEN} -d ${OBJECTDIR}/usb_function_hid.o 
	@${FIXDEPS} "${OBJECTDIR}/usb_function_hid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/USB/usb_device.o: USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/USB" 
	@${RM} ${OBJECTDIR}/USB/usb_device.o.d 
	@${RM} ${OBJECTDIR}/USB/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/microchip_solutions_v2013-06-15/Microchip/Include" -I"./" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/USB/usb_device.o   USB/usb_device.c 
	@${DEP_GEN} -d ${OBJECTDIR}/USB/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/USB/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/touch_comm.o: touch_comm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/touch_comm.o.d 
	@${RM} ${OBJECTDIR}/touch_comm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/microchip_solutions_v2013-06-15/Microchip/Include" -I"./" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/touch_comm.o   touch_comm.c 
	@${DEP_GEN} -d ${OBJECTDIR}/touch_comm.o 
	@${FIXDEPS} "${OBJECTDIR}/touch_comm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/microchip_solutions_v2013-06-15/Microchip/Include" -I"./" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/main.o   main.c 
	@${DEP_GEN} -d ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/i2c.o: i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c.o.d 
	@${RM} ${OBJECTDIR}/i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/microchip_solutions_v2013-06-15/Microchip/Include" -I"./" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/i2c.o   i2c.c 
	@${DEP_GEN} -d ${OBJECTDIR}/i2c.o 
	@${FIXDEPS} "${OBJECTDIR}/i2c.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/usb_descriptors_116.o: usb_descriptors_116.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_descriptors_116.o.d 
	@${RM} ${OBJECTDIR}/usb_descriptors_116.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/microchip_solutions_v2013-06-15/Microchip/Include" -I"./" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/usb_descriptors_116.o   usb_descriptors_116.c 
	@${DEP_GEN} -d ${OBJECTDIR}/usb_descriptors_116.o 
	@${FIXDEPS} "${OBJECTDIR}/usb_descriptors_116.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MultiTouch_Screen.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    rm18f14k50.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "rm18f14k50.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PK3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/MultiTouch_Screen.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/MultiTouch_Screen.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   rm18f14k50.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "rm18f14k50.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/MultiTouch_Screen.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/screen-11.6
	${RM} -r dist/screen-11.6

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
