package com.google.android.gms.internal.ads;

import java.io.IOException;
import kotlin.KotlinVersion;
import kotlin.UByte;

/* loaded from: classes.dex */
final class zzgvv extends zzgvx {
    public zzgvv(zzgvt zzgvtVar, Character ch) {
        super(zzgvtVar, ch);
        zzgqa.a(zzgvtVar.b.length == 64);
    }

    @Override // com.google.android.gms.internal.ads.zzgvx, com.google.android.gms.internal.ads.zzgvy
    public final void a(StringBuilder sb, byte[] bArr, int i) {
        int i2 = 0;
        zzgqa.k(0, i, bArr.length);
        for (int i3 = i; i3 >= 3; i3 -= 3) {
            int i4 = ((bArr[i2 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i2] & UByte.MAX_VALUE) << 16) | (bArr[i2 + 2] & UByte.MAX_VALUE);
            char[] cArr = this.d.b;
            sb.append(cArr[i4 >>> 18]);
            sb.append(cArr[(i4 >>> 12) & 63]);
            sb.append(cArr[(i4 >>> 6) & 63]);
            sb.append(cArr[i4 & 63]);
            i2 += 3;
        }
        if (i2 < i) {
            j(sb, bArr, i2, i - i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgvx, com.google.android.gms.internal.ads.zzgvy
    public final int b(byte[] bArr, CharSequence charSequence) {
        CharSequence e = e(charSequence);
        int length = e.length();
        zzgvt zzgvtVar = this.d;
        if (zzgvtVar.h[length % zzgvtVar.e]) {
            int i = 0;
            int i2 = 0;
            while (i < e.length()) {
                int i3 = i2 + 1;
                int a2 = (zzgvtVar.a(e.charAt(i + 1)) << 12) | (zzgvtVar.a(e.charAt(i)) << 18);
                bArr[i2] = (byte) (a2 >>> 16);
                int i4 = i + 2;
                if (i4 < e.length()) {
                    int i5 = i + 3;
                    int a3 = a2 | (zzgvtVar.a(e.charAt(i4)) << 6);
                    int i6 = i2 + 2;
                    bArr[i3] = (byte) ((a3 >>> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
                    if (i5 < e.length()) {
                        i += 4;
                        i2 += 3;
                        bArr[i6] = (byte) ((a3 | zzgvtVar.a(e.charAt(i5))) & KotlinVersion.MAX_COMPONENT_VALUE);
                    } else {
                        i2 = i6;
                        i = i5;
                    }
                } else {
                    i = i4;
                    i2 = i3;
                }
            }
            return i2;
        }
        int length2 = e.length();
        throw new IOException(androidx.work.impl.workers.a.r(length2, "Invalid input length ", new StringBuilder(String.valueOf(length2).length() + 21)));
    }

    @Override // com.google.android.gms.internal.ads.zzgvx
    public final zzgvy i(zzgvt zzgvtVar, Character ch) {
        return new zzgvv(zzgvtVar, ch);
    }

    public zzgvv(String str, String str2) {
        this(new zzgvt(str, str2.toCharArray()), (Character) '=');
    }
}
