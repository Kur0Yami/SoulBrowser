package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class swig_plugin {
    public boolean a(string_view string_viewVar, udp_endpoint udp_endpointVar, bdecode_node bdecode_nodeVar, entry entryVar) {
        if (getClass() == swig_plugin.class) {
            return libtorrent_jni.swig_plugin_on_dht_request(0L, this, string_viewVar.f2734a, string_viewVar, udp_endpointVar.f2745a, udp_endpointVar, bdecode_nodeVar.f2665a, bdecode_nodeVar, entryVar.f2681a, entryVar);
        }
        return libtorrent_jni.swig_plugin_on_dht_requestSwigExplicitswig_plugin(0L, this, string_viewVar.f2734a, string_viewVar, udp_endpointVar.f2745a, udp_endpointVar, bdecode_nodeVar.f2665a, bdecode_nodeVar, entryVar.f2681a, entryVar);
    }

    public final void finalize() {
        synchronized (this) {
        }
    }
}
