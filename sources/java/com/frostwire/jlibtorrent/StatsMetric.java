package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.libtorrent_jni;
import com.frostwire.jlibtorrent.swig.metric_type_t;

/* loaded from: classes.dex */
public final class StatsMetric {

    /* renamed from: a, reason: collision with root package name */
    public static final int f2622a = libtorrent_jni.find_metric_idx_s("net.sent_payload_bytes");
    public static final int b = libtorrent_jni.find_metric_idx_s("net.sent_bytes");

    /* renamed from: c, reason: collision with root package name */
    public static final int f2623c = libtorrent_jni.find_metric_idx_s("net.sent_ip_overhead_bytes");
    public static final int d = libtorrent_jni.find_metric_idx_s("net.recv_payload_bytes");
    public static final int e = libtorrent_jni.find_metric_idx_s("net.recv_bytes");
    public static final int f = libtorrent_jni.find_metric_idx_s("net.recv_ip_overhead_bytes");
    public static final int g = libtorrent_jni.find_metric_idx_s("dht.dht_nodes");
    public static final int h = metric_type_t.f2687c.f2688a;
    public static final int i = metric_type_t.d.f2688a;

    public final String toString() {
        String str;
        if (h == 0) {
            str = "counter";
        } else if (i == 0) {
            str = "gauge";
        } else {
            str = "unknown";
        }
        return "null:0:".concat(str);
    }
}
