package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class zzagi implements zzaeo {
    public static final int[] l = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    public static final int[] m = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
    public static final byte[] n;
    public static final byte[] o;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public long f4005c;
    public int d;
    public int e;
    public zzaer g;
    public zzaga h;
    public zzafq j;
    public boolean k;

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f4004a = new byte[1];
    public int f = -1;
    public zzaga i = new zzael();

    static {
        String str = zzfj.f7405a;
        Charset charset = StandardCharsets.UTF_8;
        n = "#!AMR\n".getBytes(charset);
        o = "#!AMR-WB\n".getBytes(charset);
    }

    public final boolean a(zzaep zzaepVar) {
        zzaepVar.zzl();
        byte[] bArr = n;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        zzaepVar.j(bArr2, 0, length);
        if (Arrays.equals(bArr2, bArr)) {
            this.b = false;
            zzaepVar.zzf(bArr.length);
            return true;
        }
        zzaepVar.zzl();
        byte[] bArr3 = o;
        int length2 = bArr3.length;
        byte[] bArr4 = new byte[length2];
        zzaepVar.j(bArr4, 0, length2);
        if (!Arrays.equals(bArr4, bArr3)) {
            return false;
        }
        this.b = true;
        zzaepVar.zzf(bArr3.length);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void c(long j, long j2) {
        this.f4005c = 0L;
        this.d = 0;
        this.e = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final boolean d(zzaep zzaepVar) {
        return a(zzaepVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0142 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0143 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a7 A[Catch: EOFException -> 0x0100, TryCatch #0 {EOFException -> 0x0100, blocks: (B:39:0x0070, B:41:0x0085, B:49:0x00a7, B:50:0x00ac, B:54:0x00aa, B:64:0x00be, B:65:0x00e1, B:66:0x00e2, B:67:0x00ff), top: B:38:0x0070 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00aa A[Catch: EOFException -> 0x0100, TryCatch #0 {EOFException -> 0x0100, blocks: (B:39:0x0070, B:41:0x0085, B:49:0x00a7, B:50:0x00ac, B:54:0x00aa, B:64:0x00be, B:65:0x00e1, B:66:0x00e2, B:67:0x00ff), top: B:38:0x0070 }] */
    @Override // com.google.android.gms.internal.ads.zzaeo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int e(com.google.android.gms.internal.ads.zzaep r19, com.google.android.gms.internal.ads.zzafo r20) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzagi.e(com.google.android.gms.internal.ads.zzaep, com.google.android.gms.internal.ads.zzafo):int");
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void f(zzaer zzaerVar) {
        this.g = zzaerVar;
        zzaga f = zzaerVar.f(0, 1);
        this.h = f;
        this.i = f;
        zzaerVar.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final List zzb() {
        zzgvs zzgvsVar = zzgtd.f;
        return zzguy.i;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void zzf() {
    }
}
