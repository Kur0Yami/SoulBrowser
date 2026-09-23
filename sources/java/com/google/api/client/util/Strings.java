package com.google.api.client.util;

/* loaded from: classes3.dex */
public final class Strings {
    private Strings() {
    }

    public static boolean isNullOrEmpty(String str) {
        if (str != null && !str.isEmpty()) {
            return false;
        }
        return true;
    }
}
