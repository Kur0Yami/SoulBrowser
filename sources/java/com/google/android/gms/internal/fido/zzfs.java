package com.google.android.gms.internal.fido;

import java.io.Serializable;
import kotlin.UByte;

/* loaded from: classes3.dex */
final class zzfs extends zzft implements Serializable {
    public final byte[] f;

    public zzfs(byte[] bArr) {
        bArr.getClass();
        this.f = bArr;
    }

    @Override // com.google.android.gms.internal.fido.zzft
    public final int a() {
        byte[] bArr = this.f;
        int length = bArr.length;
        if (length >= 4) {
            return ((bArr[3] & UByte.MAX_VALUE) << 24) | (bArr[0] & UByte.MAX_VALUE) | ((bArr[1] & UByte.MAX_VALUE) << 8) | ((bArr[2] & UByte.MAX_VALUE) << 16);
        }
        throw new IllegalStateException(zzbo.a("HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", Integer.valueOf(length)));
    }

    @Override // com.google.android.gms.internal.fido.zzft
    public final int b() {
        return this.f.length * 8;
    }

    @Override // com.google.android.gms.internal.fido.zzft
    public final boolean c(zzft zzftVar) {
        boolean z;
        int length = zzftVar.e().length;
        byte[] bArr = this.f;
        if (bArr.length != length) {
            return false;
        }
        boolean z2 = true;
        for (int i = 0; i < bArr.length; i++) {
            if (bArr[i] == zzftVar.e()[i]) {
                z = true;
            } else {
                z = false;
            }
            z2 &= z;
        }
        return z2;
    }

    @Override // com.google.android.gms.internal.fido.zzft
    public final byte[] d() {
        return (byte[]) this.f.clone();
    }

    @Override // com.google.android.gms.internal.fido.zzft
    public final byte[] e() {
        return this.f;
    }
}
