package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioDeviceInfo;
import android.os.Build;
import android.util.SparseArray;
import j$.util.Objects;
import java.util.List;

/* loaded from: classes.dex */
public final class zzpp {

    /* renamed from: c, reason: collision with root package name */
    public static final zzpp f9167c = new zzpp(zzgtd.r(zzpo.d));
    public static final zzgtd d;
    public static final zzgtg e;

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray f9168a = new SparseArray();
    public final int b;

    static {
        Object[] objArr = {2, 5, 6};
        zzguw.a(3, objArr);
        d = zzgtd.x(3, objArr);
        zzgtf zzgtfVar = new zzgtf(4);
        zzgtfVar.a(5, 6);
        zzgtfVar.a(17, 6);
        zzgtfVar.a(7, 6);
        zzgtfVar.a(30, 10);
        zzgtfVar.a(18, 6);
        zzgtfVar.a(6, 8);
        zzgtfVar.a(8, 8);
        zzgtfVar.a(14, 8);
        e = zzgtfVar.d(true);
    }

    public zzpp(List list) {
        for (int i = 0; i < list.size(); i++) {
            zzpo zzpoVar = (zzpo) list.get(i);
            this.f9168a.put(zzpoVar.f9165a, zzpoVar);
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f9168a.size(); i3++) {
            i2 = Math.max(i2, ((zzpo) this.f9168a.valueAt(i3)).b);
        }
        this.b = i2;
    }

    public static zzpp a(Context context, zzd zzdVar, AudioDeviceInfo audioDeviceInfo) {
        return b(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), zzdVar, audioDeviceInfo);
    }

    /* JADX WARN: Code restructure failed: missing block: B:98:0x0250, code lost:
    
        if (r4.equals("Xiaomi") == false) goto L95;
     */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.ads.zzgtm, com.google.android.gms.internal.ads.zzgsx] */
    /* JADX WARN: Type inference failed for: r7v3, types: [com.google.android.gms.internal.ads.zzgtm, com.google.android.gms.internal.ads.zzgsx] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzpp b(android.content.Context r16, android.content.Intent r17, com.google.android.gms.internal.ads.zzd r18, android.media.AudioDeviceInfo r19) {
        /*
            Method dump skipped, instructions count: 676
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpp.b(android.content.Context, android.content.Intent, com.google.android.gms.internal.ads.zzd, android.media.AudioDeviceInfo):com.google.android.gms.internal.ads.zzpp");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    public static zzgtd d(int i, int[] iArr) {
        zzgvs zzgvsVar = zzgtd.f;
        ?? zzgsxVar = new zzgsx(4);
        if (iArr == null) {
            iArr = new int[0];
        }
        for (int i2 : iArr) {
            zzgsxVar.c(new zzpo(i2, i));
        }
        return zzgsxVar.f();
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x0041, code lost:
    
        if (r5.indexOfKey(30) < 0) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00d0 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair c(com.google.android.gms.internal.ads.zzd r11, com.google.android.gms.internal.ads.zzv r12) {
        /*
            r10 = this;
            java.lang.String r0 = r12.m
            r0.getClass()
            java.lang.String r1 = r12.j
            int r1 = com.google.android.gms.internal.ads.zzas.g(r0, r1)
            com.google.android.gms.internal.ads.zzgtg r2 = com.google.android.gms.internal.ads.zzpp.e
            java.lang.Integer r3 = java.lang.Integer.valueOf(r1)
            boolean r2 = r2.containsKey(r3)
            if (r2 != 0) goto L19
            goto Ld0
        L19:
            r2 = 7
            r3 = 8
            r4 = 6
            android.util.SparseArray r5 = r10.f9168a
            r6 = 18
            if (r1 != r6) goto L2d
            int r1 = r5.indexOfKey(r6)
            if (r1 < 0) goto L2b
            r1 = r6
            goto L2d
        L2b:
            r1 = r4
            goto L43
        L2d:
            if (r1 != r3) goto L39
            int r1 = r5.indexOfKey(r3)
            if (r1 < 0) goto L37
            r1 = r3
            goto L39
        L37:
            r1 = r2
            goto L43
        L39:
            r7 = 30
            if (r1 != r7) goto L43
            int r7 = r5.indexOfKey(r7)
            if (r7 < 0) goto L37
        L43:
            int r7 = r5.indexOfKey(r1)
            if (r7 < 0) goto Ld0
            java.lang.Object r5 = r5.get(r1)
            com.google.android.gms.internal.ads.zzpo r5 = (com.google.android.gms.internal.ads.zzpo) r5
            r5.getClass()
            int r7 = r12.E
            r8 = 1
            r9 = -1
            if (r7 == r9) goto L8c
            if (r1 != r6) goto L5b
            goto L8c
        L5b:
            java.lang.String r11 = "audio/vnd.dts.uhd;profile=p2"
            boolean r11 = r0.equals(r11)
            if (r11 == 0) goto L6f
            int r11 = android.os.Build.VERSION.SDK_INT
            r12 = 33
            if (r11 >= r12) goto L6f
            r11 = 10
            if (r7 <= r11) goto L97
            goto Ld0
        L6f:
            com.google.android.gms.internal.ads.zzgtn r11 = r5.f9166c
            r12 = 0
            if (r11 != 0) goto L7a
            int r11 = r5.b
            if (r7 > r11) goto L89
            r12 = r8
            goto L89
        L7a:
            int r0 = com.google.android.gms.internal.ads.zzfj.b(r7)
            if (r0 != 0) goto L81
            goto L89
        L81:
            java.lang.Integer r12 = java.lang.Integer.valueOf(r0)
            boolean r12 = r11.contains(r12)
        L89:
            if (r12 != 0) goto L97
            goto Ld0
        L8c:
            int r12 = r12.F
            if (r12 != r9) goto L93
            r12 = 48000(0xbb80, float:6.7262E-41)
        L93:
            int r7 = r5.a(r12, r11)
        L97:
            int r11 = android.os.Build.VERSION.SDK_INT
            r12 = 28
            if (r11 > r12) goto Lab
            if (r7 != r2) goto La0
            goto Lac
        La0:
            r12 = 3
            if (r7 == r12) goto La9
            r12 = 4
            if (r7 == r12) goto La9
            r12 = 5
            if (r7 != r12) goto Lab
        La9:
            r3 = r4
            goto Lac
        Lab:
            r3 = r7
        Lac:
            r12 = 26
            if (r11 > r12) goto Lbd
            java.lang.String r11 = "fugu"
            java.lang.String r12 = android.os.Build.DEVICE
            boolean r11 = r11.equals(r12)
            if (r11 == 0) goto Lbd
            if (r3 != r8) goto Lbd
            r3 = 2
        Lbd:
            int r11 = com.google.android.gms.internal.ads.zzfj.b(r3)
            if (r11 == 0) goto Ld0
            java.lang.Integer r12 = java.lang.Integer.valueOf(r1)
            java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
            android.util.Pair r11 = android.util.Pair.create(r12, r11)
            return r11
        Ld0:
            r11 = 0
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpp.c(com.google.android.gms.internal.ads.zzd, com.google.android.gms.internal.ads.zzv):android.util.Pair");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001c, code lost:
    
        if (r5.contentEquals(r1) != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r9) {
        /*
            r8 = this;
            r0 = 1
            if (r8 != r9) goto L4
            return r0
        L4:
            boolean r1 = r9 instanceof com.google.android.gms.internal.ads.zzpp
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            com.google.android.gms.internal.ads.zzpp r9 = (com.google.android.gms.internal.ads.zzpp) r9
            android.util.SparseArray r1 = r9.f9168a
            java.lang.String r3 = com.google.android.gms.internal.ads.zzfj.f7405a
            int r3 = android.os.Build.VERSION.SDK_INT
            r4 = 31
            android.util.SparseArray r5 = r8.f9168a
            if (r3 < r4) goto L1f
            boolean r1 = r5.contentEquals(r1)
            if (r1 == 0) goto L48
            goto L41
        L1f:
            int r3 = r5.size()
            int r4 = r1.size()
            if (r3 != r4) goto L48
            r4 = r2
        L2a:
            if (r4 >= r3) goto L41
            int r6 = r5.keyAt(r4)
            java.lang.Object r7 = r5.valueAt(r4)
            java.lang.Object r6 = r1.get(r6)
            boolean r6 = j$.util.Objects.equals(r7, r6)
            if (r6 == 0) goto L48
            int r4 = r4 + 1
            goto L2a
        L41:
            int r1 = r8.b
            int r9 = r9.b
            if (r1 != r9) goto L48
            return r0
        L48:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpp.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int i;
        String str = zzfj.f7405a;
        int i2 = Build.VERSION.SDK_INT;
        SparseArray sparseArray = this.f9168a;
        if (i2 >= 31) {
            i = sparseArray.contentHashCode();
        } else {
            int i3 = 17;
            for (int i4 = 0; i4 < sparseArray.size(); i4++) {
                i3 = Objects.hashCode(sparseArray.valueAt(i4)) + ((sparseArray.keyAt(i4) + (i3 * 31)) * 31);
            }
            i = i3;
        }
        return (i * 31) + this.b;
    }

    public final String toString() {
        String obj = this.f9168a.toString();
        int i = this.b;
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 50 + obj.length() + 1);
        sb.append("AudioCapabilities[maxChannelCount=");
        sb.append(i);
        sb.append(", audioProfiles=");
        sb.append(obj);
        sb.append("]");
        return sb.toString();
    }
}
