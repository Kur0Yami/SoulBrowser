package com.google.android.gms.ads.internal.client;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbsz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzam extends zzba {
    public final /* synthetic */ Context b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzr f2988c;
    public final /* synthetic */ String d;
    public final /* synthetic */ zzbsz e;
    public final /* synthetic */ zzaz f;

    public zzam(zzaz zzazVar, Context context, zzr zzrVar, String str, zzbsz zzbszVar) {
        this.b = context;
        this.f2988c = zzrVar;
        this.d = str;
        this.e = zzbszVar;
        this.f = zzazVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object a() {
        zzaz.a(this.b, "app_open");
        return new zzfk();
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* synthetic */ Object b() {
        return this.f.f3001a.zza(this.b, this.f2988c, this.d, this.e, 4);
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object c(zzcr zzcrVar) {
        return zzcrVar.zzm(new ObjectWrapper(this.b), this.f2988c, this.d, this.e, ModuleDescriptor.MODULE_VERSION);
    }
}
