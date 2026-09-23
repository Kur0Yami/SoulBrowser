package com.google.android.gms.internal.consent_sdk;

import androidx.work.impl.workers.a;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zzpk extends zzpj {
    public final byte[] g;

    public zzpk(byte[] bArr) {
        this.f10073c = 0;
        bArr.getClass();
        this.g = bArr;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpm
    public byte a(int i) {
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpm
    public byte c(int i) {
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpm
    public int g() {
        return this.g.length;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpm
    public final int i(int i, int i2) {
        Charset charset = zzqs.f10085a;
        for (int i3 = 0; i3 < i2; i3++) {
            i = (i * 31) + this.g[i3];
        }
        return i;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpm
    public final zzpm k() {
        zzpm.d(g());
        byte[] bArr = this.g;
        zzpk zzpkVar = new zzpk(bArr);
        zzpm.d(bArr.length);
        return zzpkVar;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpm
    public final void m(zzpv zzpvVar) {
        zzpvVar.a(this.g, g());
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpm
    public final boolean p(zzpm zzpmVar) {
        if (zzpmVar instanceof zzpk) {
            int g = g();
            if (g <= zzpmVar.g()) {
                if (g <= zzpmVar.g()) {
                    byte[] bArr = ((zzpk) zzpmVar).g;
                    int i = 0;
                    int i2 = 0;
                    while (i < g) {
                        if (this.g[i] != bArr[i2]) {
                            return false;
                        }
                        i++;
                        i2++;
                    }
                    return true;
                }
                throw new IllegalArgumentException(a.s("Ran off end of other: 0, ", g, zzpmVar.g(), ", "));
            }
            throw new IllegalArgumentException("Length too large: " + g + g());
        }
        return zzpmVar.p(this);
    }
}
