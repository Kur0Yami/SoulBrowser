package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzetv implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f6933a;
    public final Context b;

    public zzetv(Context context, zzgyw zzgywVar) {
        this.f6933a = zzgywVar;
        this.b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.f6933a.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzetu
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                int i;
                int i2;
                AudioManager audioManager = (AudioManager) zzetv.this.b.getSystemService("audio");
                float zzb = com.google.android.gms.ads.internal.zzt.zzi().zzb();
                boolean zzd = com.google.android.gms.ads.internal.zzt.zzi().zzd();
                if (audioManager == null) {
                    return new zzetw(-1, false, false, -1, -1, -1, -1, -1, zzb, zzd, true);
                }
                int mode = audioManager.getMode();
                boolean isMusicActive = audioManager.isMusicActive();
                boolean isSpeakerphoneOn = audioManager.isSpeakerphoneOn();
                int streamVolume = audioManager.getStreamVolume(3);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.qc)).booleanValue()) {
                    int zzk = com.google.android.gms.ads.internal.zzt.zzf().zzk(audioManager);
                    i2 = audioManager.getStreamMaxVolume(3);
                    i = zzk;
                } else {
                    i = -1;
                    i2 = -1;
                }
                return new zzetw(mode, isMusicActive, isSpeakerphoneOn, streamVolume, i, i2, audioManager.getRingerMode(), audioManager.getStreamVolume(2), zzb, zzd, false);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 13;
    }
}
