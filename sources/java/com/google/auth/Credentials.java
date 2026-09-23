package com.google.auth;

import java.io.Serializable;
import java.net.URI;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class Credentials implements Serializable {

    /* renamed from: com.google.auth.Credentials$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    public abstract Map a(URI uri);

    public abstract void b();
}
