package org.apache.commons.lang3.time;

import java.util.Calendar;
import java.util.Iterator;

/* loaded from: classes4.dex */
public class DateUtils {

    /* loaded from: classes4.dex */
    public static final class DateIterator implements Iterator<Calendar> {
        @Override // java.util.Iterator
        public final boolean hasNext() {
            throw null;
        }

        @Override // java.util.Iterator
        public final Calendar next() {
            throw null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static final class ModifyType {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ ModifyType[] f22406c = {new Enum("TRUNCATE", 0), new Enum("ROUND", 1), new Enum("CEILING", 2)};

        /* JADX INFO: Fake field, exist only in values array */
        ModifyType EF5;

        public static ModifyType valueOf(String str) {
            return (ModifyType) Enum.valueOf(ModifyType.class, str);
        }

        public static ModifyType[] values() {
            return (ModifyType[]) f22406c.clone();
        }
    }
}
