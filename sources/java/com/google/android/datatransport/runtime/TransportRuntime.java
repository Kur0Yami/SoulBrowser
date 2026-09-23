package com.google.android.datatransport.runtime;

import android.content.Context;
import androidx.credentials.playservices.controllers.CreatePassword.a;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.TransportFactory;
import com.google.android.datatransport.runtime.AutoValue_TransportContext;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.Scheduler;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer;
import com.google.android.datatransport.runtime.time.Clock;
import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.Set;
import javax.inject.Singleton;

@Singleton
/* loaded from: classes.dex */
public class TransportRuntime implements TransportInternal {
    public static volatile TransportRuntimeComponent e;

    /* renamed from: a, reason: collision with root package name */
    public final Clock f2832a;
    public final Clock b;

    /* renamed from: c, reason: collision with root package name */
    public final Scheduler f2833c;
    public final Uploader d;

    public TransportRuntime(Clock clock, Clock clock2, Scheduler scheduler, Uploader uploader, WorkInitializer workInitializer) {
        this.f2832a = clock;
        this.b = clock2;
        this.f2833c = scheduler;
        this.d = uploader;
        workInitializer.f2889a.execute(new a(2, workInitializer));
    }

    public static TransportRuntime a() {
        TransportRuntimeComponent transportRuntimeComponent = e;
        if (transportRuntimeComponent != null) {
            return transportRuntimeComponent.b();
        }
        throw new IllegalStateException("Not initialized!");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.datatransport.runtime.DaggerTransportRuntimeComponent$Builder] */
    public static void b(Context context) {
        if (e == null) {
            synchronized (TransportRuntime.class) {
                try {
                    if (e == null) {
                        ?? obj = new Object();
                        context.getClass();
                        obj.f2822a = context;
                        e = obj.a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final TransportFactory c(Destination destination) {
        Set singleton;
        if (destination instanceof EncodedDestination) {
            singleton = DesugarCollections.unmodifiableSet(((EncodedDestination) destination).a());
        } else {
            singleton = Collections.singleton(new Encoding("proto"));
        }
        TransportContext.Builder a2 = TransportContext.a();
        destination.getClass();
        ((AutoValue_TransportContext.Builder) a2).f2819a = "cct";
        ((AutoValue_TransportContext.Builder) a2).b = destination.getExtras();
        return new TransportFactoryImpl(singleton, a2.a(), this);
    }
}
