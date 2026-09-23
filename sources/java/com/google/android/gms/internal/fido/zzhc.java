package com.google.android.gms.internal.fido;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class zzhc {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f10326a;

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.fido.zzgz] */
    static {
        Charset.forName("US-ASCII");
        Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f10326a = bArr;
        ByteBuffer.wrap(bArr);
        ?? obj = new Object();
        try {
            int i = obj.f10324a;
            if (i > 0) {
                obj.f10324a = i;
            } else {
                obj.f10324a = 0;
            }
        } catch (zzhd e) {
            throw new IllegalArgumentException(e);
        }
    }
}
