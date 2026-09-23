package org.apache.commons.text.lookup;

/* loaded from: classes4.dex */
final class IllegalArgumentExceptions {
    public static IllegalArgumentException a(Exception exc, String str, Object... objArr) {
        return new IllegalArgumentException(String.format(str, objArr), exc);
    }

    public static IllegalArgumentException b(String str, Object... objArr) {
        return new IllegalArgumentException(String.format(str, objArr));
    }
}
