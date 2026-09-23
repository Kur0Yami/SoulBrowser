package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Base64;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;

/* loaded from: classes.dex */
public final class zzgz extends zzgt {
    public zzhf e;
    public byte[] f;
    public int g;
    public int h;

    @Override // com.google.android.gms.internal.ads.zzhb
    public final long a(zzhf zzhfVar) {
        d(zzhfVar);
        this.e = zzhfVar;
        Uri normalizeScheme = zzhfVar.f8483a.normalizeScheme();
        String scheme = normalizeScheme.getScheme();
        zzgqa.e("Unsupported scheme: %s", scheme, "data".equals(scheme));
        String schemeSpecificPart = normalizeScheme.getSchemeSpecificPart();
        String str = zzfj.f7405a;
        String[] split2 = schemeSpecificPart.split(",", -1);
        if (split2.length == 2) {
            String str2 = split2[1];
            if (split2[0].contains(";base64")) {
                try {
                    this.f = Base64.decode(str2, 0);
                } catch (IllegalArgumentException e) {
                    throw new zzat("Error while parsing Base64 encoded string: ".concat(String.valueOf(str2)), e, true, 0);
                }
            } else {
                this.f = URLDecoder.decode(str2, StandardCharsets.US_ASCII.name()).getBytes(StandardCharsets.UTF_8);
            }
            long j = zzhfVar.f8484c;
            int length = this.f.length;
            if (j <= length) {
                int i = (int) j;
                this.g = i;
                int i2 = length - i;
                this.h = i2;
                long j2 = zzhfVar.d;
                if (j2 != -1) {
                    this.h = (int) Math.min(i2, j2);
                }
                e(zzhfVar);
                if (j2 != -1) {
                    return j2;
                }
                return this.h;
            }
            this.f = null;
            throw new zzhc();
        }
        throw new zzat("Unexpected URI format: ".concat(String.valueOf(normalizeScheme)), null, true, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzj
    public final int b(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.h;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        byte[] bArr2 = this.f;
        String str = zzfj.f7405a;
        System.arraycopy(bArr2, this.g, bArr, i, min);
        this.g += min;
        this.h -= min;
        f(min);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final Uri zzc() {
        zzhf zzhfVar = this.e;
        if (zzhfVar != null) {
            return zzhfVar.f8483a;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zzd() {
        if (this.f != null) {
            this.f = null;
            g();
        }
        this.e = null;
    }
}
