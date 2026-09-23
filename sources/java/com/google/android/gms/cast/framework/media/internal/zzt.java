package com.google.android.gms.cast.framework.media.internal;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.cast.internal.Logger;
import java.util.List;

/* loaded from: classes.dex */
public final class zzt {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f3528a = new Logger("MediaSessionUtils", null);

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001a, code lost:
    
        if (r0 != 4) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0036, code lost:
    
        if (r1.containsKey("com.google.android.gms.cast.metadata.COMPOSER") != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(com.google.android.gms.cast.MediaMetadata r5) {
        /*
            android.os.Bundle r0 = r5.f
            android.os.Bundle r1 = r5.f
            java.lang.String r2 = "com.google.android.gms.cast.metadata.SUBTITLE"
            boolean r0 = r0.containsKey(r2)
            if (r0 != 0) goto L3e
            int r0 = r5.g
            r3 = 1
            if (r0 == r3) goto L3c
            r3 = 2
            if (r0 == r3) goto L39
            r3 = 3
            java.lang.String r4 = "com.google.android.gms.cast.metadata.ARTIST"
            if (r0 == r3) goto L1f
            r1 = 4
            if (r0 == r1) goto L1d
            goto L3e
        L1d:
            r2 = r4
            goto L3e
        L1f:
            boolean r0 = r1.containsKey(r4)
            if (r0 == 0) goto L26
            goto L1d
        L26:
            java.lang.String r0 = "com.google.android.gms.cast.metadata.ALBUM_ARTIST"
            boolean r3 = r1.containsKey(r0)
            if (r3 == 0) goto L30
        L2e:
            r2 = r0
            goto L3e
        L30:
            java.lang.String r0 = "com.google.android.gms.cast.metadata.COMPOSER"
            boolean r1 = r1.containsKey(r0)
            if (r1 == 0) goto L3e
            goto L2e
        L39:
            java.lang.String r2 = "com.google.android.gms.cast.metadata.SERIES_TITLE"
            goto L3e
        L3c:
            java.lang.String r2 = "com.google.android.gms.cast.metadata.STUDIO"
        L3e:
            java.lang.String r5 = r5.F(r2)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.internal.zzt.a(com.google.android.gms.cast.MediaMetadata):java.lang.String");
    }

    public static List b(com.google.android.gms.cast.framework.media.zzg zzgVar) {
        try {
            return zzgVar.zzf();
        } catch (RemoteException e) {
            Logger logger = f3528a;
            Log.e(logger.f3604a, logger.d("Unable to call %s on %s.", "getNotificationActions", "zzg"), e);
            return null;
        }
    }
}
