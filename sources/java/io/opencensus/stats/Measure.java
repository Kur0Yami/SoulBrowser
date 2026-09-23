package io.opencensus.stats;

import io.opencensus.internal.StringUtils;
import io.opencensus.internal.Utils;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class Measure {

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class MeasureDouble extends Measure {
        public static MeasureDouble a(String str, String str2) {
            boolean z;
            if (StringUtils.a(str) && str.length() <= 255) {
                z = true;
            } else {
                z = false;
            }
            Utils.a("Name should be a ASCII string with a length no greater than 255 characters.", z);
            return new AutoValue_Measure_MeasureDouble(str, str2);
        }

        public abstract String b();

        public abstract String c();

        public abstract String d();
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class MeasureLong extends Measure {
        public static MeasureLong a(String str, String str2) {
            boolean z;
            if (StringUtils.a(str) && str.length() <= 255) {
                z = true;
            } else {
                z = false;
            }
            Utils.a("Name should be a ASCII string with a length no greater than 255 characters.", z);
            return new AutoValue_Measure_MeasureLong(str, str2);
        }

        public abstract String b();

        public abstract String c();

        public abstract String d();
    }
}
