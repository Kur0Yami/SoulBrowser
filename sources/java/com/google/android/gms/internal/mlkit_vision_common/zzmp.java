package com.google.android.gms.internal.mlkit_vision_common;

import android.content.Context;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.TransportFactory;
import com.google.android.datatransport.cct.CCTDestination;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.firebase.components.Lazy;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import com.google.firebase.inject.Provider;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzmp implements zzmc {

    /* renamed from: a, reason: collision with root package name */
    public final Lazy f11114a;
    public final Lazy b;

    /* renamed from: c, reason: collision with root package name */
    public final zzme f11115c;

    public zzmp(Context context, zzme zzmeVar) {
        this.f11115c = zzmeVar;
        CCTDestination cCTDestination = CCTDestination.e;
        TransportRuntime.b(context);
        final TransportFactory c2 = TransportRuntime.a().c(cCTDestination);
        if (CCTDestination.d.contains(new Encoding("json"))) {
            this.f11114a = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_vision_common.zzmm
                @Override // com.google.firebase.inject.Provider
                public final Object get() {
                    return TransportFactory.this.a("FIREBASE_ML_SDK", new Encoding("json"), zzmo.f11113a);
                }
            });
        }
        this.b = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_vision_common.zzmn
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                return TransportFactory.this.a("FIREBASE_ML_SDK", new Encoding("proto"), zzml.f11110a);
            }
        });
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzmc
    public final void a(zzmk zzmkVar) {
        byte[] a2;
        byte[] a3;
        zziw zziwVar = zzmkVar.f11109a;
        zzme zzmeVar = this.f11115c;
        int a4 = zzmeVar.a();
        boolean z = false;
        zzhe zzheVar = zzhe.f11079a;
        if (a4 == 0) {
            Lazy lazy = this.f11114a;
            if (lazy != null) {
                Transport transport = (Transport) lazy.get();
                int a5 = zzmeVar.a();
                int i = a5 ^ 1;
                zzky zzkyVar = zzmkVar.b;
                if (1 == i) {
                    z = true;
                }
                zzkyVar.i = Boolean.valueOf(z);
                zzky zzkyVar2 = zzmkVar.b;
                zzkyVar2.g = Boolean.FALSE;
                zziwVar.f11087a = new zzla(zzkyVar2);
                try {
                    zzmw.a();
                    if (a5 == 0) {
                        zziy zziyVar = new zziy(zziwVar);
                        JsonDataEncoderBuilder jsonDataEncoderBuilder = new JsonDataEncoderBuilder();
                        zzheVar.a(jsonDataEncoderBuilder);
                        jsonDataEncoderBuilder.d = true;
                        a3 = jsonDataEncoderBuilder.b().b(zziyVar).getBytes("utf-8");
                    } else {
                        zziy zziyVar2 = new zziy(zziwVar);
                        zzam zzamVar = new zzam();
                        zzheVar.a(zzamVar);
                        a3 = new zzan(new HashMap(zzamVar.f10927a), new HashMap(zzamVar.b), zzamVar.f10928c).a(zziyVar2);
                    }
                    transport.a(Event.g(a3));
                    return;
                } catch (UnsupportedEncodingException e) {
                    throw new UnsupportedOperationException("Failed to covert logging to UTF-8 byte array", e);
                }
            }
            return;
        }
        Transport transport2 = (Transport) this.b.get();
        int a6 = zzmeVar.a();
        int i2 = a6 ^ 1;
        zzky zzkyVar3 = zzmkVar.b;
        if (1 == i2) {
            z = true;
        }
        zzkyVar3.i = Boolean.valueOf(z);
        zzky zzkyVar4 = zzmkVar.b;
        zzkyVar4.g = Boolean.FALSE;
        zziwVar.f11087a = new zzla(zzkyVar4);
        try {
            zzmw.a();
            if (a6 == 0) {
                zziy zziyVar3 = new zziy(zziwVar);
                JsonDataEncoderBuilder jsonDataEncoderBuilder2 = new JsonDataEncoderBuilder();
                zzheVar.a(jsonDataEncoderBuilder2);
                jsonDataEncoderBuilder2.d = true;
                a2 = jsonDataEncoderBuilder2.b().b(zziyVar3).getBytes("utf-8");
            } else {
                zziy zziyVar4 = new zziy(zziwVar);
                zzam zzamVar2 = new zzam();
                zzheVar.a(zzamVar2);
                a2 = new zzan(new HashMap(zzamVar2.f10927a), new HashMap(zzamVar2.b), zzamVar2.f10928c).a(zziyVar4);
            }
            transport2.a(Event.g(a2));
        } catch (UnsupportedEncodingException e2) {
            throw new UnsupportedOperationException("Failed to covert logging to UTF-8 byte array", e2);
        }
    }
}
