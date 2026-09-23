package org.jsoup;

import java.io.IOException;

/* loaded from: classes4.dex */
public class UnsupportedMimeTypeException extends IOException {

    /* renamed from: c, reason: collision with root package name */
    public final String f22523c;
    public final String f;

    public UnsupportedMimeTypeException(String str, String str2, String str3) {
        super(str);
        this.f22523c = str2;
        this.f = str3;
    }

    public String getMimeType() {
        return this.f22523c;
    }

    public String getUrl() {
        return this.f;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + ". Mimetype=" + this.f22523c + ", URL=" + this.f;
    }
}
