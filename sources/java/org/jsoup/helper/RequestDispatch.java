package org.jsoup.helper;

import java.lang.reflect.Constructor;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes4.dex */
class RequestDispatch {

    /* renamed from: a, reason: collision with root package name */
    public static final Constructor f22540a;

    static {
        try {
            f22540a = Class.forName("org.jsoup.helper.HttpClientExecutor").getConstructor(HttpConnection.Request.class, HttpConnection.Response.class);
        } catch (Exception unused) {
        }
    }
}
