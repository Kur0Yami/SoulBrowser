package com.google.android.datatransport.runtime.dagger.internal;

import com.google.android.datatransport.runtime.dagger.MembersInjector;

/* loaded from: classes.dex */
public final class MembersInjectors {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class NoOpMembersInjector implements MembersInjector<Object> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ NoOpMembersInjector[] f2852c = {new Enum("INSTANCE", 0)};

        /* JADX INFO: Fake field, exist only in values array */
        NoOpMembersInjector EF5;

        public static NoOpMembersInjector valueOf(String str) {
            return (NoOpMembersInjector) Enum.valueOf(NoOpMembersInjector.class, str);
        }

        public static NoOpMembersInjector[] values() {
            return (NoOpMembersInjector[]) f2852c.clone();
        }
    }
}
