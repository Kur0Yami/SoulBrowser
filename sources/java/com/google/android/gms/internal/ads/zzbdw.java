package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes.dex */
public final class zzbdw {

    /* renamed from: a, reason: collision with root package name */
    public final zzbdu f4582a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4583c;

    public zzbdw(int i, int i2, int i3) {
        this.b = i;
        i2 = (i2 > 64 || i2 < 0) ? 64 : i2;
        if (i3 <= 0) {
            this.f4583c = 1;
        } else {
            this.f4583c = i3;
        }
        this.f4582a = new zzbdu(i2);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, java.util.Comparator] */
    public final String a(ArrayList arrayList, ArrayList arrayList2) {
        int i;
        String str;
        Collections.sort(arrayList2, new Object());
        HashSet hashSet = new HashSet();
        loop0: for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            String[] split2 = Normalizer.normalize((CharSequence) arrayList.get(((zzbdl) arrayList2.get(i2)).e), Normalizer.Form.NFKC).toLowerCase(Locale.US).split("\n");
            if (split2.length != 0) {
                for (String str2 : split2) {
                    if (str2.contains("'")) {
                        StringBuilder sb = new StringBuilder(str2);
                        int i3 = 1;
                        boolean z = false;
                        while (true) {
                            int i4 = i3 + 2;
                            if (i4 > sb.length()) {
                                break;
                            }
                            if (sb.charAt(i3) == '\'') {
                                if (sb.charAt(i3 - 1) != ' ') {
                                    int i5 = i3 + 1;
                                    if ((sb.charAt(i5) == 's' || sb.charAt(i5) == 'S') && (i4 == sb.length() || sb.charAt(i4) == ' ')) {
                                        sb.insert(i3, ' ');
                                        i3 = i4;
                                        z = true;
                                    }
                                }
                                sb.setCharAt(i3, ' ');
                                z = true;
                            }
                            i3++;
                        }
                        if (z) {
                            str = sb.toString();
                        } else {
                            str = null;
                        }
                        if (str != null) {
                            str2 = str;
                        }
                    }
                    String[] b = zzbdq.b(str2, true);
                    int length = b.length;
                    int i6 = this.f4583c;
                    if (length >= i6) {
                        int i7 = 0;
                        while (true) {
                            int length2 = b.length;
                            i = this.b;
                            if (i7 >= length2) {
                                break;
                            }
                            String str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                            for (int i8 = 0; i8 < i6; i8++) {
                                int i9 = i7 + i8;
                                if (i9 >= b.length) {
                                    break;
                                }
                                if (i8 > 0) {
                                    str3 = str3.concat(" ");
                                }
                                str3 = str3.concat(String.valueOf(b[i9]));
                            }
                            hashSet.add(str3);
                            if (hashSet.size() >= i) {
                                break loop0;
                            }
                            i7++;
                        }
                        if (hashSet.size() >= i) {
                            break loop0;
                        }
                    }
                }
            }
        }
        zzbdo zzbdoVar = new zzbdo();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            try {
                zzbdoVar.b.write(this.f4582a.b((String) it.next()));
            } catch (IOException e) {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Error while writing hash to byteStream", e);
            }
        }
        return zzbdoVar.toString();
    }
}
