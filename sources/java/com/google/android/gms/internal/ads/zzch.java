package com.google.android.gms.internal.ads;

import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzch {

    /* renamed from: a, reason: collision with root package name */
    public final AudioManager.OnAudioFocusChangeListener f5144a;
    public final Handler b;

    /* renamed from: c, reason: collision with root package name */
    public final zzd f5145c;
    public final Object d;

    public zzch(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler, zzd zzdVar) {
        AudioFocusRequest audioFocusRequest;
        this.b = handler;
        this.f5145c = zzdVar;
        int i = Build.VERSION.SDK_INT;
        if (i < 26) {
            this.f5144a = new zzcg(onAudioFocusChangeListener, handler);
        } else {
            this.f5144a = onAudioFocusChangeListener;
        }
        if (i >= 26) {
            audioFocusRequest = new AudioFocusRequest.Builder(1).setAudioAttributes(zzdVar.a()).setWillPauseWhenDucked(false).setOnAudioFocusChangeListener(onAudioFocusChangeListener, handler).build();
        } else {
            audioFocusRequest = null;
        }
        this.d = audioFocusRequest;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzch)) {
            return false;
        }
        zzch zzchVar = (zzch) obj;
        if (Objects.equals(this.f5144a, zzchVar.f5144a) && Objects.equals(this.b, zzchVar.b) && Objects.equals(this.f5145c, zzchVar.f5145c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(1, this.f5144a, this.b, this.f5145c, Boolean.FALSE);
    }
}
