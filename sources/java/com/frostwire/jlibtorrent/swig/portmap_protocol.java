package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public final class portmap_protocol {

    /* renamed from: c, reason: collision with root package name */
    public static final portmap_protocol f2706c;
    public static final portmap_protocol d;
    public static final portmap_protocol e;
    public static final portmap_protocol[] f;
    public static int g;

    /* renamed from: a, reason: collision with root package name */
    public final int f2707a;
    public final String b;

    static {
        portmap_protocol portmap_protocolVar = new portmap_protocol("none");
        f2706c = portmap_protocolVar;
        portmap_protocol portmap_protocolVar2 = new portmap_protocol("tcp");
        d = portmap_protocolVar2;
        portmap_protocol portmap_protocolVar3 = new portmap_protocol("udp");
        e = portmap_protocolVar3;
        f = new portmap_protocol[]{portmap_protocolVar, portmap_protocolVar2, portmap_protocolVar3};
        g = 0;
    }

    public portmap_protocol(String str) {
        this.b = str;
        int i = g;
        g = i + 1;
        this.f2707a = i;
    }

    public static void a(int i) {
        portmap_protocol[] portmap_protocolVarArr = f;
        if (i >= portmap_protocolVarArr.length || i < 0 || portmap_protocolVarArr[i].f2707a != i) {
            for (portmap_protocol portmap_protocolVar : portmap_protocolVarArr) {
                if (portmap_protocolVar.f2707a == i) {
                    return;
                }
            }
            throw new IllegalArgumentException("No enum " + portmap_protocol.class + " with value " + i);
        }
    }

    public final String toString() {
        return this.b;
    }
}
