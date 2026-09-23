package com.caverock.androidsvg;

import android.graphics.Canvas;

/* loaded from: classes.dex */
class CanvasLegacy {
    static {
        ((Integer) Canvas.class.getField("MATRIX_SAVE_FLAG").get(null)).intValue();
        Canvas.class.getMethod("save", Integer.TYPE);
    }
}
