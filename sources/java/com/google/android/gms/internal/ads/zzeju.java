package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
final class zzeju implements zzdlh {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzejj f6574a;
    public final /* synthetic */ zzfhr b;

    public zzeju(zzejv zzejvVar, zzejj zzejjVar, zzfhr zzfhrVar) {
        this.f6574a = zzejjVar;
        this.b = zzfhrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdlh
    public final void a(boolean z, Context context, zzdax zzdaxVar) {
        try {
            zzfji zzfjiVar = (zzfji) this.f6574a.b;
            zzfjiVar.b(z);
            try {
                zzfjiVar.f7412a.y2(new ObjectWrapper(context));
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
