package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.view.Surface;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public interface zzug {
    void a(Bundle bundle);

    void b(Runnable runnable);

    void c(Surface surface);

    int d(MediaCodec.BufferInfo bufferInfo);

    ByteBuffer e(int i);

    void f(int i);

    void g(int i, zzie zzieVar, long j, int i2);

    void h(int i, int i2, long j, int i3);

    boolean i(zzuf zzufVar);

    void j(int i, long j);

    ByteBuffer n(int i);

    void zzc(int i);

    int zze();

    MediaFormat zzg();

    void zzk();

    void zzl();

    void zzo();
}
