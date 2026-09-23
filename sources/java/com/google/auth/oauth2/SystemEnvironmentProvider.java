package com.google.auth.oauth2;

import java.io.Serializable;

/* loaded from: classes3.dex */
class SystemEnvironmentProvider implements EnvironmentProvider, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final SystemEnvironmentProvider f12144c = new Object();

    @Override // com.google.auth.oauth2.EnvironmentProvider
    public final String a(String str) {
        return System.getenv(str);
    }
}
