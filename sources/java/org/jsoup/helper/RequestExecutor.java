package org.jsoup.helper;

import java.io.InputStream;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes4.dex */
abstract class RequestExecutor {

    /* renamed from: a, reason: collision with root package name */
    public final HttpConnection.Request f22541a;
    public final HttpConnection.Response b;

    public RequestExecutor(HttpConnection.Request request, HttpConnection.Response response) {
        this.f22541a = request;
        this.b = response;
    }

    public abstract HttpConnection.Response a();

    public abstract InputStream b();
}
