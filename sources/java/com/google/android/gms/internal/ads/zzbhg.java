package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsCallback;

/* loaded from: classes.dex */
final class zzbhg extends CustomTabsCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbhj f4674a;

    public zzbhg(zzbhj zzbhjVar) {
        this.f4674a = zzbhjVar;
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void g(final int i, Bundle bundle) {
        final zzbhj zzbhjVar = this.f4674a;
        zzbhjVar.getClass();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.w5)).booleanValue() && zzbhjVar.h != null) {
            ((zzcdn) zzcdo.f5068a).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbhh
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzdxe zzdxeVar = zzbhj.this.h;
                    if (zzdxeVar != null) {
                        zzdxd a2 = zzdxeVar.a();
                        a2.b("action", "cct_nav");
                        a2.b("cct_navs", String.valueOf(i));
                        a2.c();
                    }
                }
            });
        }
    }
}
