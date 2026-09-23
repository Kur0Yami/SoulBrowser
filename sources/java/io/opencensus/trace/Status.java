package io.opencensus.trace;

import android.support.v4.media.a;
import io.opencensus.internal.Utils;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.TreeMap;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public final class Status {

    /* renamed from: c, reason: collision with root package name */
    public static final List f21110c;
    public static final Status d;
    public static final Status e;
    public static final Status f;
    public static final Status g;
    public static final Status h;
    public static final Status i;
    public static final Status j;
    public static final Status k;

    /* renamed from: a, reason: collision with root package name */
    public final CanonicalCode f21111a;
    public final String b;

    /* loaded from: classes3.dex */
    public enum CanonicalCode {
        OK(0),
        CANCELLED(1),
        UNKNOWN(2),
        INVALID_ARGUMENT(3),
        DEADLINE_EXCEEDED(4),
        NOT_FOUND(5),
        ALREADY_EXISTS(6),
        PERMISSION_DENIED(7),
        RESOURCE_EXHAUSTED(8),
        FAILED_PRECONDITION(9),
        ABORTED(10),
        OUT_OF_RANGE(11),
        UNIMPLEMENTED(12),
        INTERNAL(13),
        UNAVAILABLE(14),
        DATA_LOSS(15),
        UNAUTHENTICATED(16);


        /* renamed from: c, reason: collision with root package name */
        public final int f21112c;

        CanonicalCode(int i) {
            this.f21112c = i;
        }

        public final Status a() {
            return (Status) Status.f21110c.get(this.f21112c);
        }
    }

    static {
        TreeMap treeMap = new TreeMap();
        for (CanonicalCode canonicalCode : CanonicalCode.values()) {
            Status status = (Status) treeMap.put(Integer.valueOf(canonicalCode.f21112c), new Status(canonicalCode, null));
            if (status != null) {
                throw new IllegalStateException("Code value duplication between " + status.f21111a.name() + " & " + canonicalCode.name());
            }
        }
        f21110c = DesugarCollections.unmodifiableList(new ArrayList(treeMap.values()));
        d = CanonicalCode.OK.a();
        CanonicalCode.CANCELLED.a();
        e = CanonicalCode.UNKNOWN.a();
        f = CanonicalCode.INVALID_ARGUMENT.a();
        CanonicalCode.DEADLINE_EXCEEDED.a();
        g = CanonicalCode.NOT_FOUND.a();
        CanonicalCode.ALREADY_EXISTS.a();
        h = CanonicalCode.PERMISSION_DENIED.a();
        i = CanonicalCode.UNAUTHENTICATED.a();
        CanonicalCode.RESOURCE_EXHAUSTED.a();
        j = CanonicalCode.FAILED_PRECONDITION.a();
        CanonicalCode.ABORTED.a();
        CanonicalCode.OUT_OF_RANGE.a();
        CanonicalCode.UNIMPLEMENTED.a();
        CanonicalCode.INTERNAL.a();
        k = CanonicalCode.UNAVAILABLE.a();
        CanonicalCode.DATA_LOSS.a();
    }

    public Status(CanonicalCode canonicalCode, String str) {
        Utils.b(canonicalCode, "canonicalCode");
        this.f21111a = canonicalCode;
        this.b = str;
    }

    public final Status a(String str) {
        boolean equals;
        String str2 = this.b;
        if (str2 == null) {
            if (str == null) {
                equals = true;
            } else {
                equals = false;
            }
        } else {
            equals = str2.equals(str);
        }
        if (equals) {
            return this;
        }
        return new Status(this.f21111a, str);
    }

    public final boolean equals(Object obj) {
        boolean equals;
        if (obj != this) {
            if (obj instanceof Status) {
                Status status = (Status) obj;
                if (this.f21111a == status.f21111a) {
                    String str = status.b;
                    String str2 = this.b;
                    if (str2 == null) {
                        if (str == null) {
                            equals = true;
                        } else {
                            equals = false;
                        }
                    } else {
                        equals = str2.equals(str);
                    }
                    if (equals) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f21111a, this.b});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Status{canonicalCode=");
        sb.append(this.f21111a);
        sb.append(", description=");
        return a.p(sb, this.b, "}");
    }
}
