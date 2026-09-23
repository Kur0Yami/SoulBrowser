package com.google.android.gms.internal.cast;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class zzym {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f9882a = Charset.forName("UTF-8");
    public static final byte[] b;

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.cast.zzxl] */
    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        b = bArr;
        ByteBuffer.wrap(bArr);
        ?? obj = new Object();
        try {
            int i = obj.f9870a;
            if (i > 0) {
                obj.f9870a = i;
            } else {
                obj.f9870a = 0;
            }
        } catch (zzyo e) {
            throw new IllegalArgumentException(e);
        }
    }
}
