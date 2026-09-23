package com.google.android.gms.internal.measurement;

/* loaded from: classes3.dex */
final class zzjg extends zzjj {

    /* renamed from: c, reason: collision with root package name */
    public final int f10377c;

    public zzjg(byte[] bArr, int i) {
        int length = bArr.length;
        if (((length - i) | i) >= 0) {
            this.f10377c = 0;
            return;
        }
        throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i)));
    }
}
