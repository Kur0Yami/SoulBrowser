package com.google.android.gms.fido.u2f.api.messagebased;

@Deprecated
/* loaded from: classes.dex */
public enum ResponseType {
    /* JADX INFO: Fake field, exist only in values array */
    REGISTER("u2f_register_response"),
    /* JADX INFO: Fake field, exist only in values array */
    SIGN("u2f_sign_response");


    /* renamed from: c, reason: collision with root package name */
    public final String f3813c;

    ResponseType(String str) {
        this.f3813c = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f3813c;
    }
}
