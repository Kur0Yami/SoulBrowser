package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzaew {
    /* JADX WARN: Code restructure failed: missing block: B:37:0x009d, code lost:
    
        if (r4 == r27.f) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a8, code lost:
    
        if ((r26.K() * 1000) == r2) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b7, code lost:
    
        if (r5 == r2) goto L57;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(com.google.android.gms.internal.ads.zzer r26, com.google.android.gms.internal.ads.zzafb r27, int r28, com.google.android.gms.internal.ads.zzaev r29) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaew.a(com.google.android.gms.internal.ads.zzer, com.google.android.gms.internal.ads.zzafb, int, com.google.android.gms.internal.ads.zzaev):boolean");
    }

    public static int b(int i, zzer zzerVar) {
        switch (i) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return zzerVar.K() + 1;
            case 7:
                return zzerVar.L() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }

    public static boolean c(zzer zzerVar, zzafb zzafbVar, boolean z, zzaev zzaevVar) {
        try {
            long o = zzerVar.o();
            if (!z) {
                o *= zzafbVar.b;
            }
            long j = zzafbVar.j;
            if (j == 0 || o <= j) {
                zzaevVar.f3962a = o;
                return true;
            }
            return false;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
