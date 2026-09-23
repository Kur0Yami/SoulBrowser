package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzelg implements zzejm {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6634a;
    public final zzdkz b;

    /* renamed from: c, reason: collision with root package name */
    public final VersionInfoParcel f6635c;
    public final Executor d;

    public zzelg(Context context, VersionInfoParcel versionInfoParcel, zzdkz zzdkzVar, Executor executor) {
        this.f6634a = context;
        this.f6635c = versionInfoParcel;
        this.b = zzdkzVar;
        this.d = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzejm
    public final void a(zzfic zzficVar, zzfhr zzfhrVar, zzejj zzejjVar) {
        zzfji zzfjiVar = (zzfji) zzejjVar.b;
        zzfik zzfikVar = zzficVar.f7383a.f7378a;
        String jSONObject = zzfhrVar.v.toString();
        String zzm = com.google.android.gms.ads.internal.util.zzbp.zzm(zzfhrVar.s);
        Context context = this.f6634a;
        zzbtf zzbtfVar = (zzbtf) zzejjVar.f6560c;
        try {
            zzfjiVar.f7412a.p2(new ObjectWrapper(context), zzfikVar.d, jSONObject, zzm, zzbtfVar);
        } catch (Throwable th) {
            throw new Exception(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzejm
    public final /* bridge */ /* synthetic */ Object b(zzfic zzficVar, zzfhr zzfhrVar, zzejj zzejjVar) {
        zzdjt d = this.b.d(new zzcwa(zzficVar, zzfhrVar, zzejjVar.f6559a), new zzdjw(new zzelf(this, zzejjVar, zzfhrVar), null));
        d.a().m0(new zzcqq((zzfji) zzejjVar.b), this.d);
        ((zzekv) zzejjVar.f6560c).d5(d.e());
        return d.g();
    }
}
