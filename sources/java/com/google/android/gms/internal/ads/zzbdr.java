package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import kotlin.KotlinVersion;

/* loaded from: classes.dex */
public final class zzbdr extends zzbdm {

    /* renamed from: c, reason: collision with root package name */
    public MessageDigest f4578c;

    public final byte[] b(String str) {
        byte[] bArr;
        byte[] bArr2;
        String[] split2 = str.split(" ");
        int length = split2.length;
        int i = 4;
        if (length == 1) {
            int a2 = zzbdq.a(split2[0]);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(a2);
            bArr2 = allocate.array();
        } else {
            if (length < 5) {
                bArr = new byte[length + length];
                for (int i2 = 0; i2 < split2.length; i2++) {
                    int a3 = zzbdq.a(split2[i2]);
                    int i3 = (a3 >> 16) ^ ((char) a3);
                    byte b = (byte) i3;
                    byte b2 = (byte) (i3 >> 8);
                    int i4 = i2 + i2;
                    bArr[i4] = new byte[]{b, b2}[0];
                    bArr[i4 + 1] = b2;
                }
            } else {
                bArr = new byte[length];
                for (int i5 = 0; i5 < split2.length; i5++) {
                    int a4 = zzbdq.a(split2[i5]);
                    bArr[i5] = (byte) ((a4 >> 24) ^ (((a4 & KotlinVersion.MAX_COMPONENT_VALUE) ^ ((a4 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE)) ^ ((a4 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE)));
                }
            }
            bArr2 = bArr;
        }
        this.f4578c = a();
        synchronized (this.f4575a) {
            try {
                MessageDigest messageDigest = this.f4578c;
                if (messageDigest == null) {
                    return new byte[0];
                }
                messageDigest.reset();
                this.f4578c.update(bArr2);
                byte[] digest = this.f4578c.digest();
                int length2 = digest.length;
                if (length2 <= 4) {
                    i = length2;
                }
                byte[] bArr3 = new byte[i];
                System.arraycopy(digest, 0, bArr3, 0, i);
                return bArr3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
