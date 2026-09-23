package com.google.android.gms.internal.fido;

import kotlin.UByte;

/* loaded from: classes3.dex */
final class zzgc extends zzge {
    public final char[] e;

    public zzgc(zzgb zzgbVar) {
        super(zzgbVar, (Character) null);
        this.e = new char[512];
        char[] cArr = zzgbVar.b;
        if (cArr.length == 16) {
            for (int i = 0; i < 256; i++) {
                char[] cArr2 = this.e;
                cArr2[i] = cArr[i >>> 4];
                cArr2[i | 256] = cArr[i & 15];
            }
            return;
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.fido.zzge, com.google.android.gms.internal.fido.zzgf
    public final void a(StringBuilder sb, byte[] bArr, int i) {
        zzbm.b(0, i, bArr.length);
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = bArr[i2] & UByte.MAX_VALUE;
            char[] cArr = this.e;
            sb.append(cArr[i3]);
            sb.append(cArr[i3 | 256]);
        }
    }

    @Override // com.google.android.gms.internal.fido.zzge
    public final zzgf d(zzgb zzgbVar, Character ch) {
        return new zzgc(zzgbVar);
    }
}
