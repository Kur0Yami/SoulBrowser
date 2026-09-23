package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.view.Surface;

/* loaded from: classes.dex */
public final class zzaby extends Surface {
    public static int h;
    public static boolean i;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3888c;
    public final zzabx f;
    public boolean g;

    public /* synthetic */ zzaby(zzabx zzabxVar, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.f = zzabxVar;
        this.f3888c = z;
    }

    public static synchronized boolean a(Context context) {
        int i2;
        int i3;
        synchronized (zzaby.class) {
            if (!i) {
                try {
                } catch (zzdu e) {
                    zzee.e("PlaceholderSurface", "Failed to determine secure mode due to GL error: ".concat(String.valueOf(e.getMessage())));
                }
                if (zzdv.a(context)) {
                    if (zzdv.d("EGL_KHR_surfaceless_context")) {
                        i2 = 1;
                    } else {
                        i2 = 2;
                    }
                    h = i2;
                    i = true;
                }
                i2 = 0;
                h = i2;
                i = true;
            }
            i3 = h;
        }
        if (i3 == 0) {
            return false;
        }
        return true;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        zzabx zzabxVar = this.f;
        synchronized (zzabxVar) {
            try {
                if (!this.g) {
                    Handler handler = zzabxVar.f;
                    handler.getClass();
                    handler.sendEmptyMessage(2);
                    this.g = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
