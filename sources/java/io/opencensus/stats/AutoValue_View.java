package io.opencensus.stats;

import io.opencensus.stats.View;
import java.util.List;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: Access modifiers changed from: package-private */
@Immutable
/* loaded from: classes3.dex */
public final class AutoValue_View extends View {
    public final View.Name b;

    /* renamed from: c, reason: collision with root package name */
    public final String f21076c;
    public final Measure d;
    public final Aggregation e;
    public final List f;

    public AutoValue_View(View.Name name, String str, Measure measure, Aggregation aggregation, List list) {
        this.b = name;
        this.f21076c = str;
        if (measure != null) {
            this.d = measure;
            this.e = aggregation;
            if (list != null) {
                this.f = list;
                return;
            }
            throw new NullPointerException("Null columns");
        }
        throw new NullPointerException("Null measure");
    }

    @Override // io.opencensus.stats.View
    public final Aggregation b() {
        return this.e;
    }

    @Override // io.opencensus.stats.View
    public final List c() {
        return this.f;
    }

    @Override // io.opencensus.stats.View
    public final String d() {
        return this.f21076c;
    }

    @Override // io.opencensus.stats.View
    public final Measure e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof View) {
                View view = (View) obj;
                if (this.b.equals(view.f()) && this.f21076c.equals(view.d()) && this.d.equals(view.e()) && this.e.equals(view.b()) && this.f.equals(view.c()) && View.AggregationWindow.Cumulative.f21081a.equals(view.g())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    @Override // io.opencensus.stats.View
    public final View.Name f() {
        return this.b;
    }

    @Override // io.opencensus.stats.View
    public final View.AggregationWindow g() {
        return View.AggregationWindow.Cumulative.f21081a;
    }

    public final int hashCode() {
        return ((((((((((this.b.hashCode() ^ 1000003) * 1000003) ^ this.f21076c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.e.hashCode()) * 1000003) ^ this.f.hashCode()) * 1000003) ^ 1;
    }

    public final String toString() {
        return "View{name=" + this.b + ", description=" + this.f21076c + ", measure=" + this.d + ", aggregation=" + this.e + ", columns=" + this.f + ", window=" + View.AggregationWindow.Cumulative.f21081a + "}";
    }
}
