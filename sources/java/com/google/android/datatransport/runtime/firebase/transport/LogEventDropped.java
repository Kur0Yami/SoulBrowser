package com.google.android.datatransport.runtime.firebase.transport;

import com.google.firebase.encoders.proto.ProtoEnum;

/* loaded from: classes.dex */
public final class LogEventDropped {

    /* renamed from: a, reason: collision with root package name */
    public final long f2859a;
    public final Reason b;

    /* loaded from: classes.dex */
    public static final class Builder {
    }

    /* loaded from: classes.dex */
    public enum Reason implements ProtoEnum {
        REASON_UNKNOWN(0),
        MESSAGE_TOO_OLD(1),
        CACHE_FULL(2),
        PAYLOAD_TOO_BIG(3),
        MAX_RETRIES_REACHED(4),
        INVALID_PAYLOD(5),
        SERVER_ERROR(6);


        /* renamed from: c, reason: collision with root package name */
        public final int f2860c;

        Reason(int i) {
            this.f2860c = i;
        }

        @Override // com.google.firebase.encoders.proto.ProtoEnum
        public final int a() {
            return this.f2860c;
        }
    }

    public LogEventDropped(long j, Reason reason) {
        this.f2859a = j;
        this.b = reason;
    }
}
