package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.TransportFactory;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class TransportFactoryImpl implements TransportFactory {

    /* renamed from: a, reason: collision with root package name */
    public final Set f2828a;
    public final TransportContext b;

    /* renamed from: c, reason: collision with root package name */
    public final TransportRuntime f2829c;

    public TransportFactoryImpl(Set set, TransportContext transportContext, TransportRuntime transportRuntime) {
        this.f2828a = set;
        this.b = transportContext;
        this.f2829c = transportRuntime;
    }

    @Override // com.google.android.datatransport.TransportFactory
    public final Transport a(String str, Encoding encoding, Transformer transformer) {
        Set set = this.f2828a;
        if (set.contains(encoding)) {
            return new TransportImpl(this.b, str, encoding, transformer, this.f2829c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", encoding, set));
    }
}
