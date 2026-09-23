package com.google.auth.oauth2;

/* loaded from: classes3.dex */
public interface IdTokenProvider {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class Option {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Option[] f12118c = {new Enum("FORMAT_FULL", 0), new Enum("LICENSES_TRUE", 1), new Enum("INCLUDE_EMAIL", 2)};

        /* JADX INFO: Fake field, exist only in values array */
        Option EF5;

        public static Option valueOf(String str) {
            return (Option) Enum.valueOf(Option.class, str);
        }

        public static Option[] values() {
            return (Option[]) f12118c.clone();
        }
    }
}
