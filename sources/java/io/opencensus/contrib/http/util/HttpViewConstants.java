package io.opencensus.contrib.http.util;

import io.opencensus.stats.Aggregation;
import io.opencensus.stats.BucketBoundaries;
import io.opencensus.stats.Measure;
import io.opencensus.stats.View;
import io.opencensus.tags.TagKey;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final class HttpViewConstants {

    /* renamed from: a, reason: collision with root package name */
    public static final View f21067a;
    public static final View b;

    /* renamed from: c, reason: collision with root package name */
    public static final View f21068c;
    public static final View d;
    public static final View e;
    public static final View f;
    public static final View g;
    public static final View h;

    static {
        Double valueOf = Double.valueOf(0.0d);
        Aggregation.Distribution a2 = Aggregation.Distribution.a(BucketBoundaries.a(DesugarCollections.unmodifiableList(Arrays.asList(valueOf, Double.valueOf(1024.0d), Double.valueOf(2048.0d), Double.valueOf(4096.0d), Double.valueOf(16384.0d), Double.valueOf(65536.0d), Double.valueOf(262144.0d), Double.valueOf(1048576.0d), Double.valueOf(4194304.0d), Double.valueOf(1.6777216E7d), Double.valueOf(6.7108864E7d), Double.valueOf(2.68435456E8d), Double.valueOf(1.073741824E9d), Double.valueOf(4.294967296E9d)))));
        Aggregation.Distribution a3 = Aggregation.Distribution.a(BucketBoundaries.a(DesugarCollections.unmodifiableList(Arrays.asList(valueOf, Double.valueOf(1.0d), Double.valueOf(2.0d), Double.valueOf(3.0d), Double.valueOf(4.0d), Double.valueOf(5.0d), Double.valueOf(6.0d), Double.valueOf(8.0d), Double.valueOf(10.0d), Double.valueOf(13.0d), Double.valueOf(16.0d), Double.valueOf(20.0d), Double.valueOf(25.0d), Double.valueOf(30.0d), Double.valueOf(40.0d), Double.valueOf(50.0d), Double.valueOf(65.0d), Double.valueOf(80.0d), Double.valueOf(100.0d), Double.valueOf(130.0d), Double.valueOf(160.0d), Double.valueOf(200.0d), Double.valueOf(250.0d), Double.valueOf(300.0d), Double.valueOf(400.0d), Double.valueOf(500.0d), Double.valueOf(650.0d), Double.valueOf(800.0d), Double.valueOf(1000.0d), Double.valueOf(2000.0d), Double.valueOf(5000.0d), Double.valueOf(10000.0d), Double.valueOf(20000.0d), Double.valueOf(50000.0d), Double.valueOf(100000.0d)))));
        View.Name b2 = View.Name.b("opencensus.io/http/client/completed_count");
        Measure.MeasureDouble measureDouble = HttpMeasureConstants.f21066c;
        TagKey tagKey = HttpMeasureConstants.i;
        TagKey tagKey2 = HttpMeasureConstants.g;
        List asList = Arrays.asList(tagKey, tagKey2);
        Aggregation.Count count = Aggregation.Count.f21072a;
        f21067a = View.a(b2, "Count of client-side HTTP requests completed", measureDouble, count, asList);
        b = View.a(View.Name.b("opencensus.io/http/client/sent_bytes"), "Size distribution of client-side HTTP request body", HttpMeasureConstants.f21065a, a2, Arrays.asList(tagKey, tagKey2));
        f21068c = View.a(View.Name.b("opencensus.io/http/client/received_bytes"), "Size distribution of client-side HTTP response body", HttpMeasureConstants.b, a2, Arrays.asList(tagKey, tagKey2));
        d = View.a(View.Name.b("opencensus.io/http/client/roundtrip_latency"), "Roundtrip latency distribution of client-side HTTP requests", measureDouble, a3, Arrays.asList(tagKey, tagKey2));
        View.Name b3 = View.Name.b("opencensus.io/http/server/completed_count");
        Measure.MeasureDouble measureDouble2 = HttpMeasureConstants.f;
        TagKey tagKey3 = HttpMeasureConstants.j;
        TagKey tagKey4 = HttpMeasureConstants.k;
        TagKey tagKey5 = HttpMeasureConstants.h;
        e = View.a(b3, "Count of HTTP server-side requests serving completed", measureDouble2, count, Arrays.asList(tagKey3, tagKey4, tagKey5));
        f = View.a(View.Name.b("opencensus.io/http/server/received_bytes"), "Size distribution of server-side HTTP request body", HttpMeasureConstants.d, a2, Arrays.asList(tagKey3, tagKey4, tagKey5));
        g = View.a(View.Name.b("opencensus.io/http/server/sent_bytes"), "Size distribution of server-side HTTP response body", HttpMeasureConstants.e, a2, Arrays.asList(tagKey3, tagKey4, tagKey5));
        h = View.a(View.Name.b("opencensus.io/http/server/server_latency"), "Latency distribution of server-side HTTP requests serving", measureDouble2, a3, Arrays.asList(tagKey3, tagKey4, tagKey5));
    }
}
