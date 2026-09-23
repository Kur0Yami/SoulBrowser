package com.google.android.gms.internal.ads;

import android.media.metrics.LogSessionId;
import android.os.Build;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzpn {

    /* renamed from: c, reason: collision with root package name */
    public static final zzpn f9163c;

    /* renamed from: a, reason: collision with root package name */
    public final String f9164a;
    public final zzpm b;

    static {
        new zzpn(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        f9163c = new zzpn("preload");
    }

    public zzpn(String str) {
        zzpm zzpmVar;
        this.f9164a = str;
        if (Build.VERSION.SDK_INT >= 31) {
            zzpmVar = new zzpm();
        } else {
            zzpmVar = null;
        }
        this.b = zzpmVar;
    }

    public final synchronized void a(LogSessionId logSessionId) {
        LogSessionId logSessionId2;
        zzpm zzpmVar = this.b;
        if (zzpmVar != null) {
            LogSessionId logSessionId3 = zzpmVar.f9162a;
            logSessionId2 = LogSessionId.LOG_SESSION_ID_NONE;
            zzgqa.f(logSessionId3.equals(logSessionId2));
            zzpmVar.f9162a = logSessionId;
        } else {
            throw null;
        }
    }
}
