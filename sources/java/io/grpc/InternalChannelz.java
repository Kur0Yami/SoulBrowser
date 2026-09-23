package io.grpc;

import com.google.common.base.MoreObjects;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.logging.Logger;
import javax.annotation.concurrent.Immutable;

@Internal
/* loaded from: classes3.dex */
public final class InternalChannelz {

    @Immutable
    /* loaded from: classes3.dex */
    public static final class ChannelStats {

        /* loaded from: classes3.dex */
        public static final class Builder {
        }
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static final class ChannelTrace {

        /* loaded from: classes3.dex */
        public static final class Builder {
        }

        @Immutable
        /* loaded from: classes3.dex */
        public static final class Event {

            /* loaded from: classes3.dex */
            public static final class Builder {
            }

            /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
            /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
            /* loaded from: classes3.dex */
            public static final class Severity {

                /* renamed from: c, reason: collision with root package name */
                public static final /* synthetic */ Severity[] f21038c = {new Enum("CT_UNKNOWN", 0), new Enum("CT_INFO", 1), new Enum("CT_WARNING", 2), new Enum("CT_ERROR", 3)};

                /* JADX INFO: Fake field, exist only in values array */
                Severity EF5;

                public static Severity valueOf(String str) {
                    return (Severity) Enum.valueOf(Severity.class, str);
                }

                public static Severity[] values() {
                    return (Severity[]) f21038c.clone();
                }
            }

            public final boolean equals(Object obj) {
                if (obj instanceof Event) {
                    return true;
                }
                return false;
            }

            public final int hashCode() {
                return Objects.hash(null, null, 0L, null, null);
            }

            public final String toString() {
                MoreObjects.ToStringHelper b = MoreObjects.b(this);
                b.b(null, "description");
                b.b(null, "severity");
                b.c("timestampNanos");
                b.b(null, "channelRef");
                b.b(null, "subchannelRef");
                return b.toString();
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class OtherSecurity {
    }

    /* loaded from: classes3.dex */
    public static final class RootChannelList {
    }

    /* loaded from: classes3.dex */
    public static final class Security {
    }

    /* loaded from: classes3.dex */
    public static final class ServerList {
    }

    /* loaded from: classes3.dex */
    public static final class ServerSocketMap extends ConcurrentSkipListMap<Long, InternalInstrumented<SocketStats>> {
    }

    /* loaded from: classes3.dex */
    public static final class ServerSocketsList {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static final class ServerStats {

        /* loaded from: classes3.dex */
        public static final class Builder {
        }
    }

    /* loaded from: classes3.dex */
    public static final class SocketOptions {

        /* loaded from: classes3.dex */
        public static final class Builder {
        }
    }

    /* loaded from: classes3.dex */
    public static final class SocketStats {
    }

    /* loaded from: classes3.dex */
    public static final class TcpInfo {

        /* loaded from: classes3.dex */
        public static final class Builder {
        }
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static final class Tls {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static final class TransportStats {
    }

    static {
        Logger.getLogger(InternalChannelz.class.getName());
        new ConcurrentSkipListMap();
        new ConcurrentSkipListMap();
        new ConcurrentHashMap();
        new ConcurrentHashMap();
        new ConcurrentHashMap();
    }
}
