package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzejv implements zzejm {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6575a;
    public final zzcsq b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f6576c;

    public zzejv(Context context, zzcsq zzcsqVar, Executor executor) {
        this.f6575a = context;
        this.b = zzcsqVar;
        this.f6576c = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzejm
    public final void a(zzfic zzficVar, zzfhr zzfhrVar, zzejj zzejjVar) {
        zzfji zzfjiVar = (zzfji) zzejjVar.b;
        zzfik zzfikVar = zzficVar.f7383a.f7378a;
        String jSONObject = zzfhrVar.v.toString();
        Context context = this.f6575a;
        zzbtf zzbtfVar = (zzbtf) zzejjVar.f6560c;
        try {
            zzfjiVar.f7412a.a0(new ObjectWrapper(context), zzfikVar.d, jSONObject, zzbtfVar);
        } catch (Throwable th) {
            throw new Exception(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzejm
    public final /* bridge */ /* synthetic */ Object b(zzfic zzficVar, zzfhr zzfhrVar, zzejj zzejjVar) {
        zzcsn a2 = this.b.a(new zzcwa(zzficVar, zzfhrVar, zzejjVar.f6559a), new zzdjw(new zzeju(this, zzejjVar, zzfhrVar), null), new zzcso(zzfhrVar.a0));
        a2.a().m0(new zzcqq((zzfji) zzejjVar.b), this.f6576c);
        ((zzekv) zzejjVar.f6560c).d5(a2.e());
        return a2.g();
    }
}
