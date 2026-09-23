package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.auto.value.AutoValue;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@AutoValue
/* loaded from: classes.dex */
public abstract class SchedulerConfig {

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public Clock f2883a;
        public HashMap b;
    }

    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class ConfigValue {

        @AutoValue.Builder
        /* loaded from: classes.dex */
        public static abstract class Builder {
        }

        public abstract long a();

        public abstract Set b();

        public abstract long c();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class Flag {

        /* renamed from: c, reason: collision with root package name */
        public static final Flag f2884c;
        public static final Flag f;
        public static final Flag g;
        public static final /* synthetic */ Flag[] h;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig$Flag] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig$Flag] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig$Flag] */
        static {
            ?? r0 = new Enum("NETWORK_UNMETERED", 0);
            f2884c = r0;
            ?? r1 = new Enum("DEVICE_IDLE", 1);
            f = r1;
            ?? r3 = new Enum("DEVICE_CHARGING", 2);
            g = r3;
            h = new Flag[]{r0, r1, r3};
        }

        public static Flag valueOf(String str) {
            return (Flag) Enum.valueOf(Flag.class, str);
        }

        public static Flag[] values() {
            return (Flag[]) h.clone();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.datatransport.runtime.scheduling.jobscheduling.AutoValue_SchedulerConfig_ConfigValue$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.datatransport.runtime.scheduling.jobscheduling.AutoValue_SchedulerConfig_ConfigValue$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.datatransport.runtime.scheduling.jobscheduling.AutoValue_SchedulerConfig_ConfigValue$Builder, java.lang.Object] */
    public static SchedulerConfig b(Clock clock) {
        ?? obj = new Object();
        obj.b = new HashMap();
        ?? obj2 = new Object();
        Set set = Collections.EMPTY_SET;
        if (set != null) {
            obj2.f2879c = set;
            obj2.f2878a = 30000L;
            obj2.b = 86400000L;
            obj.b.put(Priority.f2755c, obj2.a());
            ?? obj3 = new Object();
            if (set != null) {
                obj3.f2879c = set;
                obj3.f2878a = 1000L;
                obj3.b = 86400000L;
                obj.b.put(Priority.g, obj3.a());
                ?? obj4 = new Object();
                if (set != null) {
                    obj4.f2879c = set;
                    obj4.f2878a = 86400000L;
                    obj4.b = 86400000L;
                    Set unmodifiableSet = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList(Flag.f)));
                    if (unmodifiableSet != null) {
                        obj4.f2879c = unmodifiableSet;
                        obj.b.put(Priority.f, obj4.a());
                        obj.f2883a = clock;
                        if (clock != null) {
                            if (obj.b.keySet().size() >= Priority.values().length) {
                                HashMap hashMap = obj.b;
                                obj.b = new HashMap();
                                return new AutoValue_SchedulerConfig(obj.f2883a, hashMap);
                            }
                            throw new IllegalStateException("Not all priorities have been configured");
                        }
                        throw new NullPointerException("missing required property: clock");
                    }
                    throw new NullPointerException("Null flags");
                }
                throw new NullPointerException("Null flags");
            }
            throw new NullPointerException("Null flags");
        }
        throw new NullPointerException("Null flags");
    }

    public abstract Clock a();

    public final long c(Priority priority, long j, int i) {
        long j2;
        long a2 = j - a().a();
        ConfigValue configValue = (ConfigValue) d().get(priority);
        long a3 = configValue.a();
        int i2 = i - 1;
        if (a3 > 1) {
            j2 = a3;
        } else {
            j2 = 2;
        }
        return Math.min(Math.max((long) (Math.pow(3.0d, i2) * a3 * Math.max(1.0d, Math.log(10000.0d) / Math.log(j2 * i2))), a2), configValue.c());
    }

    public abstract Map d();
}
