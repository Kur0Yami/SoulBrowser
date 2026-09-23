package com.google.auth.oauth2;

/* loaded from: classes3.dex */
class OAuthException extends GoogleAuthException {
    @Override // java.lang.Throwable
    public String getMessage() {
        return new StringBuilder("Error code " + ((String) null)).toString();
    }
}
