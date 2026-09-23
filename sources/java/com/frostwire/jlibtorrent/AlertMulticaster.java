package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.alerts.Alert;

/* loaded from: classes.dex */
final class AlertMulticaster implements AlertListener {

    /* renamed from: a, reason: collision with root package name */
    public final AlertListener f2599a;
    public final AlertListener b;

    public AlertMulticaster(AlertListener alertListener, AlertListener alertListener2) {
        this.f2599a = alertListener;
        this.b = alertListener2;
    }

    public static AlertListener c(AlertListener alertListener, AlertListener alertListener2) {
        if (alertListener != alertListener2 && alertListener != null) {
            if (alertListener instanceof AlertMulticaster) {
                AlertMulticaster alertMulticaster = (AlertMulticaster) alertListener;
                AlertListener alertListener3 = alertMulticaster.b;
                AlertListener alertListener4 = alertMulticaster.f2599a;
                if (alertListener2 == alertListener4) {
                    return alertListener3;
                }
                if (alertListener2 == alertListener3) {
                    return alertListener4;
                }
                AlertListener c2 = c(alertListener4, alertListener2);
                AlertListener c3 = c(alertListener3, alertListener2);
                if (c2 == alertListener4 && c3 == alertListener3) {
                    return alertMulticaster;
                }
                if (c2 == null) {
                    return c3;
                }
                if (c3 == null) {
                    return c2;
                }
                return new AlertMulticaster(c2, c3);
            }
            return alertListener;
        }
        return null;
    }

    @Override // com.frostwire.jlibtorrent.AlertListener
    public final void a(Alert alert) {
        this.f2599a.a(alert);
        this.b.a(alert);
    }

    @Override // com.frostwire.jlibtorrent.AlertListener
    public final int[] b() {
        return null;
    }
}
