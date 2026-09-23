package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Singleton;

@Singleton
/* loaded from: classes.dex */
class MetadataBackendRegistry implements BackendRegistry {

    /* renamed from: a, reason: collision with root package name */
    public final BackendFactoryProvider f2845a;
    public final CreationContextFactory b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f2846c;

    /* loaded from: classes.dex */
    public static class BackendFactoryProvider {

        /* renamed from: a, reason: collision with root package name */
        public final Context f2847a;
        public Map b = null;

        public BackendFactoryProvider(Context context) {
            this.f2847a = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0042  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.google.android.datatransport.runtime.backends.BackendFactory a(java.lang.String r14) {
            /*
                Method dump skipped, instructions count: 267
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.datatransport.runtime.backends.MetadataBackendRegistry.BackendFactoryProvider.a(java.lang.String):com.google.android.datatransport.runtime.backends.BackendFactory");
        }
    }

    public MetadataBackendRegistry(Context context, CreationContextFactory creationContextFactory) {
        BackendFactoryProvider backendFactoryProvider = new BackendFactoryProvider(context);
        this.f2846c = new HashMap();
        this.f2845a = backendFactoryProvider;
        this.b = creationContextFactory;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRegistry
    public final synchronized TransportBackend get(String str) {
        if (this.f2846c.containsKey(str)) {
            return (TransportBackend) this.f2846c.get(str);
        }
        BackendFactory a2 = this.f2845a.a(str);
        if (a2 == null) {
            return null;
        }
        CreationContextFactory creationContextFactory = this.b;
        TransportBackend create = a2.create(new AutoValue_CreationContext(creationContextFactory.f2842a, creationContextFactory.b, creationContextFactory.f2843c, str));
        this.f2846c.put(str, create);
        return create;
    }
}
