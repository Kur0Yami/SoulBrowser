package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.address;
import com.frostwire.jlibtorrent.swig.libtorrent_jni;
import com.frostwire.jlibtorrent.swig.udp_endpoint;

/* loaded from: classes.dex */
public final class UdpEndpoint implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public final udp_endpoint f2638c;

    public UdpEndpoint(udp_endpoint udp_endpointVar) {
        this.f2638c = udp_endpointVar;
    }

    public final Object clone() {
        udp_endpoint udp_endpointVar = this.f2638c;
        return new UdpEndpoint(new udp_endpoint(libtorrent_jni.new_udp_endpoint__SWIG_2(udp_endpointVar.f2745a, udp_endpointVar), true));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("udp:");
        udp_endpoint udp_endpointVar = this.f2638c;
        sb.append(Address.a(new address(libtorrent_jni.udp_endpoint_address(udp_endpointVar.f2745a, udp_endpointVar))));
        sb.append(":");
        sb.append(libtorrent_jni.udp_endpoint_port(udp_endpointVar.f2745a, udp_endpointVar));
        return sb.toString();
    }
}
