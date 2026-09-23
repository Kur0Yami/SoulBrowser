package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
/* loaded from: classes3.dex */
abstract class AggregateFuture<InputT, OutputT> extends AggregateFutureState<OutputT> {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class ReleaseResourcesReason {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ ReleaseResourcesReason[] f12569c = {new Enum("OUTPUT_FUTURE_DONE", 0), new Enum("ALL_INPUT_FUTURES_PROCESSED", 1)};

        /* JADX INFO: Fake field, exist only in values array */
        ReleaseResourcesReason EF5;

        public static ReleaseResourcesReason valueOf(String str) {
            return (ReleaseResourcesReason) Enum.valueOf(ReleaseResourcesReason.class, str);
        }

        public static ReleaseResourcesReason[] values() {
            return (ReleaseResourcesReason[]) f12569c.clone();
        }
    }

    static {
        new LazyLogger(AggregateFuture.class);
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void d() {
        q();
    }

    public void q() {
    }
}
