package androidx.webkit;

import androidx.annotation.RestrictTo;
import j$.util.Objects;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class WebMessageCompat {

    /* renamed from: a, reason: collision with root package name */
    public final String f1790a;
    public final int b;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface Type {
    }

    public WebMessageCompat(String str, WebMessagePortCompat[] webMessagePortCompatArr) {
        this.f1790a = str;
        this.b = 0;
    }

    public WebMessageCompat(byte[] bArr, WebMessagePortCompat[] webMessagePortCompatArr) {
        Objects.requireNonNull(bArr);
        this.f1790a = null;
        this.b = 1;
    }
}
