package com.mycompany.app.torrent;

import com.frostwire.jlibtorrent.AlertListener;
import com.frostwire.jlibtorrent.DhtRoutingBucket;
import com.frostwire.jlibtorrent.alerts.Alert;
import com.frostwire.jlibtorrent.alerts.AlertType;
import com.frostwire.jlibtorrent.alerts.DhtStatsAlert;
import com.frostwire.jlibtorrent.swig.dht_routing_bucket;
import com.frostwire.jlibtorrent.swig.dht_routing_bucket_vector;
import com.frostwire.jlibtorrent.swig.dht_stats_alert;
import com.frostwire.jlibtorrent.swig.libtorrent_jni;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public abstract class TorAlertDhtListener implements AlertListener {
    /* JADX WARN: Type inference failed for: r5v0, types: [com.frostwire.jlibtorrent.swig.dht_routing_bucket, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.Object, com.frostwire.jlibtorrent.swig.dht_routing_bucket_vector] */
    @Override // com.frostwire.jlibtorrent.AlertListener
    public final void a(Alert alert) {
        dht_routing_bucket_vector dht_routing_bucket_vectorVar;
        if (alert instanceof DhtStatsAlert) {
            dht_stats_alert dht_stats_alertVar = (dht_stats_alert) ((DhtStatsAlert) alert).f2640a;
            long dht_stats_alert_routing_table_get = libtorrent_jni.dht_stats_alert_routing_table_get(dht_stats_alertVar.A, dht_stats_alertVar);
            if (dht_stats_alert_routing_table_get == 0) {
                dht_routing_bucket_vectorVar = null;
            } else {
                ?? obj = new Object();
                obj.f2680a = dht_stats_alert_routing_table_get;
                dht_routing_bucket_vectorVar = obj;
            }
            int dht_routing_bucket_vector_size = (int) libtorrent_jni.dht_routing_bucket_vector_size(dht_routing_bucket_vectorVar.f2680a, dht_routing_bucket_vectorVar);
            ArrayList arrayList = new ArrayList(dht_routing_bucket_vector_size);
            int i = 0;
            for (int i2 = 0; i2 < dht_routing_bucket_vector_size; i2++) {
                long dht_routing_bucket_vector_get = libtorrent_jni.dht_routing_bucket_vector_get(dht_routing_bucket_vectorVar.f2680a, dht_routing_bucket_vectorVar, i2);
                ?? obj2 = new Object();
                obj2.f2679a = dht_routing_bucket_vector_get;
                arrayList.add(new DhtRoutingBucket(obj2));
            }
            int size = arrayList.size();
            while (i < size) {
                Object obj3 = arrayList.get(i);
                i++;
                dht_routing_bucket dht_routing_bucketVar = ((DhtRoutingBucket) obj3).f2601a;
                libtorrent_jni.dht_routing_bucket_num_nodes_get(dht_routing_bucketVar.f2679a, dht_routing_bucketVar);
            }
        }
    }

    @Override // com.frostwire.jlibtorrent.AlertListener
    public final int[] b() {
        return new int[]{AlertType.DHT_STATS.f2641c};
    }
}
