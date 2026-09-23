package com.google.android.gms.internal.drive;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class zzkm {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f10222a = Charset.forName("UTF-8");
    public static final byte[] b;

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.drive.zzjq] */
    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        b = bArr;
        ByteBuffer.wrap(bArr);
        ?? obj = new Object();
        obj.f10206c = Integer.MAX_VALUE;
        obj.f10205a = 0;
        try {
            obj.a(0);
        } catch (zzkq e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static int a(long j) {
        return (int) (j ^ (j >>> 32));
    }
}
