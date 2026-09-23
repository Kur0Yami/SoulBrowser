package com.frostwire.jlibtorrent.alerts;

import com.frostwire.jlibtorrent.swig.alert;

/* loaded from: classes.dex */
public abstract class AbstractAlert<T extends alert> implements Alert<T> {

    /* renamed from: a, reason: collision with root package name */
    public final alert f2640a;
    public final AlertType b;

    public AbstractAlert(alert alertVar) {
        this.f2640a = alertVar;
        this.b = AlertType.w[alertVar.c()];
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.b);
        sb.append(" - ");
        alert alertVar = this.f2640a;
        sb.append(alertVar.d());
        sb.append(" - ");
        sb.append(alertVar.b());
        return sb.toString();
    }

    @Override // com.frostwire.jlibtorrent.alerts.Alert
    public final AlertType type() {
        return this.b;
    }
}
