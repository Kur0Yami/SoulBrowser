package io.opencensus.tags;

import android.support.v4.media.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class AutoValue_TagKey extends TagKey {

    /* renamed from: a, reason: collision with root package name */
    public final String f21082a;

    public AutoValue_TagKey(String str) {
        this.f21082a = str;
    }

    @Override // io.opencensus.tags.TagKey
    public final String b() {
        return this.f21082a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof TagKey) {
            return this.f21082a.equals(((TagKey) obj).b());
        }
        return false;
    }

    public final int hashCode() {
        return this.f21082a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return a.p(new StringBuilder("TagKey{name="), this.f21082a, "}");
    }
}
