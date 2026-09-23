package com.google.android.gms.internal.mlkit_common;

import android.content.Context;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.TransportFactory;
import com.google.android.datatransport.cct.CCTDestination;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.firebase.components.Lazy;
import com.google.firebase.inject.Provider;

/* loaded from: classes3.dex */
public final class zzsp implements zzrz {

    /* renamed from: a, reason: collision with root package name */
    public final Lazy f10910a;
    public final Lazy b;

    /* renamed from: c, reason: collision with root package name */
    public final zzsb f10911c;

    public zzsp(Context context, zzsb zzsbVar) {
        this.f10911c = zzsbVar;
        CCTDestination cCTDestination = CCTDestination.e;
        TransportRuntime.b(context);
        final TransportFactory c2 = TransportRuntime.a().c(cCTDestination);
        if (CCTDestination.d.contains(new Encoding("json"))) {
            this.f10910a = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_common.zzsm
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.datatransport.Transformer] */
                @Override // com.google.firebase.inject.Provider
                public final Object get() {
                    return TransportFactory.this.a("FIREBASE_ML_SDK", new Encoding("json"), new Object());
                }
            });
        }
        this.b = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_common.zzsn
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.datatransport.Transformer] */
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                return TransportFactory.this.a("FIREBASE_ML_SDK", new Encoding("proto"), new Object());
            }
        });
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzrz
    public final void a(zzsk zzskVar) {
        zzskVar.getClass();
        zzsb zzsbVar = this.f10911c;
        boolean z = false;
        if (zzsbVar.a() == 0) {
            Lazy lazy = this.f10910a;
            if (lazy != null) {
                int a2 = zzsbVar.a() ^ 1;
                zzqt zzqtVar = zzskVar.f10907a;
                if (1 == a2) {
                    z = true;
                }
                zzqtVar.i = Boolean.valueOf(z);
                zzqt zzqtVar2 = zzskVar.f10907a;
                zzqtVar2.g = Boolean.FALSE;
                new zzqv(zzqtVar2);
                throw null;
            }
            return;
        }
        int a3 = zzsbVar.a() ^ 1;
        zzqt zzqtVar3 = zzskVar.f10907a;
        if (1 == a3) {
            z = true;
        }
        zzqtVar3.i = Boolean.valueOf(z);
        zzqt zzqtVar4 = zzskVar.f10907a;
        zzqtVar4.g = Boolean.FALSE;
        new zzqv(zzqtVar4);
        throw null;
    }
}
