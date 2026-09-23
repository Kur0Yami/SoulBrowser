package com.google.android.gms.internal.cast;

import java.nio.charset.Charset;

/* loaded from: classes.dex */
class zzxj extends zzxi {
    public final byte[] g;

    public zzxj(byte[] bArr) {
        this.f9869c = 0;
        bArr.getClass();
        this.g = bArr;
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public byte a(int i) {
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public byte c(int i) {
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public final boolean equals(Object obj) {
        if (obj != this) {
            if ((obj instanceof zzxk) && g() == ((zzxk) obj).g()) {
                if (g() != 0) {
                    if (obj instanceof zzxj) {
                        zzxj zzxjVar = (zzxj) obj;
                        int i = this.f9869c;
                        int i2 = zzxjVar.f9869c;
                        if (i == 0 || i2 == 0 || i == i2) {
                            int g = g();
                            if (g <= zzxjVar.g()) {
                                if (g <= zzxjVar.g()) {
                                    byte[] bArr = zzxjVar.g;
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
                                int g2 = zzxjVar.g();
                                throw new IllegalArgumentException(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(g).length() + 27 + String.valueOf(g2).length()), "Ran off end of other: 0, ", g, ", ", g2));
                            }
                            int g3 = g();
                            StringBuilder sb = new StringBuilder(String.valueOf(g).length() + 18 + String.valueOf(g3).length());
                            sb.append("Length too large: ");
                            sb.append(g);
                            sb.append(g3);
                            throw new IllegalArgumentException(sb.toString());
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

    @Override // com.google.android.gms.internal.cast.zzxk
    public int g() {
        return this.g.length;
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public final zzxk i() {
        zzxk.d(g());
        return new zzxg(this.g);
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public final void k(zzxd zzxdVar) {
        ((zzxn) zzxdVar).t(this.g, g());
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public final int m(int i, int i2) {
        Charset charset = zzym.f9882a;
        for (int i3 = 0; i3 < i2; i3++) {
            i = (i * 31) + this.g[i3];
        }
        return i;
    }
}
