package org.jsoup;

import java.io.InputStream;
import java.net.URL;
import javax.net.ssl.SSLContext;
import org.jsoup.helper.RequestAuthenticator;

/* loaded from: classes4.dex */
public abstract /* synthetic */ class a {
    public static Connection a(Connection connection, RequestAuthenticator requestAuthenticator) {
        throw new UnsupportedOperationException();
    }

    public static Connection b(Connection connection, String str) {
        return connection.newRequest().url(str);
    }

    public static Connection c(Connection connection, URL url) {
        return connection.newRequest().url(url);
    }

    public static Connection d(Connection connection, Progress progress) {
        throw new UnsupportedOperationException();
    }

    public static Connection e(Connection connection, InputStream inputStream) {
        throw new UnsupportedOperationException();
    }

    public static Connection f(Connection connection, SSLContext sSLContext) {
        throw new UnsupportedOperationException();
    }
}
