package io.opencensus.contrib.http.util;

import io.opencensus.stats.Measure;
import io.opencensus.tags.TagKey;

/* loaded from: classes3.dex */
public final class HttpMeasureConstants {

    /* renamed from: a, reason: collision with root package name */
    public static final Measure.MeasureLong f21065a = Measure.MeasureLong.a("opencensus.io/http/client/sent_bytes", "Client-side total bytes sent in request body (uncompressed)");
    public static final Measure.MeasureLong b = Measure.MeasureLong.a("opencensus.io/http/client/received_bytes", "Client-side total bytes received in response bodies (uncompressed)");

    /* renamed from: c, reason: collision with root package name */
    public static final Measure.MeasureDouble f21066c = Measure.MeasureDouble.a("opencensus.io/http/client/roundtrip_latency", "Client-side time between first byte of request headers sent to last byte of response received, or terminal error");
    public static final Measure.MeasureLong d = Measure.MeasureLong.a("opencensus.io/http/server/received_bytes", "Server-side total bytes received in request body (uncompressed)");
    public static final Measure.MeasureLong e = Measure.MeasureLong.a("opencensus.io/http/server/sent_bytes", "Server-side total bytes sent in response bodies (uncompressed)");
    public static final Measure.MeasureDouble f = Measure.MeasureDouble.a("opencensus.io/http/server/server_latency", "Server-side time between first byte of request headers received to last byte of response sent, or terminal error");
    public static final TagKey g;
    public static final TagKey h;
    public static final TagKey i;
    public static final TagKey j;
    public static final TagKey k;

    static {
        TagKey.a("http_client_host");
        TagKey.a("http_server_host");
        g = TagKey.a("http_client_status");
        h = TagKey.a("http_server_status");
        TagKey.a("http_client_path");
        TagKey.a("http_server_path");
        i = TagKey.a("http_client_method");
        j = TagKey.a("http_server_method");
        k = TagKey.a("http_server_route");
    }
}
