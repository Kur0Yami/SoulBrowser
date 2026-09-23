package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.browser.customtabs.CustomTabsClient;

/* loaded from: classes.dex */
public final class zzebt implements zzddq, zzdjd, zzdby {

    /* renamed from: c, reason: collision with root package name */
    public final Context f6347c;
    public final zzdxe f;

    public zzebt(Context context, zzdxe zzdxeVar) {
        this.f6347c = context;
        this.f = zzdxeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void N(zzfic zzficVar) {
    }

    public final void a(final Context context) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.x5)).booleanValue()) {
            ((zzcdn) zzcdo.f5068a).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzebs
                @Override // java.lang.Runnable
                public final void run() {
                    String b;
                    zzdxe zzdxeVar = zzebt.this.f;
                    zzbhj zzn = com.google.android.gms.ads.internal.zzt.zzn();
                    if (!zzn.f.getAndSet(true)) {
                        Context context2 = context;
                        zzn.g = context2;
                        zzn.h = zzdxeVar;
                        if (zzn.j == null && (b = CustomTabsClient.b(context2)) != null && !b.equals(context2.getPackageName())) {
                            CustomTabsClient.a(context2, b, zzn);
                        }
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void f(zzbza zzbzaVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z5)).booleanValue()) {
            a(this.f6347c);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjd
    public final void zzd(com.google.android.gms.ads.nonagon.signalgeneration.zzbj zzbjVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.A5)).booleanValue()) {
            a(this.f6347c);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjd
    public final void zze(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    public final void zzg() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.B5)).booleanValue()) {
            a(this.f6347c);
        }
    }
}
