package com.google.android.gms.fido.u2f.api.messagebased;

@Deprecated
/* loaded from: classes.dex */
public enum RequestType {
    /* JADX INFO: Fake field, exist only in values array */
    REGISTER("u2f_register_request"),
    /* JADX INFO: Fake field, exist only in values array */
    SIGN("u2f_sign_request");


    /* renamed from: c, reason: collision with root package name */
    public final String f3812c;

    /* loaded from: classes.dex */
    public static class UnsupportedRequestTypeException extends Exception {
    }

    RequestType(String str) {
        this.f3812c = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f3812c;
    }
}
