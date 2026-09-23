package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.ads.nonagon.util.logging.csi.CsiUrlBuilder;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class zzdxn {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f6237a;
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f6238c;
    public final com.google.android.gms.ads.internal.util.client.zzu d;
    public final boolean e;
    public final CsiUrlBuilder f;
    public final boolean g;
    public final boolean h;
    public final AtomicBoolean i;
    public final AtomicReference j;

    public zzdxn(Executor executor, com.google.android.gms.ads.internal.util.client.zzu zzuVar, CsiUrlBuilder csiUrlBuilder, Context context) {
        this.f6237a = new HashMap();
        this.i = new AtomicBoolean();
        this.j = new AtomicReference(new Bundle());
        this.f6238c = executor;
        this.d = zzuVar;
        this.e = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.B2)).booleanValue();
        this.f = csiUrlBuilder;
        this.g = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.G2)).booleanValue();
        this.h = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.N7)).booleanValue();
        this.b = context;
    }

    public final void a(Map map, boolean z) {
        if (map.isEmpty()) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Empty paramMap.");
            return;
        }
        b(map);
        final String generateUrl = this.f.generateUrl(map);
        com.google.android.gms.ads.internal.util.zze.zza(generateUrl);
        boolean parseBoolean = Boolean.parseBoolean((String) map.get("scar"));
        if (this.e) {
            if (!z || this.g) {
                if (!parseBoolean || this.h) {
                    this.f6238c.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdxk
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzdxn.this.d.zzc(generateUrl, null);
                        }
                    });
                }
            }
        }
    }

    public final void b(Map map) {
        if (map != null && !map.isEmpty()) {
            boolean andSet = this.i.getAndSet(true);
            AtomicReference atomicReference = this.j;
            if (!andSet) {
                final String str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Sb);
                atomicReference.set(com.google.android.gms.ads.internal.util.zzac.zzc(this.b, str, new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.internal.ads.zzdxl
                    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                    public final /* synthetic */ void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str2) {
                        zzdxn zzdxnVar = zzdxn.this;
                        zzdxnVar.j.set(com.google.android.gms.ads.internal.util.zzac.zzb(zzdxnVar.b, str));
                    }
                }));
            }
            Bundle bundle = (Bundle) atomicReference.get();
            for (String str2 : bundle.keySet()) {
                map.put(str2, String.valueOf(bundle.get(str2)));
            }
            return;
        }
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Empty or null paramMap.");
    }
}
