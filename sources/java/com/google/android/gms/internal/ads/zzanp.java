package com.google.android.gms.internal.ads;

import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.KotlinVersion;

/* loaded from: classes.dex */
public final class zzanp {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f4247a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)((?:.|\\f)*)?$");
    public static final Pattern b = Pattern.compile("(\\S+?):(\\S+)");

    /* renamed from: c, reason: collision with root package name */
    public static final Map f4248c;
    public static final Map d;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("white", Integer.valueOf(Color.rgb(KotlinVersion.MAX_COMPONENT_VALUE, KotlinVersion.MAX_COMPONENT_VALUE, KotlinVersion.MAX_COMPONENT_VALUE)));
        hashMap.put("lime", Integer.valueOf(Color.rgb(0, KotlinVersion.MAX_COMPONENT_VALUE, 0)));
        hashMap.put("cyan", Integer.valueOf(Color.rgb(0, KotlinVersion.MAX_COMPONENT_VALUE, KotlinVersion.MAX_COMPONENT_VALUE)));
        hashMap.put("red", Integer.valueOf(Color.rgb(KotlinVersion.MAX_COMPONENT_VALUE, 0, 0)));
        hashMap.put("yellow", Integer.valueOf(Color.rgb(KotlinVersion.MAX_COMPONENT_VALUE, KotlinVersion.MAX_COMPONENT_VALUE, 0)));
        hashMap.put("magenta", Integer.valueOf(Color.rgb(KotlinVersion.MAX_COMPONENT_VALUE, 0, KotlinVersion.MAX_COMPONENT_VALUE)));
        hashMap.put("blue", Integer.valueOf(Color.rgb(0, 0, KotlinVersion.MAX_COMPONENT_VALUE)));
        hashMap.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f4248c = DesugarCollections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("bg_white", Integer.valueOf(Color.rgb(KotlinVersion.MAX_COMPONENT_VALUE, KotlinVersion.MAX_COMPONENT_VALUE, KotlinVersion.MAX_COMPONENT_VALUE)));
        hashMap2.put("bg_lime", Integer.valueOf(Color.rgb(0, KotlinVersion.MAX_COMPONENT_VALUE, 0)));
        hashMap2.put("bg_cyan", Integer.valueOf(Color.rgb(0, KotlinVersion.MAX_COMPONENT_VALUE, KotlinVersion.MAX_COMPONENT_VALUE)));
        hashMap2.put("bg_red", Integer.valueOf(Color.rgb(KotlinVersion.MAX_COMPONENT_VALUE, 0, 0)));
        hashMap2.put("bg_yellow", Integer.valueOf(Color.rgb(KotlinVersion.MAX_COMPONENT_VALUE, KotlinVersion.MAX_COMPONENT_VALUE, 0)));
        hashMap2.put("bg_magenta", Integer.valueOf(Color.rgb(KotlinVersion.MAX_COMPONENT_VALUE, 0, KotlinVersion.MAX_COMPONENT_VALUE)));
        hashMap2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, KotlinVersion.MAX_COMPONENT_VALUE)));
        hashMap2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        d = DesugarCollections.unmodifiableMap(hashMap2);
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0237  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.text.SpannedString a(java.lang.String r19, java.lang.String r20, java.util.List r21) {
        /*
            Method dump skipped, instructions count: 580
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzanp.a(java.lang.String, java.lang.String, java.util.List):android.text.SpannedString");
    }

    public static zzanj b(String str, Matcher matcher, zzer zzerVar, ArrayList arrayList) {
        zzano zzanoVar = new zzano();
        try {
            String group = matcher.group(1);
            if (group != null) {
                zzanoVar.f4245a = zzanr.a(group);
                String group2 = matcher.group(2);
                if (group2 != null) {
                    zzanoVar.b = zzanr.a(group2);
                    String group3 = matcher.group(3);
                    group3.getClass();
                    c(group3, zzanoVar);
                    StringBuilder sb = new StringBuilder();
                    String n = zzerVar.n(StandardCharsets.UTF_8);
                    while (!TextUtils.isEmpty(n)) {
                        if (sb.length() > 0) {
                            sb.append("\n");
                        }
                        sb.append(n.trim());
                        n = zzerVar.n(StandardCharsets.UTF_8);
                    }
                    zzanoVar.f4246c = a(str, sb.toString(), arrayList);
                    return new zzanj(zzanoVar.a().b(), zzanoVar.f4245a, zzanoVar.b);
                }
                throw null;
            }
            throw null;
        } catch (IllegalArgumentException unused) {
            zzee.c("WebvttCueParser", "Skipping cue with bad header: ".concat(String.valueOf(matcher.group())));
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0076, code lost:
    
        if (r8.equals("middle") != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x007d, code lost:
    
        if (r8.equals("center") != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0185, code lost:
    
        if (r9.equals("middle") != false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x018c, code lost:
    
        if (r9.equals("center") != false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0119, code lost:
    
        if (r9.equals("start") != false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0144, code lost:
    
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0120, code lost:
    
        if (r9.equals("end") != false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0132, code lost:
    
        r7 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0127, code lost:
    
        if (r9.equals("middle") != false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x013a, code lost:
    
        r7 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0130, code lost:
    
        if (r9.equals("line-right") != false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0138, code lost:
    
        if (r9.equals("center") != false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0142, code lost:
    
        if (r9.equals("line-left") != false) goto L78;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:48:0x0111. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:97:0x004a. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void c(java.lang.String r16, com.google.android.gms.internal.ads.zzano r17) {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzanp.c(java.lang.String, com.google.android.gms.internal.ads.zzano):void");
    }

    public static void d(String str, zzanm zzanmVar, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        char c2;
        char c3;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = zzanmVar.b;
        int length = spannableStringBuilder.length();
        String str2 = zzanmVar.f4242a;
        int hashCode = str2.hashCode();
        int i7 = -1;
        if (hashCode != 0) {
            if (hashCode != 105) {
                if (hashCode != 3314158) {
                    if (hashCode != 3511770) {
                        if (hashCode != 98) {
                            if (hashCode != 99) {
                                if (hashCode != 117) {
                                    if (hashCode == 118 && str2.equals("v")) {
                                        spannableStringBuilder.setSpan(new zzdf(zzanmVar.f4243c), i6, length, 33);
                                    } else {
                                        return;
                                    }
                                } else if (str2.equals("u")) {
                                    spannableStringBuilder.setSpan(new UnderlineSpan(), i6, length, 33);
                                } else {
                                    return;
                                }
                            } else if (str2.equals("c")) {
                                for (String str3 : zzanmVar.d) {
                                    Map map = f4248c;
                                    if (map.containsKey(str3)) {
                                        spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str3)).intValue()), i6, length, 33);
                                    } else {
                                        Map map2 = d;
                                        if (map2.containsKey(str3)) {
                                            spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str3)).intValue()), i6, length, 33);
                                        }
                                    }
                                }
                            } else {
                                return;
                            }
                        } else if (str2.equals("b")) {
                            spannableStringBuilder.setSpan(new StyleSpan(1), i6, length, 33);
                        } else {
                            return;
                        }
                    } else if (str2.equals("ruby")) {
                        int e = e(list2, str, zzanmVar);
                        ArrayList arrayList = new ArrayList(list.size());
                        arrayList.addAll(list);
                        Collections.sort(arrayList, zzank.f4240c);
                        int i8 = i6;
                        int i9 = 0;
                        int i10 = 0;
                        while (i9 < arrayList.size()) {
                            if ("rt".equals(((zzanl) arrayList.get(i9)).f4241a.f4242a)) {
                                zzanl zzanlVar = (zzanl) arrayList.get(i9);
                                int e2 = e(list2, str, zzanlVar.f4241a);
                                if (e2 == i7) {
                                    if (e != i7) {
                                        e2 = e;
                                    } else {
                                        e2 = 1;
                                    }
                                }
                                int i11 = zzanlVar.f4241a.b - i10;
                                int i12 = zzanlVar.b - i10;
                                CharSequence subSequence = spannableStringBuilder.subSequence(i11, i12);
                                spannableStringBuilder.delete(i11, i12);
                                spannableStringBuilder.setSpan(new zzdc(subSequence.toString(), e2), i8, i11, 33);
                                i10 += subSequence.length();
                                i8 = i11;
                            }
                            i9++;
                            i7 = -1;
                        }
                    } else {
                        return;
                    }
                } else if (!str2.equals("lang")) {
                    return;
                }
            } else if (str2.equals("i")) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i6, length, 33);
            } else {
                return;
            }
        } else if (!str2.equals(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) {
            return;
        }
        ArrayList f = f(list2, str, zzanmVar);
        for (int i13 = 0; i13 < f.size(); i13++) {
            zzani zzaniVar = ((zzann) f.get(i13)).f;
            int i14 = zzaniVar.k;
            if (i14 == -1 && zzaniVar.l == -1) {
                i = -1;
            } else {
                if (i14 == 1) {
                    c2 = 1;
                } else {
                    c2 = 0;
                }
                if (zzaniVar.l == 1) {
                    c3 = 2;
                } else {
                    c3 = 0;
                }
                i = c3 | c2;
            }
            if (i != -1) {
                int i15 = zzaniVar.k;
                if (i15 != -1 || zzaniVar.l != -1) {
                    i2 = 1;
                    if (i15 == 1) {
                        i3 = 1;
                    } else {
                        i3 = 0;
                    }
                    if (zzaniVar.l == 1) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    i5 = i3 | i4;
                } else {
                    i5 = -1;
                    i2 = 1;
                }
                zzdd.a(spannableStringBuilder, new StyleSpan(i5), i6, length);
            } else {
                i2 = 1;
            }
            if (zzaniVar.j == i2) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i6, length, 33);
            }
            if (zzaniVar.g) {
                if (zzaniVar.g) {
                    zzdd.a(spannableStringBuilder, new ForegroundColorSpan(zzaniVar.f), i6, length);
                } else {
                    throw new IllegalStateException("Font color not defined");
                }
            }
            if (zzaniVar.i) {
                if (zzaniVar.i) {
                    zzdd.a(spannableStringBuilder, new BackgroundColorSpan(zzaniVar.h), i6, length);
                } else {
                    throw new IllegalStateException("Background color not defined.");
                }
            }
            if (zzaniVar.e != null) {
                zzdd.a(spannableStringBuilder, new TypefaceSpan(zzaniVar.e), i6, length);
            }
            int i16 = zzaniVar.m;
            if (i16 != 1) {
                if (i16 != 2) {
                    if (i16 == 3) {
                        zzdd.a(spannableStringBuilder, new RelativeSizeSpan(zzaniVar.n / 100.0f), i6, length);
                    }
                } else {
                    zzdd.a(spannableStringBuilder, new RelativeSizeSpan(zzaniVar.n), i6, length);
                }
            } else {
                zzdd.a(spannableStringBuilder, new AbsoluteSizeSpan((int) zzaniVar.n, true), i6, length);
            }
            if (zzaniVar.p) {
                spannableStringBuilder.setSpan(new Object(), i6, length, 33);
            }
        }
    }

    public static int e(List list, String str, zzanm zzanmVar) {
        ArrayList f = f(list, str, zzanmVar);
        for (int i = 0; i < f.size(); i++) {
            int i2 = ((zzann) f.get(i)).f.o;
            if (i2 != -1) {
                return i2;
            }
        }
        return -1;
    }

    public static ArrayList f(List list, String str, zzanm zzanmVar) {
        int size;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            zzani zzaniVar = (zzani) list.get(i);
            String str2 = zzanmVar.f4242a;
            Set set = zzanmVar.d;
            String str3 = zzanmVar.f4243c;
            if (zzaniVar.f4236a.isEmpty() && zzaniVar.b.isEmpty() && zzaniVar.f4237c.isEmpty() && zzaniVar.d.isEmpty()) {
                if (TextUtils.isEmpty(str2)) {
                    size = 1;
                }
                size = 0;
            } else {
                int a2 = zzani.a(zzaniVar.d, zzani.a(zzaniVar.b, zzani.a(zzaniVar.f4236a, 0, 1073741824, str), 2, str2), 4, str3);
                if (a2 != -1 && set.containsAll(zzaniVar.f4237c)) {
                    size = a2 + (zzaniVar.f4237c.size() * 4);
                }
                size = 0;
            }
            if (size > 0) {
                arrayList.add(new zzann(size, zzaniVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }
}
