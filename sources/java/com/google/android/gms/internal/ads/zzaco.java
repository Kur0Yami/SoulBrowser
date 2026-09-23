package com.google.android.gms.internal.ads;

import android.view.Surface;
import androidx.annotation.RequiresApi;

@RequiresApi
/* loaded from: classes.dex */
final class zzaco {
    public static void a(Surface surface, float f) {
        int i;
        if (f == 0.0f) {
            i = 0;
        } else {
            i = 1;
        }
        try {
            surface.setFrameRate(f, i);
        } catch (IllegalStateException e) {
            zzee.f("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e);
        }
    }
}
