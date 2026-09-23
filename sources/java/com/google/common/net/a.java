package com.google.common.net;

import android.graphics.drawable.AnimatedImageDrawable;
import com.google.common.base.Function;
import com.google.common.collect.ImmutableMultiset;
import com.google.gson.internal.LinkedTreeMap;
import com.google.gson.internal.ObjectConstructor;
import j$.util.concurrent.ConcurrentHashMap;
import java.nio.file.FileVisitResult;
import java.nio.file.LinkOption;
import java.nio.file.StandardCopyOption;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentSkipListMap;
import kotlin.text.Typography;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements Function, ObjectConstructor {

    /* renamed from: c */
    public final /* synthetic */ int f12497c;

    public static /* bridge */ /* synthetic */ Class a() {
        return BasicFileAttributes.class;
    }

    public static /* bridge */ /* synthetic */ FileVisitResult d() {
        return FileVisitResult.SKIP_SUBTREE;
    }

    public static /* bridge */ /* synthetic */ FileVisitResult e(Object obj) {
        return (FileVisitResult) obj;
    }

    public static /* bridge */ /* synthetic */ LinkOption f() {
        return LinkOption.NOFOLLOW_LINKS;
    }

    public static /* bridge */ /* synthetic */ StandardCopyOption g() {
        return StandardCopyOption.REPLACE_EXISTING;
    }

    public static /* bridge */ /* synthetic */ boolean h(Object obj) {
        return obj instanceof AnimatedImageDrawable;
    }

    public static /* bridge */ /* synthetic */ FileVisitResult i() {
        return FileVisitResult.TERMINATE;
    }

    public static /* bridge */ /* synthetic */ StandardOpenOption j() {
        return StandardOpenOption.APPEND;
    }

    public static /* bridge */ /* synthetic */ FileVisitResult k() {
        return FileVisitResult.CONTINUE;
    }

    @Override // com.google.common.base.Function
    public Object apply(Object obj) {
        switch (this.f12497c) {
            case 0:
                String str = (String) obj;
                if (!MediaType.g.n(str) || str.isEmpty()) {
                    StringBuilder sb = new StringBuilder(str.length() + 16);
                    sb.append(Typography.quote);
                    for (int i = 0; i < str.length(); i++) {
                        char charAt = str.charAt(i);
                        if (charAt == '\r' || charAt == '\\' || charAt == '\"') {
                            sb.append('\\');
                        }
                        sb.append(charAt);
                    }
                    sb.append(Typography.quote);
                    return sb.toString();
                }
                return str;
            default:
                return ImmutableMultiset.q((Collection) obj);
        }
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public Object c() {
        switch (this.f12497c) {
            case 2:
                return new LinkedTreeMap(true);
            case 3:
                return new LinkedHashMap();
            case 4:
                return new TreeMap();
            case 5:
                return new ConcurrentHashMap();
            case 6:
                return new ConcurrentSkipListMap();
            case 7:
                return new ArrayList();
            case 8:
                return new LinkedHashSet();
            case 9:
                return new TreeSet();
            default:
                return new ArrayDeque();
        }
    }
}
