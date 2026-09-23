package com.google.android.gms.ads.internal.client;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbsz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzao extends zzba {
    public final /* synthetic */ Context b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzr f2990c;
    public final /* synthetic */ String d;
    public final /* synthetic */ zzbsz e;
    public final /* synthetic */ zzaz f;

    public zzao(zzaz zzazVar, Context context, zzr zzrVar, String str, zzbsz zzbszVar) {
        this.b = context;
        this.f2990c = zzrVar;
        this.d = str;
        this.e = zzbszVar;
        this.f = zzazVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object a() {
        zzaz.a(this.b, "interstitial");
        return new zzfk();
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* synthetic */ Object b() {
        return this.f.f3001a.zza(this.b, this.f2990c, this.d, this.e, 2);
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object c(zzcr zzcrVar) {
        return zzcrVar.zzc(new ObjectWrapper(this.b), this.f2990c, this.d, this.e, ModuleDescriptor.MODULE_VERSION);
    }
}
