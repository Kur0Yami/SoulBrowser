package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class alert {

    /* renamed from: c, reason: collision with root package name */
    public static final alert_category_t f2658c = new alert_category_t(libtorrent_jni.alert_error_notification_get(), false);
    public static final alert_category_t d = new alert_category_t(libtorrent_jni.alert_peer_notification_get(), false);
    public static final alert_category_t e = new alert_category_t(libtorrent_jni.alert_port_mapping_notification_get(), false);
    public static final alert_category_t f = new alert_category_t(libtorrent_jni.alert_storage_notification_get(), false);
    public static final alert_category_t g = new alert_category_t(libtorrent_jni.alert_tracker_notification_get(), false);
    public static final alert_category_t h = new alert_category_t(libtorrent_jni.alert_connect_notification_get(), false);
    public static final alert_category_t i = new alert_category_t(libtorrent_jni.alert_status_notification_get(), false);
    public static final alert_category_t j = new alert_category_t(libtorrent_jni.alert_ip_block_notification_get(), false);
    public static final alert_category_t k = new alert_category_t(libtorrent_jni.alert_performance_warning_get(), false);
    public static final alert_category_t l = new alert_category_t(libtorrent_jni.alert_dht_notification_get(), false);
    public static final alert_category_t m = new alert_category_t(libtorrent_jni.alert_stats_notification_get(), false);
    public static final alert_category_t n = new alert_category_t(libtorrent_jni.alert_session_log_notification_get(), false);
    public static final alert_category_t o = new alert_category_t(libtorrent_jni.alert_torrent_log_notification_get(), false);
    public static final alert_category_t p = new alert_category_t(libtorrent_jni.alert_peer_log_notification_get(), false);
    public static final alert_category_t q = new alert_category_t(libtorrent_jni.alert_incoming_request_notification_get(), false);
    public static final alert_category_t r = new alert_category_t(libtorrent_jni.alert_dht_log_notification_get(), false);
    public static final alert_category_t s = new alert_category_t(libtorrent_jni.alert_dht_operation_notification_get(), false);
    public static final alert_category_t t = new alert_category_t(libtorrent_jni.alert_port_mapping_log_notification_get(), false);
    public static final alert_category_t u = new alert_category_t(libtorrent_jni.alert_picker_log_notification_get(), false);
    public static final alert_category_t v = new alert_category_t(libtorrent_jni.alert_file_progress_notification_get(), false);
    public static final alert_category_t w = new alert_category_t(libtorrent_jni.alert_piece_progress_notification_get(), false);
    public static final alert_category_t x = new alert_category_t(libtorrent_jni.alert_upload_notification_get(), false);
    public static final alert_category_t y = new alert_category_t(libtorrent_jni.alert_block_progress_notification_get(), false);
    public static final alert_category_t z = new alert_category_t(libtorrent_jni.alert_all_categories_get(), false);

    /* renamed from: a, reason: collision with root package name */
    public transient long f2659a;
    public transient boolean b;

    public alert(long j2, boolean z2) {
        this.b = z2;
        this.f2659a = j2;
    }

    public synchronized void a() {
        try {
            long j2 = this.f2659a;
            if (j2 != 0) {
                if (this.b) {
                    this.b = false;
                    libtorrent_jni.delete_alert(j2);
                }
                this.f2659a = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public String b() {
        return libtorrent_jni.alert_message(this.f2659a, this);
    }

    public int c() {
        return libtorrent_jni.alert_type(this.f2659a, this);
    }

    public String d() {
        return libtorrent_jni.alert_what(this.f2659a, this);
    }

    public void finalize() {
        a();
    }
}
