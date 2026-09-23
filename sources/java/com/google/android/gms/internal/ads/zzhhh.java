package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zzhhh {

    /* renamed from: a, reason: collision with root package name */
    public final long[] f8545a;
    public final long[] b;

    /* renamed from: c, reason: collision with root package name */
    public final long[] f8546c;

    public zzhhh(long[] jArr, long[] jArr2, long[] jArr3) {
        this.f8545a = jArr;
        this.b = jArr2;
        this.f8546c = jArr3;
    }

    public void a(long[] jArr, long[] jArr2) {
        System.arraycopy(jArr2, 0, jArr, 0, 10);
    }

    public final void b(zzhhh zzhhhVar, int i) {
        zzhhg.a(this.f8545a, zzhhhVar.f8545a, i);
        zzhhg.a(this.b, zzhhhVar.b, i);
        zzhhg.a(this.f8546c, zzhhhVar.f8546c, i);
    }

    public zzhhh() {
        zzhhh zzhhhVar = zzhhm.f8551a;
        this.f8545a = Arrays.copyOf(zzhhhVar.f8545a, 10);
        this.b = Arrays.copyOf(zzhhhVar.b, 10);
        this.f8546c = Arrays.copyOf(zzhhhVar.f8546c, 10);
    }
}
