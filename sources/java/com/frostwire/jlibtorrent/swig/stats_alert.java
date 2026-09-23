package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class stats_alert extends torrent_alert {
    public static final int C;
    public static final alert_category_t D;
    public transient long B;

    static {
        libtorrent_jni.stats_alert_priority_get();
        C = libtorrent_jni.stats_alert_alert_type_get();
        D = new alert_category_t(libtorrent_jni.stats_alert_static_category_get(), false);
    }

    @Override // com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public final synchronized void a() {
        try {
            long j = this.B;
            if (j != 0) {
                if (this.b) {
                    this.b = false;
                    libtorrent_jni.delete_stats_alert(j);
                }
                this.B = 0L;
            }
            super.a();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public final String b() {
        return libtorrent_jni.stats_alert_message(this.B, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final int c() {
        return libtorrent_jni.stats_alert_type(this.B, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final String d() {
        return libtorrent_jni.stats_alert_what(this.B, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public final void finalize() {
        a();
    }

    /* loaded from: classes.dex */
    public static final class stats_channel {

        /* renamed from: c, reason: collision with root package name */
        public static final stats_channel f2728c = new stats_channel("upload_payload");
        public static final stats_channel d = new stats_channel("upload_protocol");
        public static final stats_channel e = new stats_channel("download_payload");
        public static final stats_channel f = new stats_channel("download_protocol");
        public static final stats_channel g = new stats_channel("upload_ip_protocol");
        public static final stats_channel h = new stats_channel("download_ip_protocol", libtorrent_jni.stats_alert_download_ip_protocol_get());
        public static final stats_channel i = new stats_channel("num_channels", libtorrent_jni.stats_alert_num_channels_get());
        public static int j = 0;

        /* renamed from: a, reason: collision with root package name */
        public final int f2729a;
        public final String b;

        public stats_channel(String str) {
            this.b = str;
            int i2 = j;
            j = i2 + 1;
            this.f2729a = i2;
        }

        public final String toString() {
            return this.b;
        }

        public stats_channel(String str, int i2) {
            this.b = str;
            this.f2729a = i2;
            j = i2 + 1;
        }
    }
}
