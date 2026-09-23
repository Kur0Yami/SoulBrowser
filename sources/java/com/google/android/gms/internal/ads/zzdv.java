package com.google.android.gms.internal.ads;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.EGLDisplay;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.os.Build;

/* loaded from: classes.dex */
public final class zzdv {
    public static boolean a(Context context) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            if (i >= 26 || (!"samsung".equals(Build.MANUFACTURER) && !"XT1650".equals(Build.MODEL))) {
                if (i < 26 && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) {
                    return false;
                }
                return d("EGL_EXT_protected_content");
            }
            return false;
        }
        return false;
    }

    public static void b() {
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError == 0) {
                break;
            }
            if (z) {
                sb.append('\n');
            }
            String gluErrorString = GLU.gluErrorString(glGetError);
            if (gluErrorString == null) {
                gluErrorString = "error code: 0x".concat(String.valueOf(Integer.toHexString(glGetError)));
            }
            sb.append("glError: ");
            sb.append(gluErrorString);
            z = true;
        }
        if (!z) {
        } else {
            throw new Exception(sb.toString());
        }
    }

    public static void c(String str, boolean z) {
        if (z) {
        } else {
            throw new Exception(str);
        }
    }

    public static boolean d(String str) {
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        c("No EGL display.", !eglGetDisplay.equals(EGL14.EGL_NO_DISPLAY));
        c("Error in eglInitialize.", EGL14.eglInitialize(eglGetDisplay, new int[1], 0, new int[1], 0));
        b();
        String eglQueryString = EGL14.eglQueryString(eglGetDisplay, 12373);
        if (eglQueryString == null || !eglQueryString.contains(str)) {
            return false;
        }
        return true;
    }
}
