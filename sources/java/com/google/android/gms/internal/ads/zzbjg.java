package com.google.android.gms.internal.ads;

import android.graphics.Color;
import com.google.api.client.http.HttpStatusCodes;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbjg extends zzbjq {
    public static final int m;
    public static final int n;

    /* renamed from: c, reason: collision with root package name */
    public final String f4740c;
    public final ArrayList f;
    public final ArrayList g;
    public final int h;
    public final int i;
    public final int j;
    public final int k;
    public final int l;

    static {
        int rgb = Color.rgb(12, 174, 206);
        m = Color.rgb(HttpStatusCodes.STATUS_CODE_NO_CONTENT, HttpStatusCodes.STATUS_CODE_NO_CONTENT, HttpStatusCodes.STATUS_CODE_NO_CONTENT);
        n = rgb;
    }

    public zzbjg(String str, List list, Integer num, Integer num2, Integer num3, int i, int i2) {
        super("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
        int i3;
        int i4;
        int i5;
        this.f = new ArrayList();
        this.g = new ArrayList();
        this.f4740c = str;
        for (int i6 = 0; i6 < list.size(); i6++) {
            zzbjj zzbjjVar = (zzbjj) list.get(i6);
            this.f.add(zzbjjVar);
            this.g.add(zzbjjVar);
        }
        if (num != null) {
            i3 = num.intValue();
        } else {
            i3 = m;
        }
        this.h = i3;
        if (num2 != null) {
            i4 = num2.intValue();
        } else {
            i4 = n;
        }
        this.i = i4;
        if (num3 != null) {
            i5 = num3.intValue();
        } else {
            i5 = 12;
        }
        this.j = i5;
        this.k = i;
        this.l = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final String zzb() {
        return this.f4740c;
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final ArrayList zzc() {
        return this.g;
    }
}
