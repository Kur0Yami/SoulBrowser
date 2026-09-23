package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.bdecode_node;
import com.frostwire.jlibtorrent.swig.byte_vector;
import com.frostwire.jlibtorrent.swig.entry;
import com.frostwire.jlibtorrent.swig.libtorrent_jni;
import com.frostwire.jlibtorrent.swig.string_view;
import com.frostwire.jlibtorrent.swig.swig_plugin;
import com.frostwire.jlibtorrent.swig.udp_endpoint;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
class SwigPlugin extends swig_plugin {
    @Override // com.frostwire.jlibtorrent.swig.swig_plugin
    public final boolean a(string_view string_viewVar, udp_endpoint udp_endpointVar, bdecode_node bdecode_nodeVar, entry entryVar) {
        byte[] a2 = Vectors.a(new byte_vector(libtorrent_jni.string_view_to_bytes(string_viewVar.f2734a, string_viewVar)));
        int i = 0;
        while (i < a2.length && a2[i] != 0) {
            i++;
        }
        if (i != 0) {
            try {
                new String(a2, 0, i, "US-ASCII");
            } catch (UnsupportedEncodingException e) {
                throw new RuntimeException(e);
            }
        }
        throw null;
    }
}
