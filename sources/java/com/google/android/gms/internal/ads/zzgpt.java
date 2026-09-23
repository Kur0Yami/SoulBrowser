package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
final class zzgpt extends zzgpq implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final Pattern f8200c;

    public zzgpt(Pattern pattern) {
        pattern.getClass();
        this.f8200c = pattern;
    }

    @Override // com.google.android.gms.internal.ads.zzgpq
    public final zzgpp a(CharSequence charSequence) {
        return new zzgps(this.f8200c.matcher(charSequence));
    }

    public final String toString() {
        return this.f8200c.toString();
    }
}
