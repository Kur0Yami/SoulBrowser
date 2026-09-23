package com.google.android.gms.internal.ads;

import com.google.api.client.http.HttpStatusCodes;
import kotlin.KotlinVersion;

/* loaded from: classes.dex */
public final class zzads {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f3934a = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, HttpStatusCodes.STATUS_CODE_BAD_REQUEST, HttpStatusCodes.STATUS_CODE_BAD_REQUEST, 2048};

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0030, code lost:
    
        if (r10.g() != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
    
        r2 = r10.h(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
    
        if (r10.g() == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0042, code lost:
    
        if (r10.h(3) <= 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0044, code lost:
    
        r10.f(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0052, code lost:
    
        if (true == r10.g()) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0054, code lost:
    
        r5 = 44100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0057, code lost:
    
        r10 = r10.h(4);
        r9 = com.google.android.gms.internal.ads.zzads.f3934a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005d, code lost:
    
        if (r5 != 44100) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0061, code lost:
    
        if (r10 != 13) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0063, code lost:
    
        r10 = r9[13];
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0099, code lost:
    
        return new com.google.android.gms.internal.ads.zzadr(r5, r0, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0067, code lost:
    
        if (r5 != 48000) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006b, code lost:
    
        if (r10 >= 14) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x006d, code lost:
    
        r6 = r9[r10];
        r2 = r2 % 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0073, code lost:
    
        if (r2 == 1) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0077, code lost:
    
        if (r2 == 2) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0079, code lost:
    
        if (r2 == 3) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x007b, code lost:
    
        if (r2 == 4) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x007e, code lost:
    
        if (r10 == 3) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0080, code lost:
    
        if (r10 == 8) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0082, code lost:
    
        if (r10 != 11) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0084, code lost:
    
        r10 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0091, code lost:
    
        r10 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0087, code lost:
    
        if (r10 == 8) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0089, code lost:
    
        if (r10 != 11) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x008c, code lost:
    
        if (r10 == 3) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x008e, code lost:
    
        if (r10 != 8) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0093, code lost:
    
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0056, code lost:
    
        r5 = 48000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0027, code lost:
    
        if (r10.h(2) == 3) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0029, code lost:
    
        r10.h(2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzadr a(com.google.android.gms.internal.ads.zzeq r10) {
        /*
            r0 = 16
            int r1 = r10.h(r0)
            int r0 = r10.h(r0)
            r2 = 65535(0xffff, float:9.1834E-41)
            r3 = 4
            if (r0 != r2) goto L18
            r0 = 24
            int r0 = r10.h(r0)
            r2 = 7
            goto L19
        L18:
            r2 = r3
        L19:
            int r0 = r0 + r2
            r2 = 44097(0xac41, float:6.1793E-41)
            if (r1 != r2) goto L21
            int r0 = r0 + 2
        L21:
            r1 = 2
            int r2 = r10.h(r1)
            r4 = 3
            if (r2 != r4) goto L32
        L29:
            r10.h(r1)
            boolean r2 = r10.g()
            if (r2 != 0) goto L29
        L32:
            r2 = 10
            int r2 = r10.h(r2)
            boolean r5 = r10.g()
            if (r5 == 0) goto L47
            int r5 = r10.h(r4)
            if (r5 <= 0) goto L47
            r10.f(r1)
        L47:
            boolean r5 = r10.g()
            r6 = 48000(0xbb80, float:6.7262E-41)
            r7 = 44100(0xac44, float:6.1797E-41)
            r8 = 1
            if (r8 == r5) goto L56
            r5 = r7
            goto L57
        L56:
            r5 = r6
        L57:
            int r10 = r10.h(r3)
            int[] r9 = com.google.android.gms.internal.ads.zzads.f3934a
            if (r5 != r7) goto L66
            r7 = 13
            if (r10 != r7) goto L66
            r10 = r9[r7]
            goto L94
        L66:
            r7 = 0
            if (r5 != r6) goto L93
            r6 = 14
            if (r10 >= r6) goto L93
            r6 = r9[r10]
            int r2 = r2 % 5
            r7 = 8
            if (r2 == r8) goto L8c
            r8 = 11
            if (r2 == r1) goto L87
            if (r2 == r4) goto L8c
            if (r2 == r3) goto L7e
            goto L91
        L7e:
            if (r10 == r4) goto L84
            if (r10 == r7) goto L84
            if (r10 != r8) goto L91
        L84:
            int r10 = r6 + 1
            goto L94
        L87:
            if (r10 == r7) goto L84
            if (r10 != r8) goto L91
            goto L84
        L8c:
            if (r10 == r4) goto L84
            if (r10 != r7) goto L91
            goto L84
        L91:
            r10 = r6
            goto L94
        L93:
            r10 = r7
        L94:
            com.google.android.gms.internal.ads.zzadr r1 = new com.google.android.gms.internal.ads.zzadr
            r1.<init>(r5, r0, r10)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzads.a(com.google.android.gms.internal.ads.zzeq):com.google.android.gms.internal.ads.zzadr");
    }

    public static void b(int i, zzer zzerVar) {
        zzerVar.y(7);
        byte[] bArr = zzerVar.f6834a;
        bArr[0] = -84;
        bArr[1] = 64;
        bArr[2] = -1;
        bArr[3] = -1;
        bArr[4] = (byte) ((i >> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
        bArr[5] = (byte) ((i >> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
        bArr[6] = (byte) (i & KotlinVersion.MAX_COMPONENT_VALUE);
    }

    public static void c(zzeq zzeqVar, zzadq zzadqVar) {
        int h = zzeqVar.h(5);
        zzeqVar.f(2);
        if (zzeqVar.g()) {
            zzeqVar.f(5);
        }
        if (h >= 7 && h <= 10) {
            zzeqVar.e();
        }
        if (zzeqVar.g()) {
            int h2 = zzeqVar.h(3);
            if (zzadqVar.b == -1 && h >= 0 && h <= 15 && (h2 == 0 || h2 == 1)) {
                zzadqVar.b = h;
            }
            if (zzeqVar.g()) {
                e(zzeqVar);
            }
        }
    }

    public static void d(zzeq zzeqVar, zzadq zzadqVar) {
        zzeqVar.f(2);
        boolean g = zzeqVar.g();
        int h = zzeqVar.h(8);
        for (int i = 0; i < h; i++) {
            zzeqVar.f(2);
            if (zzeqVar.g()) {
                zzeqVar.f(5);
            }
            if (g) {
                zzeqVar.f(24);
            } else {
                if (zzeqVar.g()) {
                    if (!zzeqVar.g()) {
                        zzeqVar.f(4);
                    }
                    zzadqVar.f3931c = zzeqVar.h(6) + 1;
                }
                zzeqVar.f(4);
            }
        }
        if (zzeqVar.g()) {
            zzeqVar.f(3);
            if (zzeqVar.g()) {
                e(zzeqVar);
            }
        }
    }

    public static void e(zzeq zzeqVar) {
        int h = zzeqVar.h(6);
        if (h >= 2 && h <= 42) {
            zzeqVar.f(h * 8);
            return;
        }
        throw zzat.b(String.format("Invalid language tag bytes number: %d. Must be between 2 and 42.", Integer.valueOf(h)));
    }
}
