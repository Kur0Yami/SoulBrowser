package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
final class zzcgf implements zziis {

    /* renamed from: c, reason: collision with root package name */
    public final ByteBuffer f5127c;

    public zzcgf(ByteBuffer byteBuffer) {
        this.f5127c = byteBuffer.duplicate();
    }

    @Override // com.google.android.gms.internal.ads.zziis
    public final ByteBuffer c(long j, long j2) {
        ByteBuffer byteBuffer = this.f5127c;
        int position = byteBuffer.position();
        byteBuffer.position((int) j);
        ByteBuffer slice = byteBuffer.slice();
        slice.limit((int) j2);
        byteBuffer.position(position);
        return slice;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.google.android.gms.internal.ads.zziis
    public final void h(long j) {
        this.f5127c.position((int) j);
    }

    @Override // com.google.android.gms.internal.ads.zziis
    public final int x0(ByteBuffer byteBuffer) {
        ByteBuffer byteBuffer2 = this.f5127c;
        if (byteBuffer2.remaining() == 0 && byteBuffer.remaining() > 0) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), byteBuffer2.remaining());
        byte[] bArr = new byte[min];
        byteBuffer2.get(bArr);
        byteBuffer.put(bArr);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zziis
    public final long zzb() {
        return this.f5127c.limit();
    }

    @Override // com.google.android.gms.internal.ads.zziis
    public final long zzc() {
        return this.f5127c.position();
    }
}
