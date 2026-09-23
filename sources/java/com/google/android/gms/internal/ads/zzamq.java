package com.google.android.gms.internal.ads;

import java.util.Locale;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
final class zzamq {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f4204a = Pattern.compile("\\{([^}]*)\\}");
    public static final Pattern b;

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f4205c;
    public static final Pattern d;

    static {
        String str = zzfj.f7405a;
        Locale locale = Locale.US;
        b = Pattern.compile(String.format(locale, "\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
        f4205c = Pattern.compile(String.format(locale, "\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
        d = Pattern.compile("\\\\an(\\d+)");
    }
}
