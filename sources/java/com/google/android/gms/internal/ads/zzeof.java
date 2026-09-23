package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdError;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzeof implements zzdbt {

    /* renamed from: a, reason: collision with root package name */
    public boolean f6747a = false;
    public final /* synthetic */ zzejj b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzcdt f6748c;

    public zzeof(zzeoi zzeoiVar, zzejj zzejjVar, zzcdt zzcdtVar) {
        this.b = zzejjVar;
        this.f6748c = zzcdtVar;
    }

    public final synchronized void a(int i, String str) {
        try {
            if (this.f6747a) {
                return;
            }
            this.f6747a = true;
            if (str == null) {
                str = zzeoi.c(i, this.b.f6559a);
            }
            c(new com.google.android.gms.ads.internal.client.zze(i, str, AdError.UNDEFINED_DOMAIN, null, null));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (this.f6747a) {
            return;
        }
        this.f6747a = true;
        c(zzeVar);
    }

    public final synchronized void c(com.google.android.gms.ads.internal.client.zze zzeVar) {
        int i = 1;
        if (true == ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.t6)).booleanValue()) {
            i = 3;
        }
        this.f6748c.b(new zzejk(i, zzeVar));
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    public final synchronized void zza() {
        this.f6748c.a(null);
    }

    @Override // com.google.android.gms.internal.ads.zzdbt
    public final synchronized void zzb(int i) {
        if (this.f6747a) {
            return;
        }
        this.f6747a = true;
        c(new com.google.android.gms.ads.internal.client.zze(i, zzeoi.c(i, this.b.f6559a), AdError.UNDEFINED_DOMAIN, null, null));
    }
}
