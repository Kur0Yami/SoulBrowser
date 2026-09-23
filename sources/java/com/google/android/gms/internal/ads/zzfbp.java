package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfbp implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final JSONObject f7198a;

    public zzfbp(Context context) {
        this.f7198a = zzbyw.b(context, VersionInfoParcel.forPackage());
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.od)).booleanValue()) {
            return zzgym.a(zzfbn.f7196a);
        }
        return zzgym.a(new zzezv() { // from class: com.google.android.gms.internal.ads.zzfbo
            @Override // com.google.android.gms.internal.ads.zzezv
            public final /* synthetic */ void a(Object obj) {
            }

            @Override // com.google.android.gms.internal.ads.zzezv
            public final /* synthetic */ void zza(Object obj) {
                try {
                    ((JSONObject) obj).put("gms_sdk_env", zzfbp.this.f7198a);
                } catch (JSONException unused) {
                    com.google.android.gms.ads.internal.util.zze.zza("Failed putting version constants.");
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 46;
    }
}
