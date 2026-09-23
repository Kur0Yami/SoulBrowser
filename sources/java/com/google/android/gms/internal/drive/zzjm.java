package com.google.android.gms.internal.drive;

import com.google.android.gms.internal.drive.zzjr;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
class zzjm extends zzjl {
    public final byte[] h;

    public zzjm(byte[] bArr) {
        this.f10202c = 0;
        bArr.getClass();
        this.h = bArr;
    }

    @Override // com.google.android.gms.internal.drive.zzjc
    public final int a(int i, int i2) {
        int p = p();
        Charset charset = zzkm.f10222a;
        for (int i3 = p; i3 < p + i2; i3++) {
            i = (i * 31) + this.h[i3];
        }
        return i;
    }

    @Override // com.google.android.gms.internal.drive.zzjc
    public final String c(Charset charset) {
        return new String(this.h, p(), size(), charset);
    }

    @Override // com.google.android.gms.internal.drive.zzjc
    public final boolean equals(Object obj) {
        if (obj != this) {
            if ((obj instanceof zzjc) && size() == ((zzjc) obj).size()) {
                if (size() != 0) {
                    if (obj instanceof zzjm) {
                        zzjm zzjmVar = (zzjm) obj;
                        int i = this.f10202c;
                        int i2 = zzjmVar.f10202c;
                        if (i == 0 || i2 == 0 || i == i2) {
                            int size = size();
                            if (size <= zzjmVar.size()) {
                                if (size <= zzjmVar.size()) {
                                    byte[] bArr = zzjmVar.h;
                                    int p = p() + size;
                                    int p2 = p();
                                    int p3 = zzjmVar.p();
                                    while (p2 < p) {
                                        if (this.h[p2] != bArr[p3]) {
                                            return false;
                                        }
                                        p2++;
                                        p3++;
                                    }
                                    return true;
                                }
                                int size2 = zzjmVar.size();
                                StringBuilder sb = new StringBuilder(59);
                                sb.append("Ran off end of other: 0, ");
                                sb.append(size);
                                sb.append(", ");
                                sb.append(size2);
                                throw new IllegalArgumentException(sb.toString());
                            }
                            int size3 = size();
                            StringBuilder sb2 = new StringBuilder(40);
                            sb2.append("Length too large: ");
                            sb2.append(size);
                            sb2.append(size3);
                            throw new IllegalArgumentException(sb2.toString());
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

    @Override // com.google.android.gms.internal.drive.zzjc
    public final void g(zzjb zzjbVar) {
        ((zzjr.zza) zzjbVar).D(this.h, p(), size());
    }

    @Override // com.google.android.gms.internal.drive.zzjc
    public final boolean i() {
        int p = p();
        if (zznf.f10262a.b(this.h, p, size() + p) == 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.drive.zzjc
    public byte k(int i) {
        return this.h[i];
    }

    @Override // com.google.android.gms.internal.drive.zzjc
    public byte m(int i) {
        return this.h[i];
    }

    public int p() {
        return 0;
    }

    @Override // com.google.android.gms.internal.drive.zzjc
    public int size() {
        return this.h.length;
    }
}
