//
//  ShortcutMacro.h
//  RMHBase
//
//  Created by 任梦晗 on 2015/12/13.
//  Copyright © 2015年 renmenghan. All rights reserved.
//

#ifndef ShortcutMacro_h
#define ShortcutMacro_h

// debug
#ifdef DEBUG
#define DBG(format, ...)    NSLog(format, ## __VA_ARGS__)
#else
#define DBG(format, ...)
#endif

#endif /* ShortcutMacro_h */
