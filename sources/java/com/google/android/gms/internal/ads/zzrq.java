package com.google.android.gms.internal.ads;

import android.media.AudioDeviceInfo;
import android.media.AudioRouting;
import android.media.AudioRouting$OnRoutingChangedListener;
import android.media.AudioTrack;
import android.os.Handler;
import androidx.annotation.RequiresApi;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi
/* loaded from: classes.dex */
public final class zzrq {

    /* renamed from: a, reason: collision with root package name */
    public final AudioTrack f9222a;
    public final Handler b;

    /* renamed from: c, reason: collision with root package name */
    public AudioRouting$OnRoutingChangedListener f9223c;
    public final zzsd d;

    public /* synthetic */ zzrq(AudioTrack audioTrack, zzsd zzsdVar) {
        this.f9222a = audioTrack;
        this.d = zzsdVar;
        Handler n = zzfj.n();
        this.b = n;
        AudioRouting$OnRoutingChangedListener audioRouting$OnRoutingChangedListener = new AudioRouting$OnRoutingChangedListener() { // from class: com.google.android.gms.internal.ads.zzrp
            public final /* synthetic */ void onRoutingChanged(final AudioRouting audioRouting) {
                final zzrq zzrqVar = zzrq.this;
                if (zzrqVar.f9223c == null) {
                    return;
                }
                zzdh.a().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzrn
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzrq.this.a(audioRouting);
                    }
                });
            }
        };
        this.f9223c = audioRouting$OnRoutingChangedListener;
        audioTrack.addOnRoutingChangedListener(audioRouting$OnRoutingChangedListener, n);
    }

    public final /* synthetic */ void a(AudioRouting audioRouting) {
        final AudioDeviceInfo routedDevice = audioRouting.getRoutedDevice();
        if (routedDevice != null) {
            this.b.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzro
                @Override // java.lang.Runnable
                public final void run() {
                    zzpu zzpuVar;
                    zzrq zzrqVar = zzrq.this;
                    if (zzrqVar.f9223c != null && (zzpuVar = zzrqVar.d.f9240a.f) != null) {
                        AudioDeviceInfo audioDeviceInfo = zzpuVar.h;
                        AudioDeviceInfo audioDeviceInfo2 = routedDevice;
                        if (!audioDeviceInfo2.equals(audioDeviceInfo)) {
                            zzpuVar.h = audioDeviceInfo2;
                            zzpuVar.a(zzpp.a(zzpuVar.f9173a, zzpuVar.i, audioDeviceInfo2));
                        }
                    }
                }
            });
        }
    }

    public final /* synthetic */ void b() {
        AudioRouting$OnRoutingChangedListener audioRouting$OnRoutingChangedListener = this.f9223c;
        audioRouting$OnRoutingChangedListener.getClass();
        this.f9222a.removeOnRoutingChangedListener(audioRouting$OnRoutingChangedListener);
        this.f9223c = null;
    }
}
