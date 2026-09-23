package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.portmap_transport;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class PortmapTransport {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ PortmapTransport[] f2609c;

    /* JADX INFO: Fake field, exist only in values array */
    PortmapTransport EF0;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        int i = portmap_transport.f2708c.f2709a;
        Enum r0 = new Enum("NAT_PMP", 0);
        int i2 = portmap_transport.d.f2709a;
        f2609c = new PortmapTransport[]{r0, new Enum("UPNP", 1)};
    }

    public static PortmapTransport valueOf(String str) {
        return (PortmapTransport) Enum.valueOf(PortmapTransport.class, str);
    }

    public static PortmapTransport[] values() {
        return (PortmapTransport[]) f2609c.clone();
    }
}
