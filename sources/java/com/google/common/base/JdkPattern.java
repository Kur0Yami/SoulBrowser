package com.google.common.base;

import com.google.common.annotations.GwtIncompatible;
import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@GwtIncompatible
/* loaded from: classes3.dex */
final class JdkPattern extends CommonPattern implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final Pattern f12167c;

    /* loaded from: classes3.dex */
    public static final class JdkMatcher extends CommonMatcher {

        /* renamed from: a, reason: collision with root package name */
        public final Matcher f12168a;

        public JdkMatcher(Matcher matcher) {
            matcher.getClass();
            this.f12168a = matcher;
        }

        @Override // com.google.common.base.CommonMatcher
        public final int a() {
            return this.f12168a.end();
        }

        @Override // com.google.common.base.CommonMatcher
        public final boolean b(int i) {
            return this.f12168a.find(i);
        }

        @Override // com.google.common.base.CommonMatcher
        public final int c() {
            return this.f12168a.start();
        }
    }

    public JdkPattern(Pattern pattern) {
        pattern.getClass();
        this.f12167c = pattern;
    }

    public final String toString() {
        return this.f12167c.toString();
    }
}
