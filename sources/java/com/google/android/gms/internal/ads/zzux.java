package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;

/* loaded from: classes.dex */
final class zzux implements zzuv {

    /* renamed from: a, reason: collision with root package name */
    public final int f9305a;
    public MediaCodecInfo[] b;

    public zzux(boolean z, boolean z2, boolean z3) {
        int i = 1;
        if (!z && !z2 && !z3) {
            i = 0;
        }
        this.f9305a = i;
    }

    @Override // com.google.android.gms.internal.ads.zzuv
    public final boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported(str);
    }

    @Override // com.google.android.gms.internal.ads.zzuv
    public final boolean b(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureRequired(str);
    }

    @Override // com.google.android.gms.internal.ads.zzuv
    public final int zza() {
        if (this.b == null) {
            this.b = new MediaCodecList(this.f9305a).getCodecInfos();
        }
        return this.b.length;
    }

    @Override // com.google.android.gms.internal.ads.zzuv
    public final MediaCodecInfo zzb(int i) {
        if (this.b == null) {
            this.b = new MediaCodecList(this.f9305a).getCodecInfos();
        }
        return this.b[i];
    }

    @Override // com.google.android.gms.internal.ads.zzuv
    public final boolean zzc() {
        return true;
    }
}
