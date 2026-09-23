package com.google.android.gms.internal.ads;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import javax.annotation.ParametersAreNonnullByDefault;
import kotlin.UByte;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzbdu extends zzbdm {

    /* renamed from: c, reason: collision with root package name */
    public MessageDigest f4581c;
    public final int d;
    public final int e;

    public zzbdu(int i) {
        int i2 = i >> 3;
        this.d = (i & 7) > 0 ? i2 + 1 : i2;
        this.e = i;
    }

    public final byte[] b(String str) {
        synchronized (this.f4575a) {
            try {
                MessageDigest a2 = a();
                this.f4581c = a2;
                if (a2 == null) {
                    return new byte[0];
                }
                a2.reset();
                this.f4581c.update(str.getBytes(StandardCharsets.UTF_8));
                byte[] digest = this.f4581c.digest();
                int length = digest.length;
                int i = this.d;
                if (length > i) {
                    length = i;
                }
                byte[] bArr = new byte[length];
                System.arraycopy(digest, 0, bArr, 0, length);
                int i2 = this.e & 7;
                if (i2 > 0) {
                    long j = 0;
                    for (int i3 = 0; i3 < length; i3++) {
                        if (i3 > 0) {
                            j <<= 8;
                        }
                        j += bArr[i3] & UByte.MAX_VALUE;
                    }
                    long j2 = j >>> (8 - i2);
                    while (true) {
                        i--;
                        if (i < 0) {
                            break;
                        }
                        bArr[i] = (byte) (255 & j2);
                        j2 >>>= 8;
                    }
                }
                return bArr;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
