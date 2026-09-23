package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class zzhjf {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhxc f8592a = zzhxc.a(new byte[0]);

    public static final zzhxc a(int i) {
        return zzhxc.a(ByteBuffer.allocate(5).put((byte) 0).putInt(i).array());
    }

    public static final zzhxc b(int i) {
        return zzhxc.a(ByteBuffer.allocate(5).put((byte) 1).putInt(i).array());
    }
}
