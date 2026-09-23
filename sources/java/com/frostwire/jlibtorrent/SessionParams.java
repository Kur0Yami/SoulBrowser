package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.libtorrent_jni;
import com.frostwire.jlibtorrent.swig.session_params;
import com.frostwire.jlibtorrent.swig.settings_pack;

/* loaded from: classes.dex */
public class SessionParams {

    /* renamed from: a, reason: collision with root package name */
    public final session_params f2617a;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.frostwire.jlibtorrent.swig.session_params] */
    public SessionParams(SettingsPack settingsPack) {
        long j;
        settings_pack settings_packVar = settingsPack.f2620a;
        if (settings_packVar == null) {
            j = 0;
        } else {
            j = settings_packVar.f2720a;
        }
        long new_session_params__SWIG_0 = libtorrent_jni.new_session_params__SWIG_0(j, settings_packVar);
        ?? obj = new Object();
        obj.b = true;
        obj.f2719a = new_session_params__SWIG_0;
        this.f2617a = obj;
    }
}
