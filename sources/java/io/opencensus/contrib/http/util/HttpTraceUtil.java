package io.opencensus.contrib.http.util;

import io.opencensus.trace.Status;

/* loaded from: classes3.dex */
public final class HttpTraceUtil {
    static {
        Status status = Status.e;
        status.a("Continue");
        status.a("Switching Protocols");
        status.a("Payment Required");
        status.a("Method Not Allowed");
        status.a("Not Acceptable");
        status.a("Proxy Authentication Required");
        status.a("Request Time-out");
        status.a("Conflict");
        status.a("Gone");
        status.a("Length Required");
        status.a("Precondition Failed");
        status.a("Request Entity Too Large");
        status.a("Request-URI Too Large");
        status.a("Unsupported Media Type");
        status.a("Requested range not satisfiable");
        status.a("Expectation Failed");
        status.a("Internal Server Error");
        status.a("Bad Gateway");
        status.a("HTTP Version not supported");
    }
}
