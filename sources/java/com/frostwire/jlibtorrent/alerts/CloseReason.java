package com.frostwire.jlibtorrent.alerts;

import com.frostwire.jlibtorrent.swig.close_reason_t;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class CloseReason {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ CloseReason[] f2643c;

    /* JADX INFO: Fake field, exist only in values array */
    CloseReason EF0;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        int i = close_reason_t.f2669c.f2670a;
        Enum r0 = new Enum("NONE", 0);
        int i2 = close_reason_t.d.f2670a;
        Enum r1 = new Enum("DUPLICATE_PEER_ID", 1);
        int i3 = close_reason_t.e.f2670a;
        Enum r3 = new Enum("TORRENT_REMOVED", 2);
        int i4 = close_reason_t.f.f2670a;
        Enum r5 = new Enum("NO_MEMORY", 3);
        int i5 = close_reason_t.g.f2670a;
        Enum r7 = new Enum("PORT_BLOCKED", 4);
        int i6 = close_reason_t.h.f2670a;
        Enum r9 = new Enum("BLOCKED", 5);
        int i7 = close_reason_t.i.f2670a;
        Enum r11 = new Enum("UPLOAD_TO_UPLOAD", 6);
        int i8 = close_reason_t.j.f2670a;
        Enum r13 = new Enum("NOT_INTERESTED_UPLOAD_ONLY", 7);
        int i9 = close_reason_t.k.f2670a;
        Enum r15 = new Enum("TIMEOUT", 8);
        int i10 = close_reason_t.l.f2670a;
        Enum r2 = new Enum("TIMED_OUT_INTEREST", 9);
        int i11 = close_reason_t.m.f2670a;
        Enum r4 = new Enum("TIMED_OUT_ACTIVITY", 10);
        int i12 = close_reason_t.n.f2670a;
        Enum r6 = new Enum("TIMED_OUT_HANDSHAKE", 11);
        int i13 = close_reason_t.o.f2670a;
        Enum r8 = new Enum("TIMED_OUT_REQUEST", 12);
        int i14 = close_reason_t.p.f2670a;
        Enum r10 = new Enum("PROTOCOL_BLOCKED", 13);
        int i15 = close_reason_t.q.f2670a;
        Enum r12 = new Enum("PEER_CHURN", 14);
        int i16 = close_reason_t.r.f2670a;
        Enum r14 = new Enum("TOO_MANY_CONNECTIONS", 15);
        int i17 = close_reason_t.s.f2670a;
        Enum r02 = new Enum("TOO_MANY_FILES", 16);
        int i18 = close_reason_t.t.f2670a;
        Enum r16 = new Enum("ENCRYPTION_ERROR", 17);
        int i19 = close_reason_t.u.f2670a;
        Enum r22 = new Enum("INVALID_INFO_HASH", 18);
        int i20 = close_reason_t.v.f2670a;
        Enum r03 = new Enum("SELF_CONNECTION", 19);
        int i21 = close_reason_t.w.f2670a;
        Enum r17 = new Enum("INVALID_METADATA", 20);
        int i22 = close_reason_t.x.f2670a;
        Enum r23 = new Enum("METADATA_TOO_BIG", 21);
        int i23 = close_reason_t.y.f2670a;
        Enum r04 = new Enum("MESSAGE_TOO_BIG", 22);
        int i24 = close_reason_t.z.f2670a;
        Enum r18 = new Enum("INVALID_MESSAGE_ID", 23);
        int i25 = close_reason_t.A.f2670a;
        Enum r05 = new Enum("INVALID_MESSAGE", 24);
        int i26 = close_reason_t.B.f2670a;
        Enum r19 = new Enum("INVALID_PIECE_MESSAGE", 25);
        int i27 = close_reason_t.C.f2670a;
        Enum r06 = new Enum("INVALID_HAVE_MESSAGE", 26);
        int i28 = close_reason_t.D.f2670a;
        Enum r110 = new Enum("INVALID_BITFIELD_MESSAGE", 27);
        int i29 = close_reason_t.E.f2670a;
        Enum r07 = new Enum("INVALID_CHOKE_MESSAGE", 28);
        int i30 = close_reason_t.F.f2670a;
        Enum r111 = new Enum("INVALID_UNCHOKE_MESSAGE", 29);
        int i31 = close_reason_t.G.f2670a;
        Enum r08 = new Enum("INVALID_INTERESTED_MESSAGE", 30);
        int i32 = close_reason_t.H.f2670a;
        Enum r112 = new Enum("INVALID_NOT_INTERESTED_MESSAGE", 31);
        int i33 = close_reason_t.I.f2670a;
        Enum r09 = new Enum("INVALID_REQUEST_MESSAGE", 32);
        int i34 = close_reason_t.J.f2670a;
        Enum r113 = new Enum("INVALID_REJECT_MESSAGE", 33);
        int i35 = close_reason_t.K.f2670a;
        Enum r010 = new Enum("INVALID_ALLOW_FAST_MESSAGE", 34);
        int i36 = close_reason_t.L.f2670a;
        Enum r114 = new Enum("NVALID_EXTENDED_MESSAGE", 35);
        int i37 = close_reason_t.M.f2670a;
        Enum r011 = new Enum("INVALID_CANCEL_MESSAGE", 36);
        int i38 = close_reason_t.N.f2670a;
        Enum r115 = new Enum("INVALID_DHT_PORT_MESSAGE", 37);
        int i39 = close_reason_t.O.f2670a;
        Enum r012 = new Enum("INVALID_SUGGEST_MESSAGE", 38);
        int i40 = close_reason_t.P.f2670a;
        Enum r116 = new Enum("INVALID_HAVE_ALL_MESSAGE", 39);
        int i41 = close_reason_t.Q.f2670a;
        Enum r013 = new Enum("INVALID_DONT_HAVE_MESSAGE", 40);
        int i42 = close_reason_t.R.f2670a;
        Enum r117 = new Enum("INVALID_HAVE_NONE_MESSAGE", 41);
        int i43 = close_reason_t.S.f2670a;
        Enum r014 = new Enum("INVALID_PEX_MESSAGE", 42);
        int i44 = close_reason_t.T.f2670a;
        Enum r118 = new Enum("INVALID_METADATA_REQUEST_MESSAGE", 43);
        int i45 = close_reason_t.U.f2670a;
        Enum r015 = new Enum("INVALID_METADATA_MESSAGE", 44);
        int i46 = close_reason_t.V.f2670a;
        Enum r119 = new Enum("INVALID_METADATA_OFFSET", 45);
        int i47 = close_reason_t.W.f2670a;
        Enum r016 = new Enum("REQUEST_WHEN_CHOKED", 46);
        int i48 = close_reason_t.X.f2670a;
        Enum r120 = new Enum("CORRUPT_PIECES", 47);
        int i49 = close_reason_t.Y.f2670a;
        Enum r017 = new Enum("PEX_MESSAGE_TOO_BIG", 48);
        int i50 = close_reason_t.Z.f2670a;
        f2643c = new CloseReason[]{r0, r1, r3, r5, r7, r9, r11, r13, r15, r2, r4, r6, r8, r10, r12, r14, r02, r16, r22, r03, r17, r23, r04, r18, r05, r19, r06, r110, r07, r111, r08, r112, r09, r113, r010, r114, r011, r115, r012, r116, r013, r117, r014, r118, r015, r119, r016, r120, r017, new Enum("PEX_TOO_FREQUENT", 49), new Enum("UNKNOWN", 50)};
    }

    public static CloseReason valueOf(String str) {
        return (CloseReason) Enum.valueOf(CloseReason.class, str);
    }

    public static CloseReason[] values() {
        return (CloseReason[]) f2643c.clone();
    }
}
