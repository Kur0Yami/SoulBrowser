package com.google.gson.internal.sql;

import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.bind.DefaultDateTypeAdapter;
import java.sql.Date;
import java.sql.Timestamp;

/* loaded from: classes3.dex */
public final class SqlTypesSupport {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f12752a;
    public static final TypeAdapterFactory b;

    /* renamed from: c, reason: collision with root package name */
    public static final TypeAdapterFactory f12753c;
    public static final TypeAdapterFactory d;

    /* renamed from: com.google.gson.internal.sql.SqlTypesSupport$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends DefaultDateTypeAdapter.DateType<Date> {
    }

    /* renamed from: com.google.gson.internal.sql.SqlTypesSupport$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 extends DefaultDateTypeAdapter.DateType<Timestamp> {
    }

    static {
        boolean z;
        try {
            Class.forName("java.sql.Date");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        f12752a = z;
        if (z) {
            b = SqlDateTypeAdapter.b;
            f12753c = SqlTimeTypeAdapter.b;
            d = SqlTimestampTypeAdapter.b;
        } else {
            b = null;
            f12753c = null;
            d = null;
        }
    }
}
