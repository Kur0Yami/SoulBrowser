package com.google.android.datatransport.runtime.backends;

import com.google.auto.value.AutoValue;

@AutoValue
/* loaded from: classes.dex */
public abstract class BackendResponse {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class Status {

        /* renamed from: c, reason: collision with root package name */
        public static final Status f2841c;
        public static final Status f;
        public static final Status g;
        public static final Status h;
        public static final /* synthetic */ Status[] i;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.datatransport.runtime.backends.BackendResponse$Status] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.android.datatransport.runtime.backends.BackendResponse$Status] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.google.android.datatransport.runtime.backends.BackendResponse$Status] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, com.google.android.datatransport.runtime.backends.BackendResponse$Status] */
        static {
            ?? r0 = new Enum("OK", 0);
            f2841c = r0;
            ?? r1 = new Enum("TRANSIENT_ERROR", 1);
            f = r1;
            ?? r3 = new Enum("FATAL_ERROR", 2);
            g = r3;
            ?? r5 = new Enum("INVALID_PAYLOAD", 3);
            h = r5;
            i = new Status[]{r0, r1, r3, r5};
        }

        public static Status valueOf(String str) {
            return (Status) Enum.valueOf(Status.class, str);
        }

        public static Status[] values() {
            return (Status[]) i.clone();
        }
    }

    public static BackendResponse a() {
        return new AutoValue_BackendResponse(Status.g, -1L);
    }

    public static BackendResponse d() {
        return new AutoValue_BackendResponse(Status.h, -1L);
    }

    public static BackendResponse e(long j) {
        return new AutoValue_BackendResponse(Status.f2841c, j);
    }

    public static BackendResponse f() {
        return new AutoValue_BackendResponse(Status.f, -1L);
    }

    public abstract long b();

    public abstract Status c();
}
