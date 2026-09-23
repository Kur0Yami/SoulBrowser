package com.google.android.gms.internal.auth;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class zzfa {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f9540a;
    public static final byte[] b;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.auth.zzeh, java.lang.Object] */
    static {
        Charset.forName("US-ASCII");
        f9540a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        b = bArr;
        ByteBuffer.wrap(bArr);
        ?? obj = new Object();
        try {
            int i = obj.f9534a;
            if (i > 0) {
                obj.f9534a = i;
            } else {
                obj.f9534a = 0;
            }
        } catch (zzfb e) {
            throw new IllegalArgumentException(e);
        }
    }
}
