package io.opencensus.stats;

import android.support.v4.media.a;
import io.opencensus.stats.Measure;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class AutoValue_Measure_MeasureLong extends Measure.MeasureLong {

    /* renamed from: a, reason: collision with root package name */
    public final String f21075a;
    public final String b;

    public AutoValue_Measure_MeasureLong(String str, String str2) {
        this.f21075a = str;
        this.b = str2;
    }

    @Override // io.opencensus.stats.Measure.MeasureLong
    public final String b() {
        return this.b;
    }

    @Override // io.opencensus.stats.Measure.MeasureLong
    public final String c() {
        return this.f21075a;
    }

    @Override // io.opencensus.stats.Measure.MeasureLong
    public final String d() {
        return "By";
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Measure.MeasureLong) {
                Measure.MeasureLong measureLong = (Measure.MeasureLong) obj;
                if (this.f21075a.equals(measureLong.c()) && this.b.equals(measureLong.b()) && "By".equals(measureLong.d())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return ((((this.f21075a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ 2167;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MeasureLong{name=");
        sb.append(this.f21075a);
        sb.append(", description=");
        return a.p(sb, this.b, ", unit=By}");
    }
}
