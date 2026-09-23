package com.google.android.gms.ads.internal.overlay;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzgoq;
import com.google.android.gms.internal.ads.zzgor;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzx implements zzgor {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzz f3067a;

    public zzx(zzz zzzVar) {
        this.f3067a = zzzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgor
    public final void a(zzgoq zzgoqVar) {
        zzz zzzVar = this.f3067a;
        zzzVar.getClass();
        if (!TextUtils.isEmpty(zzgoqVar.b())) {
            if (!((Boolean) zzbd.zzc().a(zzbgk.Qc)).booleanValue()) {
                zzzVar.f3069a = zzgoqVar.b();
            }
        }
        switch (zzgoqVar.a()) {
            case 8152:
                zzcdo.f.execute(new zzy(zzzVar, "onLMDOverlayOpened", new HashMap()));
                return;
            case 8153:
                zzcdo.f.execute(new zzy(zzzVar, "onLMDOverlayClicked", new HashMap()));
                return;
            case 8154:
            case 8156:
            case 8158:
            case 8159:
            default:
                return;
            case 8155:
                zzcdo.f.execute(new zzy(zzzVar, "onLMDOverlayClose", new HashMap()));
                return;
            case 8157:
                zzzVar.f3069a = null;
                zzzVar.b = null;
                zzzVar.e = false;
                return;
            case 8160:
            case 8161:
            case 8162:
                HashMap hashMap = new HashMap();
                hashMap.put("error", String.valueOf(zzgoqVar.a()));
                zzcdo.f.execute(new zzy(zzzVar, "onLMDOverlayFailedToOpen", hashMap));
                return;
        }
    }
}
