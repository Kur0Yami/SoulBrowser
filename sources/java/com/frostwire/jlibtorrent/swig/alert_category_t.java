package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class alert_category_t {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2660a;
    public transient boolean b;

    public alert_category_t(long j, boolean z) {
        this.b = z;
        this.f2660a = j;
    }

    public final alert_category_t a(alert_category_t alert_category_tVar) {
        long j;
        long j2 = this.f2660a;
        if (alert_category_tVar == null) {
            j = 0;
        } else {
            j = alert_category_tVar.f2660a;
        }
        return new alert_category_t(libtorrent_jni.alert_category_t_or_(j2, this, j, alert_category_tVar), true);
    }

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2660a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_alert_category_t(j);
                    }
                    this.f2660a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
