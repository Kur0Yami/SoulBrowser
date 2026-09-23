package org.apache.commons.text;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.apache.commons.lang3.ArrayUtils;

@Deprecated
/* loaded from: classes4.dex */
public class StrTokenizer implements ListIterator<String>, Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public char[] f22468c;
    public String[] f;
    public int g;
    public StrMatcher h = StrMatcher.f22467c;
    public StrMatcher i;
    public StrMatcher j;
    public StrMatcher k;
    public boolean l;

    static {
        StrTokenizer strTokenizer = new StrTokenizer();
        strTokenizer.h = StrMatcher.f22466a;
        StrMatcher strMatcher = StrMatcher.e;
        if (strMatcher != null) {
            strTokenizer.i = strMatcher;
        }
        StrMatcher strMatcher2 = StrMatcher.f;
        if (strMatcher2 != null) {
            strTokenizer.j = strMatcher2;
        }
        StrMatcher strMatcher3 = StrMatcher.d;
        if (strMatcher3 != null) {
            strTokenizer.k = strMatcher3;
        }
        strTokenizer.l = false;
        StrTokenizer strTokenizer2 = new StrTokenizer();
        strTokenizer2.h = StrMatcher.b;
        if (strMatcher != null) {
            strTokenizer2.i = strMatcher;
        }
        if (strMatcher2 != null) {
            strTokenizer2.j = strMatcher2;
        }
        if (strMatcher3 != null) {
            strTokenizer2.k = strMatcher3;
        }
        strTokenizer2.l = false;
    }

    public StrTokenizer() {
        StrMatcher strMatcher = StrMatcher.f;
        this.i = strMatcher;
        this.j = strMatcher;
        this.k = strMatcher;
        this.l = true;
        this.f22468c = null;
    }

    public static boolean c(char[] cArr, int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i + i5;
            if (i6 >= i2 || cArr[i6] != cArr[i3 + i5]) {
                return false;
            }
        }
        return true;
    }

    public final void a(ArrayList arrayList, String str) {
        if (str.isEmpty() && this.l) {
            return;
        }
        arrayList.add(str);
    }

    @Override // java.util.ListIterator
    public final void add(String str) {
        throw new UnsupportedOperationException("add() is unsupported");
    }

    public final void b() {
        if (this.f == null) {
            char[] cArr = this.f22468c;
            String[] strArr = ArrayUtils.b;
            if (cArr == null) {
                this.f = (String[]) e(null, 0).toArray(strArr);
            } else {
                this.f = (String[]) e(cArr, cArr.length).toArray(strArr);
            }
        }
    }

    public final Object clone() {
        try {
            StrTokenizer strTokenizer = (StrTokenizer) super.clone();
            char[] cArr = strTokenizer.f22468c;
            if (cArr != null) {
                strTokenizer.f22468c = (char[]) cArr.clone();
            }
            strTokenizer.g = 0;
            strTokenizer.f = null;
            return strTokenizer;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public final int d(char[] cArr, int i, int i2, StrBuilder strBuilder, ArrayList arrayList, int i3, int i4) {
        boolean z;
        strBuilder.f = 0;
        if (i4 > 0) {
            z = true;
        } else {
            z = false;
        }
        int i5 = 0;
        while (i < i2) {
            if (z) {
                if (c(cArr, i, i2, i3, i4)) {
                    int i6 = i + i4;
                    if (c(cArr, i6, i2, i3, i4)) {
                        strBuilder.b(cArr, i, i4);
                        i += i4 * 2;
                        i5 = strBuilder.f;
                    } else {
                        z = false;
                        i = i6;
                    }
                } else {
                    int i7 = i + 1;
                    char c2 = cArr[i];
                    strBuilder.c(strBuilder.f + 1);
                    char[] cArr2 = strBuilder.f22464c;
                    int i8 = strBuilder.f;
                    int i9 = i8 + 1;
                    strBuilder.f = i9;
                    cArr2[i8] = c2;
                    i = i7;
                    i5 = i9;
                }
            } else {
                int a2 = this.h.a(cArr, i, i2);
                if (a2 > 0) {
                    a(arrayList, strBuilder.d(0, i5));
                    return i + a2;
                }
                if (i4 > 0 && c(cArr, i, i2, i3, i4)) {
                    i += i4;
                    z = true;
                } else {
                    int a3 = this.j.a(cArr, i, i2);
                    if (a3 <= 0) {
                        a3 = this.k.a(cArr, i, i2);
                        if (a3 > 0) {
                            strBuilder.b(cArr, i, a3);
                        } else {
                            int i72 = i + 1;
                            char c22 = cArr[i];
                            strBuilder.c(strBuilder.f + 1);
                            char[] cArr22 = strBuilder.f22464c;
                            int i82 = strBuilder.f;
                            int i92 = i82 + 1;
                            strBuilder.f = i92;
                            cArr22[i82] = c22;
                            i = i72;
                            i5 = i92;
                        }
                    }
                    i += a3;
                }
            }
        }
        a(arrayList, strBuilder.d(0, i5));
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [org.apache.commons.text.StrBuilder, java.lang.Object] */
    public List e(char[] cArr, int i) {
        char[] cArr2;
        int i2;
        int d;
        if (cArr != null && i != 0) {
            ?? obj = new Object();
            obj.f22464c = new char[32];
            ArrayList arrayList = new ArrayList();
            int i3 = 0;
            while (i3 >= 0 && i3 < i) {
                int i4 = i3;
                while (i4 < i) {
                    int max = Math.max(this.j.a(cArr, i4, i), this.k.a(cArr, i4, i));
                    if (max == 0 || this.h.a(cArr, i4, i) > 0 || this.i.a(cArr, i4, i) > 0) {
                        break;
                    }
                    i4 += max;
                }
                if (i4 >= i) {
                    a(arrayList, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    cArr2 = cArr;
                    i2 = i;
                    d = -1;
                } else {
                    int a2 = this.h.a(cArr, i4, i);
                    if (a2 > 0) {
                        a(arrayList, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                        cArr2 = cArr;
                        i2 = i;
                        d = i4 + a2;
                    } else {
                        int a3 = this.i.a(cArr, i4, i);
                        if (a3 > 0) {
                            int i5 = i4;
                            cArr2 = cArr;
                            i2 = i;
                            d = d(cArr2, i5 + a3, i2, obj, arrayList, i5, a3);
                        } else {
                            cArr2 = cArr;
                            i2 = i;
                            d = d(cArr2, i4, i2, obj, arrayList, 0, 0);
                        }
                    }
                }
                if (d >= i2) {
                    a(arrayList, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                }
                i3 = d;
                cArr = cArr2;
                i = i2;
            }
            return arrayList;
        }
        return Collections.EMPTY_LIST;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        b();
        if (this.g < this.f.length) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        b();
        if (this.g > 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            String[] strArr = this.f;
            int i = this.g;
            this.g = i + 1;
            return strArr[i];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.g;
    }

    @Override // java.util.ListIterator
    public final String previous() {
        if (hasPrevious()) {
            String[] strArr = this.f;
            int i = this.g - 1;
            this.g = i;
            return strArr[i];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.g - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("remove() is unsupported");
    }

    @Override // java.util.ListIterator
    public final void set(String str) {
        throw new UnsupportedOperationException("set() is unsupported");
    }

    public final String toString() {
        if (this.f == null) {
            return "StrTokenizer[not tokenized yet]";
        }
        StringBuilder sb = new StringBuilder("StrTokenizer");
        b();
        ArrayList arrayList = new ArrayList(this.f.length);
        Collections.addAll(arrayList, this.f);
        sb.append(arrayList);
        return sb.toString();
    }
}
