package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class zzkk {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f10385a;
    public static final byte[] b;

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.measurement.zzjd] */
    static {
        Charset.forName("US-ASCII");
        f10385a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        b = bArr;
        ByteBuffer.wrap(bArr);
        ?? obj = new Object();
        try {
            int i = obj.f10376a;
            if (i > 0) {
                obj.f10376a = i;
            } else {
                obj.f10376a = 0;
            }
        } catch (zzkm e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static int a(long j) {
        return (int) (j ^ (j >>> 32));
    }
}
