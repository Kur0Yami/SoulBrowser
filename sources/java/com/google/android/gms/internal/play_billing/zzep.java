package com.google.android.gms.internal.play_billing;

import android.support.v4.media.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzep extends zzes {
    public final byte[] g;
    public final int h;
    public final int i;

    public zzep(byte[] bArr, int i, int i2) {
        zzev.q(i, i + i2, bArr.length);
        this.g = bArr;
        this.h = i;
        this.i = i2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzev
    public final byte a(int i) {
        int i2 = this.i;
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                throw new ArrayIndexOutOfBoundsException(a.e(i, "Index < 0: "));
            }
            throw new ArrayIndexOutOfBoundsException(androidx.work.impl.workers.a.s("Index > length: ", i, i2, ", "));
        }
        return this.g[this.h + i];
    }

    @Override // com.google.android.gms.internal.play_billing.zzev
    public final byte c(int i) {
        return this.g[this.h + i];
    }

    @Override // com.google.android.gms.internal.play_billing.zzev
    public final int g(int i, int i2) {
        return zzgb.a(this.g, i, this.h, i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzev
    public final int i() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.play_billing.zzev
    public final zzev k(int i, int i2) {
        int q = zzev.q(i, i2, this.i);
        if (q == 0) {
            return zzev.f;
        }
        return new zzep(this.g, this.h + i, q);
    }

    @Override // com.google.android.gms.internal.play_billing.zzev
    public final void m(zzem zzemVar) {
        ((zzez) zzemVar).z(this.g, this.h, this.i);
    }

    @Override // com.google.android.gms.internal.play_billing.zzev
    public final boolean p(zzev zzevVar) {
        boolean z = zzevVar instanceof zzet;
        if (!z && !(zzevVar instanceof zzep)) {
            return zzevVar.p(this);
        }
        int i = zzevVar.i();
        int i2 = this.i;
        if (i2 <= i) {
            if (i2 <= zzevVar.i()) {
                byte[] bArr = this.g;
                int i3 = this.h;
                if (z) {
                    return zzev.s(bArr, ((zzet) zzevVar).g, i3, 0, i2);
                }
                if (zzevVar instanceof zzep) {
                    zzep zzepVar = (zzep) zzevVar;
                    return zzev.s(bArr, zzepVar.g, i3, zzepVar.h, i2);
                }
                return zzevVar.k(0, i2).equals(k(i3, i2 + i3));
            }
            throw new IllegalArgumentException(androidx.work.impl.workers.a.s("Ran off end of other: 0, ", i2, zzevVar.i(), ", "));
        }
        throw new IllegalArgumentException("Length too large: " + i2 + i2);
    }
}
