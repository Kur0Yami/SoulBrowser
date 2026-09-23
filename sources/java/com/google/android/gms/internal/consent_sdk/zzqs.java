package com.google.android.gms.internal.consent_sdk;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class zzqs {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f10085a = Charset.forName("UTF-8");
    public static final byte[] b;

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.consent_sdk.zzpn] */
    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        b = bArr;
        ByteBuffer.wrap(bArr);
        ?? obj = new Object();
        try {
            int i = obj.f10074a;
            if (i > 0) {
                obj.f10074a = i;
            } else {
                obj.f10074a = 0;
            }
        } catch (zzqu e) {
            throw new IllegalArgumentException(e);
        }
    }
}
