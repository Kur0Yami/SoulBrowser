package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class socks5_alert extends alert {
    public static final int A;
    public static final alert_category_t B;

    static {
        libtorrent_jni.socks5_alert_priority_get();
        A = libtorrent_jni.socks5_alert_alert_type_get();
        B = new alert_category_t(libtorrent_jni.socks5_alert_static_category_get(), false);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final synchronized void a() {
        super.a();
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final String b() {
        return libtorrent_jni.socks5_alert_message(0L, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final int c() {
        return libtorrent_jni.socks5_alert_type(0L, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final String d() {
        return libtorrent_jni.socks5_alert_what(0L, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final void finalize() {
        a();
    }
}
