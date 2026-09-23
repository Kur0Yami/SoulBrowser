package com.google.auth;

/* loaded from: classes3.dex */
public enum CredentialTypeForMetrics {
    /* JADX INFO: Fake field, exist only in values array */
    USER_CREDENTIALS("u"),
    SERVICE_ACCOUNT_CREDENTIALS_AT("sa"),
    SERVICE_ACCOUNT_CREDENTIALS_JWT("jwt"),
    VM_CREDENTIALS("mds"),
    IMPERSONATED_CREDENTIALS("imp"),
    DO_NOT_SEND("dns");


    /* renamed from: c, reason: collision with root package name */
    public final String f12098c;

    CredentialTypeForMetrics(String str) {
        this.f12098c = str;
    }
}
