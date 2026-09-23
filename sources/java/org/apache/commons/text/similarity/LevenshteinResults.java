package org.apache.commons.text.similarity;

import j$.util.Objects;

/* loaded from: classes4.dex */
public class LevenshteinResults {

    /* renamed from: a, reason: collision with root package name */
    public final Integer f22502a;
    public final Integer b;

    /* renamed from: c, reason: collision with root package name */
    public final Integer f22503c;
    public final Integer d;

    public LevenshteinResults(Integer num, Integer num2, Integer num3, Integer num4) {
        this.f22502a = num;
        this.b = num2;
        this.f22503c = num3;
        this.d = num4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            LevenshteinResults levenshteinResults = (LevenshteinResults) obj;
            if (Objects.equals(this.f22502a, levenshteinResults.f22502a) && Objects.equals(this.b, levenshteinResults.b) && Objects.equals(this.f22503c, levenshteinResults.f22503c) && Objects.equals(this.d, levenshteinResults.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f22502a, this.b, this.f22503c, this.d);
    }

    public final String toString() {
        return "Distance: " + this.f22502a + ", Insert: " + this.b + ", Delete: " + this.f22503c + ", Substitute: " + this.d;
    }
}
