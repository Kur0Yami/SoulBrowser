package com.google.android.gms.internal.ads;

import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzpq extends AudioDeviceCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzpu f9169a;

    @Override // android.media.AudioDeviceCallback
    public final void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
        zzpu zzpuVar = this.f9169a;
        zzpuVar.a(zzpp.a(zzpuVar.f9173a, zzpuVar.i, zzpuVar.h));
    }

    @Override // android.media.AudioDeviceCallback
    public final void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
        zzpu zzpuVar;
        String str = zzfj.f7405a;
        int length = audioDeviceInfoArr.length;
        int i = 0;
        while (true) {
            zzpuVar = this.f9169a;
            if (i >= length) {
                break;
            }
            if (Objects.equals(audioDeviceInfoArr[i], zzpuVar.h)) {
                zzpuVar.h = null;
                break;
            }
            i++;
        }
        zzpuVar.a(zzpp.a(zzpuVar.f9173a, zzpuVar.i, zzpuVar.h));
    }
}
