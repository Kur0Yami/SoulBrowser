package org.apache.commons.lang3;

import kotlin.uuid.Uuid;

/* loaded from: classes4.dex */
public class CharUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f22342a = 0;

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, java.util.function.IntFunction] */
    static {
        ArrayUtils.c(new String[Uuid.SIZE_BITS], new Object());
    }

    public static boolean a(char c2) {
        if (c2 < 'A' || c2 > 'Z') {
            if (c2 >= 'a' && c2 <= 'z') {
                return true;
            }
            return false;
        }
        return true;
    }
}
