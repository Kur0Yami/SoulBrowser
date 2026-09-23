package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbsz;
import com.google.android.gms.internal.ads.zzbxv;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzae extends zzba {
    public final /* synthetic */ Context b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbsz f2980c;

    public zzae(zzaz zzazVar, Context context, zzbsz zzbszVar) {
        this.b = context;
        this.f2980c = zzbszVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object a() {
        zzaz.a(this.b, "out_of_context_tester");
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object b() {
        Context context = this.b;
        ObjectWrapper objectWrapper = new ObjectWrapper(context);
        zzbgk.a(context);
        if (((Boolean) zzbd.zzc().a(zzbgk.Ka)).booleanValue()) {
            try {
                return ((zzdx) com.google.android.gms.ads.internal.util.client.zzs.zza(context, "com.google.android.gms.ads.DynamiteOutOfContextTesterCreatorImpl", zzad.f2979a)).zze(objectWrapper, this.f2980c, ModuleDescriptor.MODULE_VERSION);
            } catch (RemoteException | com.google.android.gms.ads.internal.util.client.zzr | NullPointerException e) {
                zzbxv.c(context).a("ClientApiBroker.getOutOfContextTester", e);
            }
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object c(zzcr zzcrVar) {
        Context context = this.b;
        ObjectWrapper objectWrapper = new ObjectWrapper(context);
        zzbgk.a(context);
        if (((Boolean) zzbd.zzc().a(zzbgk.Ka)).booleanValue()) {
            return zzcrVar.zzq(objectWrapper, this.f2980c, ModuleDescriptor.MODULE_VERSION);
        }
        return null;
    }
}
