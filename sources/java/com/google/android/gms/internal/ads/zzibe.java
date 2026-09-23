package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class zzibe {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f8915a = Charset.forName("UTF-8");
    public static final byte[] b;

    /* renamed from: c, reason: collision with root package name */
    public static final ByteBuffer f8916c;

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        b = bArr;
        f8916c = ByteBuffer.wrap(bArr);
        zzhzq.d(bArr, 0, 0);
    }
}
