package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes.dex */
public final class zzhmm extends zzhmp {

    /* renamed from: a, reason: collision with root package name */
    public final int f8675a;

    public zzhmm(int i) {
        this.f8675a = i;
    }

    public static zzhmm b(int i) {
        if (i != 16 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 128-bit and 256-bit are supported", Integer.valueOf(i * 8)));
        }
        return new zzhmm(i);
    }

    @Override // com.google.android.gms.internal.ads.zzhan
    public final boolean a() {
        return false;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhmm) || ((zzhmm) obj).f8675a != this.f8675a) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzhmm.class, Integer.valueOf(this.f8675a));
    }

    public final String toString() {
        int i = this.f8675a;
        return androidx.work.impl.workers.a.t(new StringBuilder(String.valueOf(i).length() + 34), "AesCmac PRF Parameters (", i, "-byte key)");
    }
}
