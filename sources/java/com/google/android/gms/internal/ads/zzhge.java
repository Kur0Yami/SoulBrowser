package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import javax.crypto.AEADBadTagException;

/* loaded from: classes.dex */
abstract class zzhge {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgc f8519a;
    public final zzhgc b;

    public zzhge(byte[] bArr) {
        if (zzhhb.a(1)) {
            this.f8519a = a(bArr, 1);
            this.b = a(bArr, 0);
            return;
        }
        throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
    }

    public abstract zzhgc a(byte[] bArr, int i);

    public final byte[] b(ByteBuffer byteBuffer, byte[] bArr, byte[] bArr2) {
        int i;
        int i2;
        if (byteBuffer.remaining() >= 16) {
            int position = byteBuffer.position();
            byte[] bArr3 = new byte[16];
            byteBuffer.position(byteBuffer.limit() - 16);
            byteBuffer.get(bArr3);
            byteBuffer.position(position);
            byteBuffer.limit(byteBuffer.limit() - 16);
            if (bArr2 == null) {
                bArr2 = new byte[0];
            }
            try {
                byte[] bArr4 = new byte[32];
                this.b.c(bArr, 0).get(bArr4);
                int length = bArr2.length;
                int i3 = length & 15;
                if (i3 == 0) {
                    i = length;
                } else {
                    i = (length + 16) - i3;
                }
                int remaining = byteBuffer.remaining();
                int i4 = remaining % 16;
                if (i4 == 0) {
                    i2 = remaining;
                } else {
                    i2 = (remaining + 16) - i4;
                }
                int i5 = i2 + i;
                ByteBuffer order = ByteBuffer.allocate(i5 + 16).order(ByteOrder.LITTLE_ENDIAN);
                order.put(bArr2);
                order.position(i);
                order.put(byteBuffer);
                order.position(i5);
                order.putLong(length);
                order.putLong(remaining);
                if (MessageDigest.isEqual(zzhgi.a(bArr4, order.array()), bArr3)) {
                    byteBuffer.position(position);
                    zzhgc zzhgcVar = this.f8519a;
                    zzhgcVar.getClass();
                    ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.remaining());
                    if (bArr.length == zzhgcVar.b()) {
                        int remaining2 = byteBuffer.remaining();
                        int i6 = remaining2 / 64;
                        for (int i7 = 0; i7 < i6 + 1; i7++) {
                            ByteBuffer c2 = zzhgcVar.c(bArr, zzhgcVar.b + i7);
                            if (i7 == i6) {
                                zzhvp.c(allocate, byteBuffer, c2, remaining2 % 64);
                            } else {
                                zzhvp.c(allocate, byteBuffer, c2, 64);
                            }
                        }
                        return allocate.array();
                    }
                    int b = zzhgcVar.b();
                    throw new GeneralSecurityException(androidx.work.impl.workers.a.r(b, "The nonce length (in bytes) must be ", new StringBuilder(String.valueOf(b).length() + 36)));
                }
                throw new GeneralSecurityException("invalid MAC");
            } catch (GeneralSecurityException e) {
                throw new AEADBadTagException(e.toString());
            }
        }
        throw new GeneralSecurityException("ciphertext too short");
    }
}
