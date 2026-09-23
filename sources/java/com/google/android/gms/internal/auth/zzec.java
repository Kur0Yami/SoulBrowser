package com.google.android.gms.internal.auth;

import androidx.work.impl.workers.a;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zzec extends zzeb {
    public final byte[] g;

    public zzec(byte[] bArr) {
        this.f9533c = 0;
        bArr.getClass();
        this.g = bArr;
    }

    @Override // com.google.android.gms.internal.auth.zzef
    public byte a(int i) {
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.auth.zzef
    public byte c(int i) {
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.auth.zzef
    public final boolean equals(Object obj) {
        if (obj != this) {
            if ((obj instanceof zzef) && g() == ((zzef) obj).g()) {
                if (g() != 0) {
                    if (obj instanceof zzec) {
                        zzec zzecVar = (zzec) obj;
                        int i = this.f9533c;
                        int i2 = zzecVar.f9533c;
                        if (i == 0 || i2 == 0 || i == i2) {
                            int g = g();
                            if (g <= zzecVar.g()) {
                                if (g <= zzecVar.g()) {
                                    byte[] bArr = zzecVar.g;
                                    int i3 = 0;
                                    int i4 = 0;
                                    while (i3 < g) {
                                        if (this.g[i3] == bArr[i4]) {
                                            i3++;
                                            i4++;
                                        }
                                    }
                                    return true;
                                }
                                throw new IllegalArgumentException(a.s("Ran off end of other: 0, ", g, zzecVar.g(), ", "));
                            }
                            throw new IllegalArgumentException("Length too large: " + g + g());
                        }
                    } else {
                        return obj.equals(this);
                    }
                } else {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.auth.zzef
    public int g() {
        return this.g.length;
    }

    @Override // com.google.android.gms.internal.auth.zzef
    public final int i(int i, int i2) {
        Charset charset = zzfa.f9540a;
        for (int i3 = 0; i3 < i2; i3++) {
            i = (i * 31) + this.g[i3];
        }
        return i;
    }

    @Override // com.google.android.gms.internal.auth.zzef
    public final zzef k() {
        int q = zzef.q(0, 47, g());
        if (q == 0) {
            return zzef.f;
        }
        return new zzdz(this.g, q);
    }

    @Override // com.google.android.gms.internal.auth.zzef
    public final String m(Charset charset) {
        return new String(this.g, 0, g(), charset);
    }

    @Override // com.google.android.gms.internal.auth.zzef
    public final boolean p() {
        return zzhn.f9572a.b(this.g, 0, g());
    }
}
