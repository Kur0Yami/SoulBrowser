package com.google.android.gms.ads.nonagon.signalgeneration;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.ads.zzdjd;

/* loaded from: classes.dex */
public final class zzbl implements zzdjd {

    /* renamed from: c, reason: collision with root package name */
    public final zzb f3261c;
    public final int f;
    public final String g;

    @VisibleForTesting
    public zzbl(zzb zzbVar, int i, @Nullable String str) {
        this.f3261c = zzbVar;
        this.f = i;
        this.g = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdjd
    public final void zzd(@Nullable final zzbj zzbjVar) {
        if (zzbjVar != null && this.f == 2 && !TextUtils.isEmpty(this.g)) {
            com.google.android.gms.ads.internal.util.zzs.zzh(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbk
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzbl zzblVar = zzbl.this;
                    zzblVar.f3261c.zza(zzblVar.g, zzbjVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjd
    public final void zze(@Nullable String str) {
    }
}
