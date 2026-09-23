package com.google.android.gms.internal.ads;

import android.text.SpannableStringBuilder;
import android.util.Pair;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* loaded from: classes.dex */
final class zzamv {

    /* renamed from: a, reason: collision with root package name */
    public final String f4212a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4213c;
    public final long d;
    public final long e;
    public final zzanb f;
    public final String[] g;
    public final String h;
    public final String i;
    public final zzamv j;
    public final HashMap k;
    public final HashMap l;
    public ArrayList m;

    public zzamv(String str, String str2, long j, long j2, zzanb zzanbVar, String[] strArr, String str3, String str4, zzamv zzamvVar) {
        boolean z;
        this.f4212a = str;
        this.b = str2;
        this.i = str4;
        this.f = zzanbVar;
        this.g = strArr;
        if (str2 != null) {
            z = true;
        } else {
            z = false;
        }
        this.f4213c = z;
        this.d = j;
        this.e = j2;
        str3.getClass();
        this.h = str3;
        this.j = zzamvVar;
        this.k = new HashMap();
        this.l = new HashMap();
    }

    public static zzamv a(String str) {
        return new zzamv(null, str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " "), -9223372036854775807L, -9223372036854775807L, null, null, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, null, null);
    }

    public static zzamv b(String str, long j, long j2, zzanb zzanbVar, String[] strArr, String str2, String str3, zzamv zzamvVar) {
        return new zzamv(str, null, j, j2, zzanbVar, strArr, str2, str3, zzamvVar);
    }

    public static SpannableStringBuilder i(String str, TreeMap treeMap) {
        if (!treeMap.containsKey(str)) {
            zzcw zzcwVar = new zzcw();
            zzcwVar.a(new SpannableStringBuilder());
            treeMap.put(str, zzcwVar);
        }
        CharSequence charSequence = ((zzcw) treeMap.get(str)).f5522a;
        charSequence.getClass();
        return (SpannableStringBuilder) charSequence;
    }

    public final boolean c(long j) {
        long j2 = this.d;
        long j3 = this.e;
        if (j2 == -9223372036854775807L) {
            if (j3 == -9223372036854775807L) {
                return true;
            }
            j2 = -9223372036854775807L;
        }
        if (j2 <= j && j3 == -9223372036854775807L) {
            return true;
        }
        if (j2 != -9223372036854775807L || j >= j3) {
            return j2 <= j && j < j3;
        }
        return true;
    }

    public final zzamv d(int i) {
        ArrayList arrayList = this.m;
        if (arrayList != null) {
            return (zzamv) arrayList.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public final int e() {
        ArrayList arrayList = this.m;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public final void f(TreeSet treeSet, boolean z) {
        String str = this.f4212a;
        boolean equals = "p".equals(str);
        if (z || equals || ("div".equals(str) && this.i != null)) {
            long j = this.d;
            if (j != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.e;
            if (j2 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.m != null) {
            for (int i = 0; i < this.m.size(); i++) {
                zzamv zzamvVar = (zzamv) this.m.get(i);
                boolean z2 = true;
                if (!z && !equals) {
                    z2 = false;
                }
                zzamvVar.f(treeSet, z2);
            }
        }
    }

    public final void g(long j, String str, ArrayList arrayList) {
        String str2;
        String str3 = this.h;
        boolean equals = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED.equals(str3);
        boolean c2 = c(j);
        if (true != equals) {
            str = str3;
        }
        if (c2 && "div".equals(this.f4212a) && (str2 = this.i) != null) {
            arrayList.add(new Pair(str, str2));
            return;
        }
        for (int i = 0; i < e(); i++) {
            d(i).g(j, str, arrayList);
        }
    }

    public final void h(long j, boolean z, String str, TreeMap treeMap) {
        String str2;
        long j2;
        boolean z2;
        HashMap hashMap = this.k;
        hashMap.clear();
        HashMap hashMap2 = this.l;
        hashMap2.clear();
        String str3 = this.f4212a;
        if (!"metadata".equals(str3)) {
            String str4 = this.h;
            if (true != RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED.equals(str4)) {
                str2 = str4;
            } else {
                str2 = str;
            }
            if (this.f4213c && z) {
                SpannableStringBuilder i = i(str2, treeMap);
                String str5 = this.b;
                str5.getClass();
                i.append((CharSequence) str5);
                return;
            }
            if ("br".equals(str3) && z) {
                i(str2, treeMap).append('\n');
                return;
            }
            if (c(j)) {
                for (Map.Entry entry : treeMap.entrySet()) {
                    String str6 = (String) entry.getKey();
                    CharSequence charSequence = ((zzcw) entry.getValue()).f5522a;
                    charSequence.getClass();
                    hashMap.put(str6, Integer.valueOf(charSequence.length()));
                }
                boolean equals = "p".equals(str3);
                for (int i2 = 0; i2 < e(); i2++) {
                    zzamv d = d(i2);
                    if (z || equals) {
                        j2 = j;
                        z2 = true;
                    } else {
                        j2 = j;
                        z2 = false;
                    }
                    d.h(j2, z2, str2, treeMap);
                }
                if (equals) {
                    SpannableStringBuilder i3 = i(str2, treeMap);
                    int length = i3.length();
                    do {
                        length--;
                        if (length < 0) {
                            break;
                        }
                    } while (i3.charAt(length) == ' ');
                    if (length >= 0 && i3.charAt(length) != '\n') {
                        i3.append('\n');
                    }
                }
                for (Map.Entry entry2 : treeMap.entrySet()) {
                    String str7 = (String) entry2.getKey();
                    CharSequence charSequence2 = ((zzcw) entry2.getValue()).f5522a;
                    charSequence2.getClass();
                    hashMap2.put(str7, Integer.valueOf(charSequence2.length()));
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j(long r20, java.util.Map r22, java.util.HashMap r23, java.lang.String r24, java.util.TreeMap r25) {
        /*
            Method dump skipped, instructions count: 754
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamv.j(long, java.util.Map, java.util.HashMap, java.lang.String, java.util.TreeMap):void");
    }
}
