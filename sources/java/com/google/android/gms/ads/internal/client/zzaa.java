package com.google.android.gms.ads.internal.client;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbsz;
import com.google.android.gms.internal.ads.zzcar;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaa extends zzba {
    public final /* synthetic */ Context b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f2976c;
    public final /* synthetic */ zzbsz d;

    public zzaa(zzaz zzazVar, Context context, String str, zzbsz zzbszVar) {
        this.b = context;
        this.f2976c = str;
        this.d = zzbszVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object a() {
        zzaz.a(this.b, "rewarded");
        return new zzfq();
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object b() {
        return zzcar.a(this.b, this.f2976c, this.d);
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object c(zzcr zzcrVar) {
        return zzcrVar.zzl(new ObjectWrapper(this.b), this.f2976c, this.d, ModuleDescriptor.MODULE_VERSION);
    }
}
