package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.runtime.AutoValue_EventInternal;
import com.google.android.datatransport.runtime.AutoValue_TransportContext;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.Scheduler;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
final class TransportImpl<T> implements Transport<T> {

    /* renamed from: a, reason: collision with root package name */
    public final TransportContext f2830a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final Encoding f2831c;
    public final Transformer d;
    public final TransportRuntime e;

    public TransportImpl(TransportContext transportContext, String str, Encoding encoding, Transformer transformer, TransportRuntime transportRuntime) {
        this.f2830a = transportContext;
        this.b = str;
        this.f2831c = encoding;
        this.d = transformer;
        this.e = transportRuntime;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.privacysandbox.ads.adservices.topics.a] */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.datatransport.runtime.AutoValue_SendRequest$Builder, java.lang.Object] */
    @Override // com.google.android.datatransport.Transport
    public final void a(Event event) {
        ?? obj = new Object();
        ?? obj2 = new Object();
        TransportContext transportContext = this.f2830a;
        if (transportContext != null) {
            obj2.f2815a = transportContext;
            obj2.f2816c = event;
            obj2.b = this.b;
            obj2.d = this.d;
            obj2.e = this.f2831c;
            if (RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED.isEmpty()) {
                TransportContext transportContext2 = obj2.f2815a;
                String str = obj2.b;
                Event event2 = obj2.f2816c;
                Transformer transformer = obj2.d;
                Encoding encoding = obj2.e;
                TransportRuntime transportRuntime = this.e;
                Scheduler scheduler = transportRuntime.f2833c;
                Priority c2 = event2.c();
                transportContext2.getClass();
                TransportContext.Builder a2 = TransportContext.a();
                a2.b(transportContext2.b());
                a2.d(c2);
                ((AutoValue_TransportContext.Builder) a2).b = transportContext2.c();
                TransportContext a3 = a2.a();
                AutoValue_EventInternal.Builder builder = (AutoValue_EventInternal.Builder) EventInternal.a();
                builder.d = Long.valueOf(transportRuntime.f2832a.a());
                builder.e = Long.valueOf(transportRuntime.b.a());
                builder.g(str);
                builder.f2814c = new EncodedPayload(encoding, (byte[]) transformer.apply(event2.b()));
                builder.b = event2.a();
                scheduler.a(a3, builder.b(), obj);
                return;
            }
            throw new IllegalStateException("Missing required properties:".concat(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
        }
        throw new NullPointerException("Null transportContext");
    }
}
