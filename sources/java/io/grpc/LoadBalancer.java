package io.grpc;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import j$.util.Objects;
import java.util.Arrays;
import javax.annotation.concurrent.Immutable;
import javax.annotation.concurrent.NotThreadSafe;
import javax.annotation.concurrent.ThreadSafe;

@ExperimentalApi
@NotThreadSafe
/* loaded from: classes3.dex */
public abstract class LoadBalancer {

    /* renamed from: io.grpc.LoadBalancer$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends SubchannelPicker {
        public final String toString() {
            return "EMPTY_PICKER";
        }
    }

    @ExperimentalApi
    /* loaded from: classes3.dex */
    public static final class CreateSubchannelArgs {

        @ExperimentalApi
        /* loaded from: classes3.dex */
        public static final class Builder {
        }

        @ExperimentalApi
        /* loaded from: classes3.dex */
        public static final class Key<T> {
            public final String toString() {
                throw null;
            }
        }

        public final String toString() {
            MoreObjects.ToStringHelper b = MoreObjects.b(this);
            b.b(null, "addrs");
            b.b(null, "attrs");
            b.b(Arrays.deepToString(null), "customOptions");
            return b.toString();
        }
    }

    @Deprecated
    /* loaded from: classes3.dex */
    public static final class ErrorPicker extends SubchannelPicker {
        public final String toString() {
            MoreObjects.ToStringHelper b = MoreObjects.b(this);
            b.b(null, "error");
            return b.toString();
        }
    }

    @ExperimentalApi
    @ThreadSafe
    /* loaded from: classes3.dex */
    public static abstract class Factory {
    }

    /* loaded from: classes3.dex */
    public static final class FixedResultPicker extends SubchannelPicker {
        public final boolean equals(Object obj) {
            if (!(obj instanceof FixedResultPicker)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            return "FixedResultPicker(null)";
        }
    }

    @ExperimentalApi
    @ThreadSafe
    /* loaded from: classes3.dex */
    public static abstract class Helper {

        /* renamed from: io.grpc.LoadBalancer$Helper$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements MetricRecorder {
        }
    }

    @Internal
    /* loaded from: classes3.dex */
    public interface PickDetailsConsumer {
    }

    @ExperimentalApi
    @Immutable
    /* loaded from: classes3.dex */
    public static final class PickResult {

        /* renamed from: a, reason: collision with root package name */
        public final Status f21040a;

        static {
            new PickResult(Status.d);
        }

        public PickResult(Status status) {
            Preconditions.h(status, "status");
            this.f21040a = status;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof PickResult) && Objects.equals(this.f21040a, ((PickResult) obj).f21040a)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(null, this.f21040a, null, Boolean.FALSE);
        }

        public final String toString() {
            MoreObjects.ToStringHelper b = MoreObjects.b(this);
            b.b(null, "subchannel");
            b.b(null, "streamTracerFactory");
            b.b(this.f21040a, "status");
            b.d("drop", false);
            b.b(null, "authority-override");
            return b.toString();
        }
    }

    @ExperimentalApi
    /* loaded from: classes3.dex */
    public static abstract class PickSubchannelArgs {

        /* renamed from: io.grpc.LoadBalancer$PickSubchannelArgs$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements PickDetailsConsumer {
        }
    }

    @ExperimentalApi
    /* loaded from: classes3.dex */
    public static final class ResolvedAddresses {

        @ExperimentalApi
        /* loaded from: classes3.dex */
        public static final class Builder {
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof ResolvedAddresses)) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return Objects.hash(null, null, null);
        }

        public final String toString() {
            MoreObjects.ToStringHelper b = MoreObjects.b(this);
            b.b(null, "addresses");
            b.b(null, "attributes");
            b.b(null, "loadBalancingPolicyConfig");
            return b.toString();
        }
    }

    @ExperimentalApi
    /* loaded from: classes3.dex */
    public static abstract class Subchannel {
    }

    @ExperimentalApi
    @ThreadSafe
    /* loaded from: classes3.dex */
    public static abstract class SubchannelPicker {
    }

    /* loaded from: classes3.dex */
    public interface SubchannelStateListener {
    }
}
