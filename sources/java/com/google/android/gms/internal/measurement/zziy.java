package com.google.android.gms.internal.measurement;

import androidx.work.impl.workers.a;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
class zziy extends zzix {
    public final byte[] g;

    public zziy(byte[] bArr) {
        this.f10375c = 0;
        bArr.getClass();
        this.g = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    public byte a(int i) {
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    public byte c(int i) {
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    public final boolean equals(Object obj) {
        if (obj != this) {
            if ((obj instanceof zzjb) && g() == ((zzjb) obj).g()) {
                if (g() != 0) {
                    if (obj instanceof zziy) {
                        zziy zziyVar = (zziy) obj;
                        int i = this.f10375c;
                        int i2 = zziyVar.f10375c;
                        if (i == 0 || i2 == 0 || i == i2) {
                            int g = g();
                            if (g <= zziyVar.g()) {
                                if (g <= zziyVar.g()) {
                                    byte[] bArr = zziyVar.g;
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
                                throw new IllegalArgumentException(a.s("Ran off end of other: 0, ", g, zziyVar.g(), ", "));
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

    @Override // com.google.android.gms.internal.measurement.zzjb
    public int g() {
        return this.g.length;
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    public final int i(int i, int i2) {
        Charset charset = zzkk.f10385a;
        for (int i3 = 0; i3 < i2; i3++) {
            i = (i * 31) + this.g[i3];
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    public final zzjb k() {
        zzjb.q(47, g());
        return new zziv(this.g, 47);
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    public final String m(Charset charset) {
        return new String(this.g, 0, g(), charset);
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    public final boolean p() {
        if (zzna.f10412a.a(this.g, g()) == 0) {
            return true;
        }
        return false;
    }
}
