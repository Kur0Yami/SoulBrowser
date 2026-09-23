package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzcd {

    /* renamed from: a, reason: collision with root package name */
    public final zzgqs f5051a;
    public final Handler b;

    /* renamed from: c, reason: collision with root package name */
    public zzcc f5052c;
    public zzd d;
    public int f;
    public zzch h;
    public float g = 1.0f;
    public int e = 0;

    public zzcd(final Context context, Looper looper, zzcc zzccVar) {
        this.f5051a = zzgqw.a(new zzgqs() { // from class: com.google.android.gms.internal.ads.zzcb
            @Override // com.google.android.gms.internal.ads.zzgqs
            public final /* synthetic */ Object zza() {
                return zzcj.a(context);
            }
        });
        this.f5052c = zzccVar;
        this.b = new Handler(looper);
    }

    public final void a(zzd zzdVar) {
        int i;
        if (!Objects.equals(this.d, zzdVar)) {
            this.d = zzdVar;
            if (zzdVar == null) {
                i = 0;
            } else {
                i = 1;
            }
            this.f = i;
        }
    }

    /* JADX WARN: Type inference failed for: r8v10, types: [java.lang.Object, com.google.android.gms.internal.ads.zzce] */
    public final int b(int i, boolean z) {
        int requestAudioFocus;
        if (i != 1 && this.f == 1) {
            if (z) {
                if (this.e != 2) {
                    if (this.h == null) {
                        ?? obj = new Object();
                        obj.f5075a = zzd.b;
                        zzd zzdVar = this.d;
                        zzdVar.getClass();
                        obj.f5075a = zzdVar;
                        AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.google.android.gms.internal.ads.zzca
                            @Override // android.media.AudioManager.OnAudioFocusChangeListener
                            public final void onAudioFocusChange(int i2) {
                                zzcd zzcdVar = zzcd.this;
                                zzcdVar.getClass();
                                if (i2 != -3 && i2 != -2) {
                                    if (i2 != -1) {
                                        if (i2 != 1) {
                                            a.i(new StringBuilder(String.valueOf(i2).length() + 27), "Unknown focus change type: ", i2, "AudioFocusManager");
                                            return;
                                        }
                                        zzcdVar.e(2);
                                        zzcc zzccVar = zzcdVar.f5052c;
                                        if (zzccVar != null) {
                                            ((zzfd) ((zzlc) zzccVar).l.zze(33, 1, 0)).a();
                                            return;
                                        }
                                        return;
                                    }
                                    zzcc zzccVar2 = zzcdVar.f5052c;
                                    if (zzccVar2 != null) {
                                        ((zzfd) ((zzlc) zzccVar2).l.zze(33, -1, 0)).a();
                                    }
                                    zzcdVar.d();
                                    zzcdVar.e(1);
                                    return;
                                }
                                if (i2 != -2) {
                                    zzcdVar.e(4);
                                    return;
                                }
                                zzcc zzccVar3 = zzcdVar.f5052c;
                                if (zzccVar3 != null) {
                                    ((zzfd) ((zzlc) zzccVar3).l.zze(33, 0, 0)).a();
                                }
                                zzcdVar.e(3);
                            }
                        };
                        Handler handler = this.b;
                        handler.getClass();
                        this.h = new zzch(onAudioFocusChangeListener, handler, obj.f5075a);
                    }
                    AudioManager audioManager = (AudioManager) this.f5051a.zza();
                    zzch zzchVar = this.h;
                    if (Build.VERSION.SDK_INT >= 26) {
                        Object obj2 = zzchVar.d;
                        obj2.getClass();
                        requestAudioFocus = audioManager.requestAudioFocus(androidx.privacysandbox.ads.adservices.topics.a.g(obj2));
                    } else {
                        requestAudioFocus = audioManager.requestAudioFocus(zzchVar.f5144a, 3, 1);
                    }
                    if (requestAudioFocus == 1) {
                        e(2);
                        return 1;
                    }
                    e(1);
                    return -1;
                }
            } else {
                int i2 = this.e;
                if (i2 == 1) {
                    return -1;
                }
                if (i2 == 3) {
                    return 0;
                }
            }
            return 1;
        }
        d();
        e(0);
        return 1;
    }

    public final void c() {
        this.f5052c = null;
        d();
        e(0);
    }

    public final void d() {
        int i = this.e;
        if (i != 1 && i != 0 && this.h != null) {
            AudioManager audioManager = (AudioManager) this.f5051a.zza();
            zzch zzchVar = this.h;
            if (Build.VERSION.SDK_INT >= 26) {
                Object obj = zzchVar.d;
                obj.getClass();
                audioManager.abandonAudioFocusRequest(androidx.privacysandbox.ads.adservices.topics.a.g(obj));
                return;
            }
            audioManager.abandonAudioFocus(zzchVar.f5144a);
        }
    }

    public final void e(int i) {
        float f;
        if (this.e != i) {
            this.e = i;
            if (i == 4) {
                f = 0.2f;
            } else {
                f = 1.0f;
            }
            if (this.g != f) {
                this.g = f;
                zzcc zzccVar = this.f5052c;
                if (zzccVar != null) {
                    ((zzlc) zzccVar).l.e(34);
                }
            }
        }
    }
}
