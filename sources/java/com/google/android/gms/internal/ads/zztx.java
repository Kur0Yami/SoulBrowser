package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
final class zztx extends zzih {
    public long i;
    public int j;
    public int k;

    @Override // com.google.android.gms.internal.ads.zzih
    public final void c() {
        super.c();
        this.j = 0;
    }

    public final int h() {
        return this.j;
    }

    public final boolean i() {
        return this.j > 0;
    }

    public final boolean j(zzih zzihVar) {
        ByteBuffer byteBuffer;
        zzgqa.a(!zzihVar.b(1073741824));
        zzgqa.a(!zzihVar.b(268435456));
        zzgqa.a(!zzihVar.b(4));
        if (i()) {
            if (this.j < this.k) {
                ByteBuffer byteBuffer2 = zzihVar.d;
                if (byteBuffer2 != null && (byteBuffer = this.d) != null) {
                    if (byteBuffer2.remaining() + byteBuffer.position() > 3072000) {
                        return false;
                    }
                }
            } else {
                return false;
            }
        }
        int i = this.j;
        this.j = i + 1;
        if (i == 0) {
            this.f = zzihVar.f;
            if (zzihVar.b(1)) {
                this.f8931a = 1;
            }
        }
        ByteBuffer byteBuffer3 = zzihVar.d;
        if (byteBuffer3 != null) {
            d(byteBuffer3.remaining());
            this.d.put(byteBuffer3);
        }
        this.i = zzihVar.f;
        return true;
    }
}
