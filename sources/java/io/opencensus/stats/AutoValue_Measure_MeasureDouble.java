package io.opencensus.stats;

import android.support.v4.media.a;
import io.opencensus.stats.Measure;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class AutoValue_Measure_MeasureDouble extends Measure.MeasureDouble {

    /* renamed from: a, reason: collision with root package name */
    public final String f21074a;
    public final String b;

    public AutoValue_Measure_MeasureDouble(String str, String str2) {
        this.f21074a = str;
        this.b = str2;
    }

    @Override // io.opencensus.stats.Measure.MeasureDouble
    public final String b() {
        return this.b;
    }

    @Override // io.opencensus.stats.Measure.MeasureDouble
    public final String c() {
        return this.f21074a;
    }

    @Override // io.opencensus.stats.Measure.MeasureDouble
    public final String d() {
        return "ms";
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Measure.MeasureDouble) {
                Measure.MeasureDouble measureDouble = (Measure.MeasureDouble) obj;
                if (this.f21074a.equals(measureDouble.c()) && this.b.equals(measureDouble.b()) && "ms".equals(measureDouble.d())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return ((((this.f21074a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ 3494;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MeasureDouble{name=");
        sb.append(this.f21074a);
        sb.append(", description=");
        return a.p(sb, this.b, ", unit=ms}");
    }
}
