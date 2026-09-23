package io.opencensus.stats;

import android.support.v4.media.a;
import io.opencensus.stats.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class AutoValue_View_Name extends View.Name {

    /* renamed from: a, reason: collision with root package name */
    public final String f21077a;

    public AutoValue_View_Name(String str) {
        this.f21077a = str;
    }

    @Override // io.opencensus.stats.View.Name
    public final String a() {
        return this.f21077a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof View.Name) {
            return this.f21077a.equals(((View.Name) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return this.f21077a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return a.p(new StringBuilder("Name{asString="), this.f21077a, "}");
    }
}
