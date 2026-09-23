package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
final class zzend implements zzdlh {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzejj f6711a;
    public final /* synthetic */ zzfhr b;

    public zzend(zzene zzeneVar, zzejj zzejjVar, zzfhr zzfhrVar) {
        this.f6711a = zzejjVar;
        this.b = zzfhrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdlh
    public final void a(boolean z, Context context, zzdax zzdaxVar) {
        try {
            zzfji zzfjiVar = (zzfji) this.f6711a.b;
            zzfjiVar.b(z);
            try {
                zzfjiVar.f7412a.a2(new ObjectWrapper(context));
            } catch (Throwable th) {
                throw new Exception(th);
            }
        } catch (zzfir e) {
            throw new Exception(e.getCause());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdlh
    public final zzfhr zzb() {
        return this.b;
    }
}
