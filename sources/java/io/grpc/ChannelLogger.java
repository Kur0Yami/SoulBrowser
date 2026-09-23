package io.grpc;

import javax.annotation.concurrent.ThreadSafe;

@ExperimentalApi
@ThreadSafe
/* loaded from: classes3.dex */
public abstract class ChannelLogger {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class ChannelLogLevel {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ ChannelLogLevel[] f21028c = {new Enum("DEBUG", 0), new Enum("INFO", 1), new Enum("WARNING", 2), new Enum("ERROR", 3)};

        /* JADX INFO: Fake field, exist only in values array */
        ChannelLogLevel EF5;

        public static ChannelLogLevel valueOf(String str) {
            return (ChannelLogLevel) Enum.valueOf(ChannelLogLevel.class, str);
        }

        public static ChannelLogLevel[] values() {
            return (ChannelLogLevel[]) f21028c.clone();
        }
    }
}
