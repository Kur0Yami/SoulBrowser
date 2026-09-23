package io.opencensus.trace.config;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import io.opencensus.internal.Utils;
import io.opencensus.trace.Sampler;
import io.opencensus.trace.samplers.Samplers;
import javax.annotation.concurrent.Immutable;
import kotlin.uuid.Uuid;

@Immutable
/* loaded from: classes3.dex */
public abstract class TraceParams {

    /* loaded from: classes3.dex */
    public static abstract class Builder {
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [io.opencensus.trace.config.AutoValue_TraceParams$Builder, java.lang.Object] */
    static {
        String str;
        boolean z;
        boolean z2;
        boolean z3;
        Sampler a2 = Samplers.a();
        ?? obj = new Object();
        obj.f21119a = a2;
        obj.b = 32;
        obj.f21120c = 32;
        obj.d = Integer.valueOf(Uuid.SIZE_BITS);
        obj.e = 32;
        if (obj.f21119a == null) {
            str = " sampler";
        } else {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (obj.b == null) {
            str = str.concat(" maxNumberOfAttributes");
        }
        if (obj.f21120c == null) {
            str = a.k(str, " maxNumberOfAnnotations");
        }
        if (obj.d == null) {
            str = a.k(str, " maxNumberOfMessageEvents");
        }
        if (obj.e == null) {
            str = a.k(str, " maxNumberOfLinks");
        }
        if (str.isEmpty()) {
            int intValue = obj.b.intValue();
            int intValue2 = obj.f21120c.intValue();
            int intValue3 = obj.d.intValue();
            int intValue4 = obj.e.intValue();
            boolean z4 = false;
            if (intValue > 0) {
                z = true;
            } else {
                z = false;
            }
            Utils.a("maxNumberOfAttributes", z);
            if (intValue2 > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            Utils.a("maxNumberOfAnnotations", z2);
            if (intValue3 > 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            Utils.a("maxNumberOfMessageEvents", z3);
            if (intValue4 > 0) {
                z4 = true;
            }
            Utils.a("maxNumberOfLinks", z4);
            return;
        }
        throw new IllegalStateException("Missing required properties:".concat(str));
    }

    public abstract int a();

    public abstract int b();

    public abstract int c();

    public abstract int d();

    public abstract Sampler e();
}
