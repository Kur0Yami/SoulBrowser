package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.remove_flags_t;
import com.frostwire.jlibtorrent.swig.reopen_network_flags_t;
import com.frostwire.jlibtorrent.swig.save_state_flags_t;
import com.frostwire.jlibtorrent.swig.session_flags_t;
import com.frostwire.jlibtorrent.swig.session_handle;

/* loaded from: classes.dex */
public class SessionHandle {

    /* renamed from: a, reason: collision with root package name */
    public static final session_flags_t f2611a;
    public static final save_state_flags_t b;

    /* renamed from: c, reason: collision with root package name */
    public static final save_state_flags_t f2612c;
    public static final save_state_flags_t d;
    public static final remove_flags_t e;
    public static final remove_flags_t f;
    public static final reopen_network_flags_t g;

    static {
        new Logger(java.util.logging.Logger.getLogger(SessionHandle.class.getName()));
        f2611a = session_handle.h;
        b = session_handle.f2717c;
        f2612c = session_handle.d;
        d = session_handle.e;
        e = session_handle.f;
        f = session_handle.g;
        g = session_handle.i;
    }
}
