package com.frostwire.jlibtorrent;

import android.support.v4.media.a;
import com.frostwire.jlibtorrent.swig.address;
import com.frostwire.jlibtorrent.swig.libtorrent_jni;
import com.frostwire.jlibtorrent.swig.tcp_endpoint;

/* loaded from: classes.dex */
public final class TcpEndpoint implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public final tcp_endpoint f2625c;

    public TcpEndpoint(tcp_endpoint tcp_endpointVar) {
        this.f2625c = tcp_endpointVar;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.frostwire.jlibtorrent.swig.tcp_endpoint, java.lang.Object] */
    public final Object clone() {
        long j;
        tcp_endpoint tcp_endpointVar = this.f2625c;
        if (tcp_endpointVar == null) {
            j = 0;
        } else {
            j = tcp_endpointVar.f2735a;
        }
        long new_tcp_endpoint__SWIG_2 = libtorrent_jni.new_tcp_endpoint__SWIG_2(j, tcp_endpointVar);
        ?? obj = new Object();
        obj.b = true;
        obj.f2735a = new_tcp_endpoint__SWIG_2;
        return new TcpEndpoint(obj);
    }

    public final String toString() {
        tcp_endpoint tcp_endpointVar = this.f2625c;
        tcp_endpointVar.getClass();
        address addressVar = new address(libtorrent_jni.tcp_endpoint_address(tcp_endpointVar.f2735a, tcp_endpointVar));
        String a2 = Address.a(addressVar);
        StringBuilder sb = new StringBuilder();
        if (!libtorrent_jni.address_is_v4(addressVar.f2657a, addressVar)) {
            a2 = a.l("[", a2, "]");
        }
        sb.append(a2);
        sb.append(":");
        sb.append(libtorrent_jni.tcp_endpoint_port(tcp_endpointVar.f2735a, tcp_endpointVar));
        return sb.toString();
    }
}
