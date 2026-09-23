package com.frostwire.jlibtorrent.alerts;

import com.frostwire.jlibtorrent.swig.libtorrent_jni;
import com.frostwire.jlibtorrent.swig.session_stats_alert;

/* loaded from: classes.dex */
public final class SessionStatsAlert extends AbstractAlert<session_stats_alert> {
    public final long a(int i) {
        session_stats_alert session_stats_alertVar = (session_stats_alert) this.f2640a;
        return libtorrent_jni.session_stats_alert_get_value(session_stats_alertVar.A, session_stats_alertVar, i);
    }
}
