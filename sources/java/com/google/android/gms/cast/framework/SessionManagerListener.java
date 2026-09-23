package com.google.android.gms.cast.framework;

import com.google.android.gms.cast.framework.Session;

/* loaded from: classes.dex */
public interface SessionManagerListener<T extends Session> {
    void d(Session session, int i);

    void e(Session session, String str);

    void f(Session session, int i);

    void h(Session session, String str);

    void j(Session session, int i);

    void k(Session session, boolean z);

    void m(Session session, int i);

    void n(Session session);

    void o(Session session);
}
