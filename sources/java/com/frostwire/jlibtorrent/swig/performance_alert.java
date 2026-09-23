package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class performance_alert extends torrent_alert {
    public static final int C;
    public static final alert_category_t D;
    public transient long B;

    static {
        libtorrent_jni.performance_alert_priority_get();
        C = libtorrent_jni.performance_alert_alert_type_get();
        D = new alert_category_t(libtorrent_jni.performance_alert_static_category_get(), false);
    }

    @Override // com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public final synchronized void a() {
        try {
            long j = this.B;
            if (j != 0) {
                if (this.b) {
                    this.b = false;
                    libtorrent_jni.delete_performance_alert(j);
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
        return libtorrent_jni.performance_alert_message(this.B, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final int c() {
        return libtorrent_jni.performance_alert_type(this.B, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final String d() {
        return libtorrent_jni.performance_alert_what(this.B, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public final void finalize() {
        a();
    }

    /* loaded from: classes.dex */
    public static final class performance_warning_t {

        /* renamed from: c, reason: collision with root package name */
        public static final performance_warning_t f2702c = new performance_warning_t("outstanding_disk_buffer_limit_reached");
        public static final performance_warning_t d = new performance_warning_t("outstanding_request_limit_reached");
        public static final performance_warning_t e = new performance_warning_t("upload_limit_too_low");
        public static final performance_warning_t f = new performance_warning_t("download_limit_too_low");
        public static final performance_warning_t g = new performance_warning_t("send_buffer_watermark_too_low");
        public static final performance_warning_t h = new performance_warning_t("too_many_optimistic_unchoke_slots");
        public static final performance_warning_t i = new performance_warning_t("too_high_disk_queue_limit");
        public static final performance_warning_t j;
        public static final performance_warning_t k;
        public static final performance_warning_t l;
        public static int m;

        /* renamed from: a, reason: collision with root package name */
        public final int f2703a;
        public final String b;

        static {
            new performance_warning_t("aio_limit_reached");
            j = new performance_warning_t(libtorrent_jni.performance_alert_too_few_outgoing_ports_get());
            k = new performance_warning_t("too_few_file_descriptors");
            l = new performance_warning_t("num_warnings");
            m = 0;
        }

        public performance_warning_t(String str) {
            this.b = str;
            int i2 = m;
            m = i2 + 1;
            this.f2703a = i2;
        }

        public final String toString() {
            return this.b;
        }

        public performance_warning_t(int i2) {
            this.b = "too_few_outgoing_ports";
            this.f2703a = i2;
            m = i2 + 1;
        }
    }
}
