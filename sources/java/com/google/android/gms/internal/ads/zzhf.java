package com.google.android.gms.internal.ads;

import android.net.Uri;
import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzhf {
    public static final /* synthetic */ int f = 0;

    /* renamed from: a, reason: collision with root package name */
    public final Uri f8483a;
    public final Map b;

    /* renamed from: c, reason: collision with root package name */
    public final long f8484c;
    public final long d;
    public final int e;

    static {
        zzal.a("media3.datasource");
    }

    public zzhf(Uri uri, long j, long j2) {
        this(uri, Collections.EMPTY_MAP, j, j2, 0);
    }

    public final String toString() {
        String obj = this.f8483a.toString();
        int length = obj.length();
        long j = this.f8484c;
        int length2 = String.valueOf(j).length();
        long j2 = this.d;
        int length3 = String.valueOf(j2).length();
        int i = this.e;
        StringBuilder sb = new StringBuilder(length + 15 + length2 + 2 + length3 + 8 + String.valueOf(i).length() + 1);
        android.support.v4.media.a.y(sb, "DataSpec[GET ", obj, ", ");
        sb.append(j);
        a.j(sb, ", ", j2, ", null, ");
        return android.support.v4.media.a.g(i, "]", sb);
    }

    public zzhf(Uri uri, Map map, long j, long j2, int i) {
        boolean z = false;
        boolean z2 = j >= 0;
        zzgqa.a(z2);
        zzgqa.a(z2);
        if (j2 <= 0) {
            j2 = j2 == -1 ? -1L : j2;
            zzgqa.a(z);
            uri.getClass();
            this.f8483a = uri;
            this.b = DesugarCollections.unmodifiableMap(new HashMap(map));
            this.f8484c = j;
            this.d = j2;
            this.e = i;
        }
        z = true;
        zzgqa.a(z);
        uri.getClass();
        this.f8483a = uri;
        this.b = DesugarCollections.unmodifiableMap(new HashMap(map));
        this.f8484c = j;
        this.d = j2;
        this.e = i;
    }
}
