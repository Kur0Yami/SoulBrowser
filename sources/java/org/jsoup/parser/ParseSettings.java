package org.jsoup.parser;

import org.jsoup.internal.Normalizer;

/* loaded from: classes4.dex */
public class ParseSettings {
    public static final ParseSettings htmlDefault = new ParseSettings(false, false);
    public static final ParseSettings preserveCase = new ParseSettings(true, true);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f22593a;
    public final boolean b;

    public ParseSettings(boolean z, boolean z2) {
        this.f22593a = z;
        this.b = z2;
    }

    public String normalizeAttribute(String str) {
        String trim = str.trim();
        if (!this.b) {
            return Normalizer.lowerCase(trim);
        }
        return trim;
    }

    public String normalizeTag(String str) {
        String trim = str.trim();
        if (!this.f22593a) {
            return Normalizer.lowerCase(trim);
        }
        return trim;
    }

    public boolean preserveAttributeCase() {
        return this.b;
    }

    public boolean preserveTagCase() {
        return this.f22593a;
    }
}
