package com.google.android.gms.internal.fido;

import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzfg extends AbstractMap {
    public static final Comparator j = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final Object[] f10304c;
    public final int[] f;
    public final Set g;
    public Integer h;
    public String i;

    public zzfg() {
        List list = Collections.EMPTY_LIST;
        this.g = new zzff(this);
        this.h = null;
        this.i = null;
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            int size = list.size();
            Object[] objArr = new Object[size];
            Iterator it2 = list.iterator();
            if (!it2.hasNext()) {
                int[] iArr = {0};
                if (size > 16 && size * 9 > 0) {
                    objArr = Arrays.copyOf(objArr, 0);
                }
                this.f10304c = objArr;
                this.f = iArr;
                return;
            }
            ((zzfc) it2.next()).getClass();
            throw null;
        }
        ((zzfc) it.next()).getClass();
        throw null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        return this.g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        if (this.h == null) {
            this.h = Integer.valueOf(super.hashCode());
        }
        return this.h.intValue();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        if (this.i == null) {
            this.i = super.toString();
        }
        return this.i;
    }
}
