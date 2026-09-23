package com.google.android.gms.internal.ads;

import com.google.api.client.http.HttpStatusCodes;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzct {

    /* renamed from: a, reason: collision with root package name */
    public final int f5444a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final float f5445c;
    public final float d;
    public final float e;
    public final int f;
    public final int g;
    public final int h;
    public final zzcr i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public double q;

    public zzct(int i, int i2, float f, float f2, int i3, boolean z) {
        zzcr zzcsVar;
        this.f5444a = i;
        this.b = i2;
        this.f5445c = f;
        this.d = f2;
        this.e = i / i3;
        this.f = i / HttpStatusCodes.STATUS_CODE_BAD_REQUEST;
        int i4 = i / 65;
        this.g = i4;
        this.h = i4 + i4;
        if (z) {
            zzcsVar = new zzcq(this);
        } else {
            zzcsVar = new zzcs(this);
        }
        this.i = zzcsVar;
    }

    public final void a(int i, int i2) {
        zzcr zzcrVar = this.i;
        zzcrVar.h(i2);
        Object zzr = zzcrVar.zzr();
        Object zzq = zzcrVar.zzq();
        int i3 = this.k;
        int i4 = this.b;
        System.arraycopy(zzr, i * i4, zzq, i3 * i4, i2 * i4);
        this.k += i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b() {
        /*
            Method dump skipped, instructions count: 575
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzct.b():void");
    }
}
