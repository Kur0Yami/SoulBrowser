package com.google.android.gms.internal.play_billing;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class zzgb {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f11506a = Charset.forName("UTF-8");
    public static final byte[] b;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.play_billing.zzew, java.lang.Object] */
    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        b = bArr;
        ByteBuffer.wrap(bArr);
        ?? obj = new Object();
        try {
            int i = obj.f11492a;
            if (i > 0) {
                obj.f11492a = i;
            } else {
                obj.f11492a = 0;
            }
        } catch (zzgd e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static int a(byte[] bArr, int i, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }
}
