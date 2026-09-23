package com.google.android.gms.internal.mlkit_vision_text_common;

import android.content.Context;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.TransportFactory;
import com.google.android.datatransport.cct.CCTDestination;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.firebase.components.Lazy;
import com.google.firebase.inject.Provider;

/* loaded from: classes3.dex */
public final class zzuk implements zzts {

    /* renamed from: a, reason: collision with root package name */
    public final Lazy f11429a;
    public final Lazy b;

    /* renamed from: c, reason: collision with root package name */
    public final zztu f11430c;

    public zzuk(Context context, zztu zztuVar) {
        this.f11430c = zztuVar;
        CCTDestination cCTDestination = CCTDestination.e;
        TransportRuntime.b(context);
        final TransportFactory c2 = TransportRuntime.a().c(cCTDestination);
        if (CCTDestination.d.contains(new Encoding("json"))) {
            this.f11429a = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_vision_text_common.zzuh
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.datatransport.Transformer] */
                @Override // com.google.firebase.inject.Provider
                public final Object get() {
                    return TransportFactory.this.a("FIREBASE_ML_SDK", new Encoding("json"), new Object());
                }
            });
        }
        this.b = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_vision_text_common.zzui
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.datatransport.Transformer] */
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                return TransportFactory.this.a("FIREBASE_ML_SDK", new Encoding("proto"), new Object());
            }
        });
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzts
    public final void a(zztr zztrVar) {
        Event g;
        Event g2;
        zztu zztuVar = this.f11430c;
        if (zztuVar.a() == 0) {
            Lazy lazy = this.f11429a;
            if (lazy != null) {
                Transport transport = (Transport) lazy.get();
                int a2 = zztuVar.a();
                if (zztrVar.zza() != 0) {
                    g2 = Event.e(zztrVar.b(a2));
                } else {
                    g2 = Event.g(zztrVar.b(a2));
                }
                transport.a(g2);
                return;
            }
            return;
        }
        Transport transport2 = (Transport) this.b.get();
        int a3 = zztuVar.a();
        if (zztrVar.zza() != 0) {
            g = Event.e(zztrVar.b(a3));
        } else {
            g = Event.g(zztrVar.b(a3));
        }
        transport2.a(g);
    }
}
