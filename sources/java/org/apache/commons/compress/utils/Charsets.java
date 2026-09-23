package org.apache.commons.compress.utils;

import java.nio.charset.Charset;

/* loaded from: classes4.dex */
public class Charsets {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f22329a;

    static {
        Charset.forName("ISO-8859-1");
        Charset.forName("US-ASCII");
        Charset.forName("UTF-16");
        Charset.forName("UTF-16BE");
        Charset.forName("UTF-16LE");
        f22329a = Charset.forName("UTF-8");
    }
}
