package com.google.android.gms.internal.play_billing;

import androidx.work.impl.workers.a;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzet extends zzes {
    public final byte[] g;

    public zzet(byte[] bArr) {
        bArr.getClass();
        this.g = bArr;
    }

    @Override // com.google.android.gms.internal.play_billing.zzev
    public final byte a(int i) {
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.play_billing.zzev
    public final byte c(int i) {
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.play_billing.zzev
    public final int g(int i, int i2) {
        return zzgb.a(this.g, i, 0, i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzev
    public final int i() {
        return this.g.length;
    }

    @Override // com.google.android.gms.internal.play_billing.zzev
    public final zzev k(int i, int i2) {
        byte[] bArr = this.g;
        int q = zzev.q(0, i2, bArr.length);
        if (q == 0) {
            return zzev.f;
        }
        return new zzep(bArr, 0, q);
    }

    @Override // com.google.android.gms.internal.play_billing.zzev
    public final void m(zzem zzemVar) {
        byte[] bArr = this.g;
        ((zzez) zzemVar).z(bArr, 0, bArr.length);
    }

    @Override // com.google.android.gms.internal.play_billing.zzev
    public final boolean p(zzev zzevVar) {
        boolean z = zzevVar instanceof zzet;
        byte[] bArr = this.g;
        if (z) {
            return Arrays.equals(bArr, ((zzet) zzevVar).g);
        }
        boolean z2 = zzevVar instanceof zzep;
        if (z2) {
            zzep zzepVar = (zzep) zzevVar;
            int i = zzepVar.i;
            int length = bArr.length;
            if (length <= i) {
                if (length <= i) {
                    if (z) {
                        return zzev.s(bArr, ((zzet) zzevVar).g, 0, 0, length);
                    }
                    if (z2) {
                        return zzev.s(bArr, zzepVar.g, 0, zzepVar.h, length);
                    }
                    return zzevVar.k(0, length).equals(k(0, length));
                }
                throw new IllegalArgumentException(a.s("Ran off end of other: 0, ", length, i, ", "));
            }
            throw new IllegalArgumentException("Length too large: " + length + length);
        }
        return zzevVar.p(this);
    }
}
