package com.bumptech.glide.load.model;

import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Preconditions;
import java.net.URL;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class GlideUrl implements Key {
    public final Headers b;

    /* renamed from: c, reason: collision with root package name */
    public final URL f2291c;
    public final String d;
    public String e;
    public URL f;
    public volatile byte[] g;
    public int h;

    public GlideUrl(URL url) {
        LazyHeaders lazyHeaders = Headers.f2292a;
        Preconditions.c(url, "Argument must not be null");
        this.f2291c = url;
        this.d = null;
        Preconditions.c(lazyHeaders, "Argument must not be null");
        this.b = lazyHeaders;
    }

    @Override // com.bumptech.glide.load.Key
    public final void a(MessageDigest messageDigest) {
        if (this.g == null) {
            this.g = c().getBytes(Key.f2160a);
        }
        messageDigest.update(this.g);
    }

    public final String c() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        URL url = this.f2291c;
        Preconditions.c(url, "Argument must not be null");
        return url.toString();
    }

    public final URL d() {
        if (this.f == null) {
            if (TextUtils.isEmpty(this.e)) {
                String str = this.d;
                if (TextUtils.isEmpty(str)) {
                    URL url = this.f2291c;
                    Preconditions.c(url, "Argument must not be null");
                    str = url.toString();
                }
                this.e = Uri.encode(str, "@#&=*+-_.,:!?()/~'%;$[]");
            }
            this.f = new URL(this.e);
        }
        return this.f;
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof GlideUrl) {
            GlideUrl glideUrl = (GlideUrl) obj;
            if (c().equals(glideUrl.c()) && this.b.equals(glideUrl.b)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        if (this.h == 0) {
            int hashCode = c().hashCode();
            this.h = hashCode;
            this.h = this.b.hashCode() + (hashCode * 31);
        }
        return this.h;
    }

    public final String toString() {
        return c();
    }

    public GlideUrl(String str, Headers headers) {
        this.f2291c = null;
        if (!TextUtils.isEmpty(str)) {
            this.d = str;
            Preconditions.c(headers, "Argument must not be null");
            this.b = headers;
            return;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }
}
