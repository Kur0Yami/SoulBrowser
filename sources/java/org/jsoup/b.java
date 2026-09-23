package org.jsoup;

import java.io.InputStream;
import javax.net.ssl.SSLContext;
import org.jsoup.Connection;
import org.jsoup.helper.RequestAuthenticator;

/* loaded from: classes4.dex */
public abstract /* synthetic */ class b {
    public static Connection.Request a(Connection.Request request, RequestAuthenticator requestAuthenticator) {
        throw new UnsupportedOperationException();
    }

    public static RequestAuthenticator b(Connection.Request request) {
        throw new UnsupportedOperationException();
    }

    public static Connection.Request c(Connection.Request request, InputStream inputStream) {
        throw new UnsupportedOperationException();
    }

    public static SSLContext d(Connection.Request request) {
        throw new UnsupportedOperationException();
    }

    public static Connection.Request e(Connection.Request request, SSLContext sSLContext) {
        throw new UnsupportedOperationException();
    }
}
