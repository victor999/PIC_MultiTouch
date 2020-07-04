/* 
 * File:   touch_comm.h
 * Author: Stephen
 *
 * Created on August 3, 2013, 5:36 PM
 */

#ifndef TOUCH_COMM_H
#define	TOUCH_COMM_H

#define I2C_TOUCH_DATA_SIZE 23

typedef union {
    unsigned char raw[I2C_TOUCH_DATA_SIZE];
    struct {
        unsigned char DEVICE_MODE;
        unsigned char GEST_ID;
        unsigned char TD_STATUS;
        unsigned char TOUCH1_XH;
        unsigned char TOUCH1_XL;
        unsigned char TOUCH1_YH;
        unsigned char TOUCH1_YL;
 //       unsigned char pad1;
 //       unsigned char pad2;
        unsigned char TOUCH2_XH;
        unsigned char TOUCH2_XL;
        unsigned char TOUCH2_YH;
        unsigned char TOUCH2_YL;
 //       unsigned char pad3;
 //       unsigned char pad4;
        unsigned char TOUCH3_XH;
        unsigned char TOUCH3_XL;
        unsigned char TOUCH3_YH;
        unsigned char TOUCH3_YL;
 //       unsigned char pad5;
 //       unsigned char pad6;
        unsigned char TOUCH4_XH;
        unsigned char TOUCH4_XL;
        unsigned char TOUCH4_YH;
        unsigned char TOUCH4_YL;
 //       unsigned char pad7;
 //       unsigned char pad8;
        unsigned char TOUCH5_XH;
        unsigned char TOUCH5_XL;
        unsigned char TOUCH5_YH;
        unsigned char TOUCH5_YL;
    } data;
} touch_data;

extern touch_data t_data;

#ifdef	__cplusplus
extern "C" {
#endif

    void touch_read(void);
    void touch_send(void);
    //unsigned int touch_points(void);


#ifdef	__cplusplus
}
#endif

#endif	/* TOUCH_COMM_H */

