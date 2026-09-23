package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import androidx.annotation.RequiresApi;

@RequiresApi
/* loaded from: classes.dex */
final class zzid {

    /* renamed from: a, reason: collision with root package name */
    public final MediaCodec.CryptoInfo f8947a;
    public final MediaCodec.CryptoInfo.Pattern b = d.a();

    public final /* synthetic */ void a(int i, int i2) {
        MediaCodec.CryptoInfo.Pattern pattern = this.b;
        pattern.set(i, i2);
        this.f8947a.setPattern(pattern);
    }
}
