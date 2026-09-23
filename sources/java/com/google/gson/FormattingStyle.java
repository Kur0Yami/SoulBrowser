package com.google.gson;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;

/* loaded from: classes3.dex */
public class FormattingStyle {
    public static final FormattingStyle d = new FormattingStyle(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, false);
    public static final FormattingStyle e = new FormattingStyle("\n", "  ", true);

    /* renamed from: a, reason: collision with root package name */
    public final String f12662a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f12663c;

    public FormattingStyle(String str, String str2, boolean z) {
        Objects.requireNonNull(str, "newline == null");
        if (str.matches("[\r\n]*")) {
            if (str2.matches("[ \t]*")) {
                this.f12662a = str;
                this.b = str2;
                this.f12663c = z;
                return;
            }
            throw new IllegalArgumentException("Only combinations of spaces and tabs are allowed in indent.");
        }
        throw new IllegalArgumentException("Only combinations of \\n and \\r are allowed in newline.");
    }
}
