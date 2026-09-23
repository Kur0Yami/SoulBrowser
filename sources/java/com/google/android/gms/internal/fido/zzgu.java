package com.google.android.gms.internal.fido;

import androidx.work.impl.workers.a;
import java.io.ByteArrayInputStream;
import java.nio.ByteBuffer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class zzgu extends zzgt {
    public final byte[] g;

    public zzgu(byte[] bArr) {
        this.f10323c = 0;
        bArr.getClass();
        this.g = bArr;
    }

    @Override // com.google.android.gms.internal.fido.zzgx
    public byte a(int i) {
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.fido.zzgx
    public byte c(int i) {
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.fido.zzgx
    public final boolean equals(Object obj) {
        if (obj != this) {
            if ((obj instanceof zzgx) && g() == ((zzgx) obj).g()) {
                if (g() != 0) {
                    if (obj instanceof zzgu) {
                        zzgu zzguVar = (zzgu) obj;
                        int i = this.f10323c;
                        int i2 = zzguVar.f10323c;
                        if (i == 0 || i2 == 0 || i == i2) {
                            int g = g();
                            if (g <= zzguVar.g()) {
                                if (g <= zzguVar.g()) {
                                    byte[] bArr = zzguVar.g;
                                    int u = u() + g;
                                    int u2 = u();
                                    int u3 = zzguVar.u();
                                    while (u2 < u) {
                                        if (this.g[u2] != bArr[u3]) {
                                            return false;
                                        }
                                        u2++;
                                        u3++;
                                    }
                                    return true;
                                }
                                throw new IllegalArgumentException(a.s("Ran off end of other: 0, ", g, zzguVar.g(), ", "));
                            }
                            throw new IllegalArgumentException("Length too large: " + g + g());
                        }
                        return false;
                    }
                    return obj.equals(this);
                }
                return true;
            }
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.fido.zzgx
    public int g() {
        return this.g.length;
    }

    @Override // com.google.android.gms.internal.fido.zzgx
    public void i(byte[] bArr, int i) {
        System.arraycopy(this.g, 0, bArr, 0, i);
    }

    @Override // com.google.android.gms.internal.fido.zzgx
    public final int k(int i, int i2) {
        int u = u();
        byte[] bArr = zzhc.f10326a;
        for (int i3 = u; i3 < u + i2; i3++) {
            i = (i * 31) + this.g[i3];
        }
        return i;
    }

    @Override // com.google.android.gms.internal.fido.zzgx
    public final zzgx m(int i, int i2) {
        int r = zzgx.r(i, i2, g());
        if (r == 0) {
            return zzgx.f;
        }
        return new zzgr(this.g, u() + i, r);
    }

    @Override // com.google.android.gms.internal.fido.zzgx
    public final ByteArrayInputStream p() {
        return new ByteArrayInputStream(this.g, u(), g());
    }

    @Override // com.google.android.gms.internal.fido.zzgx
    public final ByteBuffer q() {
        return ByteBuffer.wrap(this.g, u(), g()).asReadOnlyBuffer();
    }

    public int u() {
        return 0;
    }
}
