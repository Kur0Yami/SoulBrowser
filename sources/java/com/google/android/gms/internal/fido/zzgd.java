package com.google.android.gms.internal.fido;

import kotlin.UByte;

/* loaded from: classes3.dex */
final class zzgd extends zzge {
    public zzgd(zzgb zzgbVar, Character ch) {
        super(zzgbVar, ch);
        if (zzgbVar.b.length != 64) {
            throw new IllegalArgumentException();
        }
    }

    @Override // com.google.android.gms.internal.fido.zzge, com.google.android.gms.internal.fido.zzgf
    public final void a(StringBuilder sb, byte[] bArr, int i) {
        int i2 = 0;
        zzbm.b(0, i, bArr.length);
        for (int i3 = i; i3 >= 3; i3 -= 3) {
            int i4 = ((bArr[i2 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i2] & UByte.MAX_VALUE) << 16) | (bArr[i2 + 2] & UByte.MAX_VALUE);
            zzgb zzgbVar = this.b;
            char[] cArr = zzgbVar.b;
            char[] cArr2 = zzgbVar.b;
            sb.append(cArr[i4 >>> 18]);
            sb.append(cArr2[(i4 >>> 12) & 63]);
            sb.append(cArr2[(i4 >>> 6) & 63]);
            sb.append(cArr2[i4 & 63]);
            i2 += 3;
        }
        if (i2 < i) {
            e(sb, bArr, i2, i - i2);
        }
    }

    @Override // com.google.android.gms.internal.fido.zzge
    public final zzgf d(zzgb zzgbVar, Character ch) {
        return new zzgd(zzgbVar, ch);
    }

    public zzgd(String str, String str2) {
        this(new zzgb(str, str2.toCharArray()), (Character) '=');
    }
}
