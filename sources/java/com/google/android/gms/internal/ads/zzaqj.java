package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* loaded from: classes.dex */
final class zzaqj implements zzaqk {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f4347a;

    public zzaqj(ByteBuffer byteBuffer) {
        this.f4347a = byteBuffer.slice();
    }

    @Override // com.google.android.gms.internal.ads.zzaqk
    public final void a(MessageDigest[] messageDigestArr, long j, int i) {
        ByteBuffer slice;
        ByteBuffer byteBuffer = this.f4347a;
        synchronized (byteBuffer) {
            int i2 = (int) j;
            byteBuffer.position(i2);
            byteBuffer.limit(i2 + i);
            slice = byteBuffer.slice();
        }
        for (MessageDigest messageDigest : messageDigestArr) {
            slice.position(0);
            messageDigest.update(slice);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqk
    public final long zza() {
        return this.f4347a.capacity();
    }
}
