package com.google.android.gms.internal.ads;

import java.io.EOFException;
import kotlin.io.ConstantsKt;

/* loaded from: classes.dex */
public final class zzael implements zzaga {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f3957a = new byte[ConstantsKt.DEFAULT_BLOCK_SIZE];

    @Override // com.google.android.gms.internal.ads.zzaga
    public final int a(zzj zzjVar, int i, boolean z) {
        int b = zzjVar.b(this.f3957a, 0, Math.min(ConstantsKt.DEFAULT_BLOCK_SIZE, i));
        if (b == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzaga
    public final void b(int i, zzer zzerVar) {
        zzerVar.G(i);
    }

    @Override // com.google.android.gms.internal.ads.zzaga
    public final void c(zzer zzerVar, int i, int i2) {
        zzerVar.G(i);
    }

    @Override // com.google.android.gms.internal.ads.zzaga
    public final void d(long j, int i, int i2, int i3, zzafz zzafzVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaga
    public final void e(zzv zzvVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaga
    public final int f(zzj zzjVar, int i, boolean z) {
        return a(zzjVar, i, z);
    }
}
