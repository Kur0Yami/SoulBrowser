package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzadn {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f3927a = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};
    public static final int[] b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00d5, code lost:
    
        if (r11 != 3) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzadm a(com.google.android.gms.internal.ads.zzeq r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzadn.a(com.google.android.gms.internal.ads.zzeq, boolean):com.google.android.gms.internal.ads.zzadm");
    }

    public static int b(zzeq zzeqVar) {
        int h = zzeqVar.h(4);
        if (h == 15) {
            if (zzeqVar.b() >= 24) {
                return zzeqVar.h(24);
            }
            throw zzat.a("AAC header insufficient data", null);
        }
        if (h < 13) {
            return f3927a[h];
        }
        throw zzat.a("AAC header wrong Sampling Frequency Index", null);
    }
}
