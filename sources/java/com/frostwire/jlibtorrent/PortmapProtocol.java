package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.portmap_protocol;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class PortmapProtocol {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ PortmapProtocol[] f2608c;

    /* JADX INFO: Fake field, exist only in values array */
    PortmapProtocol EF0;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        int i = portmap_protocol.f2706c.f2707a;
        Enum r0 = new Enum("NONE", 0);
        int i2 = portmap_protocol.d.f2707a;
        Enum r1 = new Enum("TCP", 1);
        int i3 = portmap_protocol.e.f2707a;
        f2608c = new PortmapProtocol[]{r0, r1, new Enum("UDP", 2)};
    }

    public static PortmapProtocol valueOf(String str) {
        return (PortmapProtocol) Enum.valueOf(PortmapProtocol.class, str);
    }

    public static PortmapProtocol[] values() {
        return (PortmapProtocol[]) f2608c.clone();
    }
}
