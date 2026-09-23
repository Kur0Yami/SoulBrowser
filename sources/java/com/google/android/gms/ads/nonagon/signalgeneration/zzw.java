package com.google.android.gms.ads.nonagon.signalgeneration;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.ads.zzdjd;
import com.google.android.gms.internal.ads.zzdwy;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzw implements zzdjd {

    /* renamed from: c, reason: collision with root package name */
    public final zzdwy f3299c;
    public final zzv f;
    public final String g;
    public final int h;

    @VisibleForTesting
    public zzw(zzdwy zzdwyVar, zzv zzvVar, String str, int i) {
        this.f3299c = zzdwyVar;
        this.f = zzvVar;
        this.g = str;
        this.h = i;
    }

    @Override // com.google.android.gms.internal.ads.zzdjd
    public final void zzd(@Nullable zzbj zzbjVar) {
        String str;
        if (zzbjVar != null && this.h != 2) {
            boolean isEmpty = TextUtils.isEmpty(zzbjVar.zzc);
            zzdwy zzdwyVar = this.f3299c;
            zzv zzvVar = this.f;
            if (!isEmpty) {
                try {
                    str = new JSONObject(zzbjVar.zzc).optString("request_id");
                } catch (JSONException e) {
                    com.google.android.gms.ads.internal.zzt.zzh().f("RenderSignals.getRequestId", e);
                    str = null;
                }
                if (!TextUtils.isEmpty(str)) {
                    zzvVar.zza(str, zzbjVar.zzc, zzdwyVar);
                    return;
                }
                return;
            }
            zzvVar.zza(this.g, zzbjVar.zzb, zzdwyVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjd
    public final void zze(@Nullable String str) {
    }
}
