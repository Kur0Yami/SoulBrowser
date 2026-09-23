package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;

/* loaded from: classes.dex */
public final class zzcfo implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: c, reason: collision with root package name */
    public final AudioManager f5110c;
    public final zzceq f;
    public boolean g;
    public boolean h;
    public boolean i;
    public float j = 1.0f;

    public zzcfo(Context context, zzceq zzceqVar) {
        this.f5110c = (AudioManager) context.getSystemService("audio");
        this.f = zzceqVar;
    }

    public final void a() {
        boolean z = this.h;
        zzceq zzceqVar = this.f;
        boolean z2 = false;
        AudioManager audioManager = this.f5110c;
        if (z && !this.i && this.j > 0.0f) {
            if (!this.g) {
                if (audioManager != null) {
                    if (audioManager.requestAudioFocus(this, 3, 2) == 1) {
                        z2 = true;
                    }
                    this.g = z2;
                }
                zzceqVar.zzq();
                return;
            }
            return;
        }
        if (this.g) {
            if (audioManager != null) {
                if (audioManager.abandonAudioFocus(this) == 0) {
                    z2 = true;
                }
                this.g = z2;
            }
            zzceqVar.zzq();
        }
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        boolean z;
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        this.g = z;
        this.f.zzq();
    }
}
