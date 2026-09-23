package com.google.auth;

import java.net.URI;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes3.dex */
public class ApiKeyCredentials extends Credentials {
    @Override // com.google.auth.Credentials
    public final Map a(URI uri) {
        return Collections.singletonMap("x-goog-api-key", Collections.singletonList(null));
    }

    @Override // com.google.auth.Credentials
    public final void b() {
    }
}
