package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdFormat;
import j$.util.Objects;
import java.util.Locale;

/* loaded from: classes.dex */
final class zzfqk {

    /* renamed from: a, reason: collision with root package name */
    public final String f7566a;
    public final AdFormat b;

    /* renamed from: c, reason: collision with root package name */
    public final String f7567c;

    public /* synthetic */ zzfqk(zzfqj zzfqjVar) {
        this.f7566a = zzfqjVar.f7564a;
        this.b = zzfqjVar.b;
        this.f7567c = zzfqjVar.f7565c;
    }

    public final String a() {
        AdFormat adFormat = this.b;
        if (adFormat == null) {
            return "unknown";
        }
        return adFormat.name().toLowerCase(Locale.ENGLISH);
    }

    public final boolean equals(Object obj) {
        AdFormat adFormat;
        AdFormat adFormat2;
        if (obj instanceof zzfqk) {
            zzfqk zzfqkVar = (zzfqk) obj;
            if (this.f7566a.equals(zzfqkVar.f7566a) && (adFormat = this.b) != null && (adFormat2 = zzfqkVar.b) != null && adFormat.equals(adFormat2)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f7566a, this.b);
    }
}
