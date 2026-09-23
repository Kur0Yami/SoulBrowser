package org.jsoup;

import java.io.IOException;

/* loaded from: classes4.dex */
public class HttpStatusException extends IOException {

    /* renamed from: c, reason: collision with root package name */
    public final int f22522c;
    public final String f;

    public HttpStatusException(String str, int i, String str2) {
        super(str + ". Status=" + i + ", URL=[" + str2 + "]");
        this.f22522c = i;
        this.f = str2;
    }

    public int getStatusCode() {
        return this.f22522c;
    }

    public String getUrl() {
        return this.f;
    }
}
