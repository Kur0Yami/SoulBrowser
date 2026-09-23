package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.operation_t;
import com.google.api.client.http.HttpMethods;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class Operation {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ Operation[] f2606c;

    /* JADX INFO: Fake field, exist only in values array */
    Operation EF0;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        int i = operation_t.f2689c.f2690a;
        Enum r0 = new Enum("UNKNOWN", 0);
        int i2 = operation_t.d.f2690a;
        Enum r1 = new Enum("BITTORRENT", 1);
        int i3 = operation_t.e.f2690a;
        Enum r3 = new Enum("IOCONTROL", 2);
        int i4 = operation_t.f.f2690a;
        Enum r5 = new Enum("GETPEERNAME", 3);
        int i5 = operation_t.g.f2690a;
        Enum r7 = new Enum("GETNAME", 4);
        int i6 = operation_t.h.f2690a;
        Enum r9 = new Enum("ALLOC_RECVBUF", 5);
        int i7 = operation_t.i.f2690a;
        Enum r11 = new Enum("ALLOC_SNDBUF", 6);
        int i8 = operation_t.j.f2690a;
        Enum r13 = new Enum("FILE_WRITE", 7);
        int i9 = operation_t.k.f2690a;
        Enum r15 = new Enum("FILE_READ", 8);
        int i10 = operation_t.l.f2690a;
        Enum r2 = new Enum("FILE", 9);
        int i11 = operation_t.m.f2690a;
        Enum r4 = new Enum("SOCK_WRITE", 10);
        int i12 = operation_t.n.f2690a;
        Enum r6 = new Enum("SOCK_READ", 11);
        int i13 = operation_t.o.f2690a;
        Enum r8 = new Enum("SOCK_OPEN", 12);
        int i14 = operation_t.p.f2690a;
        Enum r10 = new Enum("SOCK_BIND", 13);
        int i15 = operation_t.q.f2690a;
        Enum r12 = new Enum("AVAILABLE", 14);
        int i16 = operation_t.r.f2690a;
        Enum r14 = new Enum("ENCRYPTION", 15);
        int i17 = operation_t.s.f2690a;
        Enum r02 = new Enum(HttpMethods.CONNECT, 16);
        int i18 = operation_t.t.f2690a;
        Enum r16 = new Enum("SSL_HANDSHAKE", 17);
        int i19 = operation_t.u.f2690a;
        Enum r22 = new Enum("GET_INTERFACE", 18);
        int i20 = operation_t.v.f2690a;
        Enum r03 = new Enum("SOCK_LISTEN", 19);
        int i21 = operation_t.w.f2690a;
        Enum r17 = new Enum("SOCK_BIND_TO_DEVICE", 20);
        int i22 = operation_t.x.f2690a;
        Enum r23 = new Enum("SOCK_ACCEPT", 21);
        int i23 = operation_t.y.f2690a;
        Enum r04 = new Enum("PARSE_ADDRESS", 22);
        int i24 = operation_t.z.f2690a;
        Enum r18 = new Enum("ENUM_IF", 23);
        int i25 = operation_t.A.f2690a;
        Enum r05 = new Enum("FILE_STAT", 24);
        int i26 = operation_t.B.f2690a;
        Enum r19 = new Enum("FILE_COPY", 25);
        int i27 = operation_t.C.f2690a;
        Enum r06 = new Enum("FILE_FALLOCATE", 26);
        int i28 = operation_t.D.f2690a;
        Enum r110 = new Enum("FILE_HARD_LINK", 27);
        int i29 = operation_t.E.f2690a;
        Enum r07 = new Enum("FILE_REMOVE", 28);
        int i30 = operation_t.F.f2690a;
        Enum r111 = new Enum("FILE_RENAME", 29);
        int i31 = operation_t.G.f2690a;
        Enum r08 = new Enum("FILE_OPEN", 30);
        int i32 = operation_t.H.f2690a;
        Enum r112 = new Enum("MKDIR", 31);
        int i33 = operation_t.I.f2690a;
        Enum r09 = new Enum("CHECK_RESUME", 32);
        int i34 = operation_t.J.f2690a;
        Enum r113 = new Enum("EXCEPTION", 33);
        int i35 = operation_t.K.f2690a;
        Enum r010 = new Enum("ALLOC_CACHE_PIECE", 34);
        int i36 = operation_t.L.f2690a;
        Enum r114 = new Enum("PARTFILE_MOVE", 35);
        int i37 = operation_t.M.f2690a;
        Enum r011 = new Enum("PARTFILE_READ", 36);
        int i38 = operation_t.N.f2690a;
        Enum r115 = new Enum("PARTFILE_WRITE", 37);
        int i39 = operation_t.O.f2690a;
        f2606c = new Operation[]{r0, r1, r3, r5, r7, r9, r11, r13, r15, r2, r4, r6, r8, r10, r12, r14, r02, r16, r22, r03, r17, r23, r04, r18, r05, r19, r06, r110, r07, r111, r08, r112, r09, r113, r010, r114, r011, r115, new Enum("HOSTNAME_LOOKUP", 38)};
    }

    public static Operation valueOf(String str) {
        return (Operation) Enum.valueOf(Operation.class, str);
    }

    public static Operation[] values() {
        return (Operation[]) f2606c.clone();
    }
}
