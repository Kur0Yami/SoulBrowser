package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbok;
import com.google.android.gms.internal.ads.zzbop;
import com.google.android.gms.internal.ads.zzbot;
import com.google.android.gms.internal.ads.zzbsz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzak extends zzba {
    public final /* synthetic */ Context b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbsz f2986c;
    public final /* synthetic */ OnH5AdsEventListener d;

    public zzak(zzaz zzazVar, Context context, zzbsz zzbszVar, OnH5AdsEventListener onH5AdsEventListener) {
        this.b = context;
        this.f2986c = zzbszVar;
        this.d = onH5AdsEventListener;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object a() {
        return new zzbop();
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object b() {
        Context context = this.b;
        try {
            return ((zzbot) com.google.android.gms.ads.internal.util.client.zzs.zza(context, "com.google.android.gms.ads.DynamiteH5AdsManagerCreatorImpl", zzaj.f2985a)).V2(new ObjectWrapper(context), this.f2986c, new zzbok(this.d));
        } catch (RemoteException | com.google.android.gms.ads.internal.util.client.zzr | NullPointerException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object c(zzcr zzcrVar) {
        return zzcrVar.zzp(new ObjectWrapper(this.b), this.f2986c, ModuleDescriptor.MODULE_VERSION, new zzbok(this.d));
    }
}
