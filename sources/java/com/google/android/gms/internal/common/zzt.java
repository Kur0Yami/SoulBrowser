package com.google.android.gms.internal.common;

import j$.util.Objects;
import java.io.IOException;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zzt implements Iterable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f9917c;
    public final /* synthetic */ zzw f;

    public zzt(zzw zzwVar, String str) {
        this.f9917c = str;
        this.f = zzwVar;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        zzw zzwVar = this.f;
        return new zzs(zzwVar, this.f9917c, zzwVar.b.f9918a);
    }

    public final String toString() {
        CharSequence obj;
        CharSequence obj2;
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        try {
            zzk zzkVar = (zzk) iterator();
            if (zzkVar.hasNext()) {
                Object next = zzkVar.next();
                Objects.requireNonNull(next);
                if (next instanceof CharSequence) {
                    obj = (CharSequence) next;
                } else {
                    obj = next.toString();
                }
                sb.append(obj);
                while (zzkVar.hasNext()) {
                    sb.append((CharSequence) ", ");
                    Object next2 = zzkVar.next();
                    Objects.requireNonNull(next2);
                    if (next2 instanceof CharSequence) {
                        obj2 = (CharSequence) next2;
                    } else {
                        obj2 = next2.toString();
                    }
                    sb.append(obj2);
                }
            }
            sb.append(']');
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
