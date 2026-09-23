package com.google.android.gms.internal.mlkit_code_scanner;

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
public final class zzog implements zznr {

    /* renamed from: a, reason: collision with root package name */
    public final Lazy f10633a;
    public final Lazy b;

    /* renamed from: c, reason: collision with root package name */
    public final zznt f10634c;

    public zzog(Context context, zznt zzntVar) {
        this.f10634c = zzntVar;
        CCTDestination cCTDestination = CCTDestination.e;
        TransportRuntime.b(context);
        final TransportFactory c2 = TransportRuntime.a().c(cCTDestination);
        if (CCTDestination.d.contains(new Encoding("json"))) {
            this.f10633a = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_code_scanner.zzod
                @Override // com.google.firebase.inject.Provider
                public final Object get() {
                    return TransportFactory.this.a("FIREBASE_ML_SDK", new Encoding("json"), zzof.f10632a);
                }
            });
        }
        this.b = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_code_scanner.zzoe
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                return TransportFactory.this.a("FIREBASE_ML_SDK", new Encoding("proto"), zzoc.f10629a);
            }
        });
    }

    @Override // com.google.android.gms.internal.mlkit_code_scanner.zznr
    public final void a(zzob zzobVar) {
        byte[] a2;
        byte[] a3;
        zzkc zzkcVar = zzobVar.f10628a;
        zznt zzntVar = this.f10634c;
        int a4 = zzntVar.a();
        boolean z = false;
        zzig zzigVar = zzig.f10598a;
        if (a4 == 0) {
            Lazy lazy = this.f10633a;
            if (lazy != null) {
                Transport transport = (Transport) lazy.get();
                int a5 = zzntVar.a();
                int i = a5 ^ 1;
                zzmq zzmqVar = zzobVar.b;
                if (1 == i) {
                    z = true;
                }
                zzmqVar.i = Boolean.valueOf(z);
                zzmq zzmqVar2 = zzobVar.b;
                zzmqVar2.g = Boolean.FALSE;
                zzkcVar.f10607a = new zzms(zzmqVar2);
                try {
                    zzok.a();
                    if (a5 == 0) {
                        zzke zzkeVar = new zzke(zzkcVar);
                        JsonDataEncoderBuilder jsonDataEncoderBuilder = new JsonDataEncoderBuilder();
                        zzigVar.a(jsonDataEncoderBuilder);
                        jsonDataEncoderBuilder.d = true;
                        a3 = jsonDataEncoderBuilder.b().b(zzkeVar).getBytes("utf-8");
                    } else {
                        zzke zzkeVar2 = new zzke(zzkcVar);
                        zzal zzalVar = new zzal();
                        zzigVar.a(zzalVar);
                        a3 = new zzam(new HashMap(zzalVar.f10423a), new HashMap(zzalVar.b), zzalVar.f10424c).a(zzkeVar2);
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
        int a6 = zzntVar.a();
        int i2 = a6 ^ 1;
        zzmq zzmqVar3 = zzobVar.b;
        if (1 == i2) {
            z = true;
        }
        zzmqVar3.i = Boolean.valueOf(z);
        zzmq zzmqVar4 = zzobVar.b;
        zzmqVar4.g = Boolean.FALSE;
        zzkcVar.f10607a = new zzms(zzmqVar4);
        try {
            zzok.a();
            if (a6 == 0) {
                zzke zzkeVar3 = new zzke(zzkcVar);
                JsonDataEncoderBuilder jsonDataEncoderBuilder2 = new JsonDataEncoderBuilder();
                zzigVar.a(jsonDataEncoderBuilder2);
                jsonDataEncoderBuilder2.d = true;
                a2 = jsonDataEncoderBuilder2.b().b(zzkeVar3).getBytes("utf-8");
            } else {
                zzke zzkeVar4 = new zzke(zzkcVar);
                zzal zzalVar2 = new zzal();
                zzigVar.a(zzalVar2);
                a2 = new zzam(new HashMap(zzalVar2.f10423a), new HashMap(zzalVar2.b), zzalVar2.f10424c).a(zzkeVar4);
            }
            transport2.a(Event.g(a2));
        } catch (UnsupportedEncodingException e2) {
            throw new UnsupportedOperationException("Failed to covert logging to UTF-8 byte array", e2);
        }
    }
}
