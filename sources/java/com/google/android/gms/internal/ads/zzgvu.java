package com.google.android.gms.internal.ads;

import java.io.IOException;
import kotlin.UByte;

/* loaded from: classes.dex */
final class zzgvu extends zzgvx {
    public final char[] g;

    public zzgvu(zzgvt zzgvtVar) {
        super(zzgvtVar, (Character) null);
        boolean z;
        this.g = new char[512];
        if (zzgvtVar.b.length == 16) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        for (int i = 0; i < 256; i++) {
            char[] cArr = this.g;
            char[] cArr2 = zzgvtVar.b;
            cArr[i] = cArr2[i >>> 4];
            cArr[i | 256] = cArr2[i & 15];
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgvx, com.google.android.gms.internal.ads.zzgvy
    public final void a(StringBuilder sb, byte[] bArr, int i) {
        zzgqa.k(0, i, bArr.length);
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = bArr[i2] & UByte.MAX_VALUE;
            char[] cArr = this.g;
            sb.append(cArr[i3]);
            sb.append(cArr[i3 | 256]);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgvx, com.google.android.gms.internal.ads.zzgvy
    public final int b(byte[] bArr, CharSequence charSequence) {
        if (charSequence.length() % 2 != 1) {
            int i = 0;
            int i2 = 0;
            while (i < charSequence.length()) {
                char charAt = charSequence.charAt(i);
                zzgvt zzgvtVar = this.d;
                bArr[i2] = (byte) ((zzgvtVar.a(charAt) << 4) | zzgvtVar.a(charSequence.charAt(i + 1)));
                i += 2;
                i2++;
            }
            return i2;
        }
        int length = charSequence.length();
        throw new IOException(androidx.work.impl.workers.a.r(length, "Invalid input length ", new StringBuilder(String.valueOf(length).length() + 21)));
    }

    @Override // com.google.android.gms.internal.ads.zzgvx
    public final zzgvy i(zzgvt zzgvtVar, Character ch) {
        return new zzgvu(zzgvtVar);
    }
}
