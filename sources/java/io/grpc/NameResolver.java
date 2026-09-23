package io.grpc;

import com.google.common.base.MoreObjects;
import j$.util.Objects;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.concurrent.Immutable;
import javax.annotation.concurrent.ThreadSafe;

@ExperimentalApi
/* loaded from: classes3.dex */
public abstract class NameResolver {

    /* renamed from: io.grpc.NameResolver$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends Listener2 {
    }

    @ExperimentalApi
    /* loaded from: classes3.dex */
    public static final class Args {

        /* loaded from: classes3.dex */
        public static final class Builder {
        }

        @Immutable
        /* loaded from: classes3.dex */
        public static final class Key<T> {
            public final String toString() {
                return null;
            }
        }

        public final String toString() {
            MoreObjects.ToStringHelper b = MoreObjects.b(this);
            b.a(0, "defaultPort");
            b.b(null, "proxyDetector");
            b.b(null, "syncContext");
            b.b(null, "serviceConfigParser");
            b.b(null, "customArgs");
            b.b(null, "scheduledExecutorService");
            b.b(null, "channelLogger");
            b.b(null, "executor");
            b.b(null, "overrideAuthority");
            b.b(null, "metricRecorder");
            return b.toString();
        }
    }

    @ExperimentalApi
    /* loaded from: classes3.dex */
    public static final class ConfigOrError {
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && ConfigOrError.class == obj.getClass()) {
                if (Objects.equals(null, null)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(null, null);
        }

        public final String toString() {
            MoreObjects.ToStringHelper b = MoreObjects.b(this);
            b.b(null, "error");
            return b.toString();
        }
    }

    @ExperimentalApi
    /* loaded from: classes3.dex */
    public static abstract class Factory {
    }

    @ExperimentalApi
    @ThreadSafe
    /* loaded from: classes3.dex */
    public interface Listener {
    }

    @ExperimentalApi
    /* loaded from: classes3.dex */
    public static abstract class Listener2 implements Listener {
    }

    @ExperimentalApi
    /* loaded from: classes3.dex */
    public static final class ResolutionResult {

        @ExperimentalApi
        /* loaded from: classes3.dex */
        public static final class Builder {
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof ResolutionResult)) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return Objects.hash(null, null, null);
        }

        public final String toString() {
            MoreObjects.b(this);
            throw null;
        }
    }

    @ExperimentalApi
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface ResolutionResultAttr {
    }

    @ExperimentalApi
    /* loaded from: classes3.dex */
    public static abstract class ServiceConfigParser {
    }
}
