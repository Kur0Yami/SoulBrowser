package com.google.android.gms.internal.ads;

import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;

/* loaded from: classes.dex */
final class zzaql implements zzaqk {

    /* renamed from: a, reason: collision with root package name */
    public final FileChannel f4348a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final long f4349c;

    public zzaql(FileChannel fileChannel, long j, long j2) {
        this.f4348a = fileChannel;
        this.b = j;
        this.f4349c = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzaqk
    public final void a(MessageDigest[] messageDigestArr, long j, int i) {
        MappedByteBuffer map = this.f4348a.map(FileChannel.MapMode.READ_ONLY, this.b + j, i);
        map.load();
        for (MessageDigest messageDigest : messageDigestArr) {
            map.position(0);
            messageDigest.update(map);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqk
    public final long zza() {
        return this.f4349c;
    }
}
