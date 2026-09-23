package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* loaded from: classes.dex */
final class zzanc implements zzalt {

    /* renamed from: a, reason: collision with root package name */
    public final zzamv f4225a;
    public final long[] b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f4226c;
    public final HashMap d;
    public final HashMap e;

    public zzanc(zzamv zzamvVar, HashMap hashMap, HashMap hashMap2, HashMap hashMap3) {
        this.f4225a = zzamvVar;
        this.d = hashMap2;
        this.e = hashMap3;
        this.f4226c = DesugarCollections.unmodifiableMap(hashMap);
        TreeSet treeSet = new TreeSet();
        int i = 0;
        zzamvVar.f(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i] = ((Long) it.next()).longValue();
            i++;
        }
        this.b = jArr;
    }

    @Override // com.google.android.gms.internal.ads.zzalt
    public final ArrayList b(long j) {
        ArrayList arrayList = new ArrayList();
        zzamv zzamvVar = this.f4225a;
        String str = zzamvVar.h;
        zzamvVar.g(j, str, arrayList);
        TreeMap treeMap = new TreeMap();
        zzamvVar.h(j, false, str, treeMap);
        Map map = this.f4226c;
        HashMap hashMap = this.d;
        zzamvVar.j(j, map, hashMap, str, treeMap);
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Pair pair = (Pair) arrayList.get(i);
            String str2 = (String) this.e.get(pair.second);
            if (str2 != null) {
                byte[] decode = Base64.decode(str2, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                zzamz zzamzVar = (zzamz) hashMap.get(pair.first);
                zzamzVar.getClass();
                zzcw zzcwVar = new zzcw();
                zzcwVar.b = decodeByteArray;
                zzcwVar.f5522a = null;
                zzcwVar.h = zzamzVar.b;
                zzcwVar.i = 0;
                zzcwVar.e = zzamzVar.f4220c;
                zzcwVar.f = 0;
                zzcwVar.g = zzamzVar.e;
                zzcwVar.l = zzamzVar.f;
                zzcwVar.m = zzamzVar.g;
                zzcwVar.n = zzamzVar.j;
                arrayList2.add(zzcwVar.b());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            zzamz zzamzVar2 = (zzamz) hashMap.get(entry.getKey());
            zzamzVar2.getClass();
            zzcw zzcwVar2 = (zzcw) entry.getValue();
            CharSequence charSequence = zzcwVar2.f5522a;
            charSequence.getClass();
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) charSequence;
            for (zzamt zzamtVar : (zzamt[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), zzamt.class)) {
                spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(zzamtVar), spannableStringBuilder.getSpanEnd(zzamtVar), (CharSequence) RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            }
            int i2 = 0;
            while (i2 < spannableStringBuilder.length()) {
                int i3 = i2 + 1;
                if (spannableStringBuilder.charAt(i2) == ' ') {
                    int i4 = i3;
                    while (i4 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i4) == ' ') {
                        i4++;
                    }
                    int i5 = i4 - i3;
                    if (i5 > 0) {
                        spannableStringBuilder.delete(i2, i5 + i2);
                    }
                }
                i2 = i3;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
            }
            int i6 = 0;
            while (i6 < spannableStringBuilder.length() - 1) {
                int i7 = i6 + 1;
                if (spannableStringBuilder.charAt(i6) == '\n' && spannableStringBuilder.charAt(i7) == ' ') {
                    spannableStringBuilder.delete(i7, i6 + 2);
                }
                i6 = i7;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            int i8 = 0;
            while (i8 < spannableStringBuilder.length() - 1) {
                int i9 = i8 + 1;
                if (spannableStringBuilder.charAt(i8) == ' ' && spannableStringBuilder.charAt(i9) == '\n') {
                    spannableStringBuilder.delete(i8, i9);
                }
                i8 = i9;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            float f = zzamzVar2.f4220c;
            int i10 = zzamzVar2.d;
            zzcwVar2.e = f;
            zzcwVar2.f = i10;
            zzcwVar2.g = zzamzVar2.e;
            zzcwVar2.h = zzamzVar2.b;
            zzcwVar2.l = zzamzVar2.f;
            float f2 = zzamzVar2.i;
            int i11 = zzamzVar2.h;
            zzcwVar2.k = f2;
            zzcwVar2.j = i11;
            zzcwVar2.n = zzamzVar2.j;
            arrayList2.add(zzcwVar2.b());
        }
        return arrayList2;
    }

    @Override // com.google.android.gms.internal.ads.zzalt
    public final int zza() {
        return this.b.length;
    }

    @Override // com.google.android.gms.internal.ads.zzalt
    public final long zzb(int i) {
        return this.b[i];
    }
}
