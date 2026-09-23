package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzgto extends zzgtj {
    public final void a(Object[] objArr, Object obj) {
        List asList = Arrays.asList(objArr);
        if (obj == null) {
            Iterator it = asList.iterator();
            StringBuilder sb = new StringBuilder("[");
            boolean z = true;
            while (it.hasNext()) {
                if (!z) {
                    sb.append(", ");
                }
                sb.append(it.next());
                z = false;
            }
            sb.append(']');
            throw new NullPointerException("null key in entry: null=".concat(sb.toString()));
        }
        Iterator it2 = asList.iterator();
        if (it2.hasNext()) {
            Map map = this.f8251a;
            if (map == null) {
                map = new zzgsk();
                this.f8251a = map;
            }
            zzgsy zzgsyVar = (zzgsy) ((zzgsk) map).get(obj);
            if (zzgsyVar == null) {
                int i = 4;
                if (asList instanceof Set) {
                    i = Math.max(4, ((Set) asList).size());
                }
                zzgsyVar = zzgtn.w(i);
                Map map2 = this.f8251a;
                if (map2 == null) {
                    map2 = new zzgsk();
                    this.f8251a = map2;
                }
                ((zzgsk) map2).put(obj, zzgsyVar);
            }
            while (it2.hasNext()) {
                Object next = it2.next();
                zzgrz.a(obj, next);
                zzgsyVar.a(next);
            }
        }
    }
}
