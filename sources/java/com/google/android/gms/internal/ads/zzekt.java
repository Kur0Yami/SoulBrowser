package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzekt implements zzejg {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6611a;
    public final zzdkz b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f6612c;
    public final zzfhq d;
    public final zzdxe e;

    public zzekt(Context context, Executor executor, zzdkz zzdkzVar, zzfhq zzfhqVar, zzdxe zzdxeVar) {
        this.f6611a = context;
        this.b = zzdkzVar;
        this.f6612c = executor;
        this.d = zzfhqVar;
        this.e = zzdxeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzejg
    public final ListenableFuture a(final zzfic zzficVar, final zzfhr zzfhrVar) {
        String str;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.we)).booleanValue()) {
            zzdxd a2 = this.e.a();
            a2.b("action", "cstm_tbs_rndr");
            a2.c();
        }
        Uri uri = null;
        try {
            str = zzfhrVar.v.getString("tab_url");
        } catch (Exception unused) {
            str = null;
        }
        if (str != null) {
            uri = Uri.parse(str);
        }
        final Uri uri2 = uri;
        final zzfhu zzfhuVar = zzficVar.b.b;
        return zzgym.h(zzgyq.f, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzeks
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final ListenableFuture zza(Object obj) {
                zzekt zzektVar = zzekt.this;
                Uri uri3 = uri2;
                zzfic zzficVar2 = zzficVar;
                zzfhr zzfhrVar2 = zzfhrVar;
                zzfhu zzfhuVar2 = zzfhuVar;
                try {
                    Intent intent = new CustomTabsIntent.Builder().a().f421a;
                    intent.setData(uri3);
                    com.google.android.gms.ads.internal.overlay.zzc zzcVar = new com.google.android.gms.ads.internal.overlay.zzc(intent, null);
                    zzcdt zzcdtVar = new zzcdt();
                    zzdjt d = zzektVar.b.d(new zzcwa(zzficVar2, zzfhrVar2, null), new zzdjw(new zzekr(zzektVar, zzcdtVar, zzfhrVar2), null));
                    zzcdtVar.a(new AdOverlayInfoParcel(zzcVar, null, (zzdcv) ((zzcnm) d).s.zzb(), null, new VersionInfoParcel(0, 0, false), null, null, zzfhuVar2.b));
                    zzektVar.d.d(2, 3);
                    return zzgym.a(d.g());
                } catch (Throwable th) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("Error in CustomTabsAdRenderer", th);
                    throw th;
                }
            }
        }, this.f6612c);
    }

    @Override // com.google.android.gms.internal.ads.zzejg
    public final boolean b(zzfic zzficVar, zzfhr zzfhrVar) {
        String str;
        Context context = this.f6611a;
        if ((context instanceof Activity) && zzbhl.a(context)) {
            try {
                str = zzfhrVar.v.getString("tab_url");
            } catch (Exception unused) {
                str = null;
            }
            if (!TextUtils.isEmpty(str)) {
                return true;
            }
            return false;
        }
        return false;
    }
}
