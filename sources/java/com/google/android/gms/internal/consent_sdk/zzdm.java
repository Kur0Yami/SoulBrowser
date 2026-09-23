package com.google.android.gms.internal.consent_sdk;

import j$.util.Objects;
import java.io.IOException;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zzdm implements Iterable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f10004c;
    public final /* synthetic */ zzdo f;

    public zzdm(zzdo zzdoVar, String str) {
        this.f10004c = str;
        this.f = zzdoVar;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        zzdk zzdkVar = this.f.f10005a;
        return new zzdn(this.f10004c);
    }

    public final String toString() {
        CharSequence obj;
        CharSequence obj2;
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        try {
            zzdc zzdcVar = (zzdc) iterator();
            if (zzdcVar.hasNext()) {
                Object next = zzdcVar.next();
                Objects.requireNonNull(next);
                if (next instanceof CharSequence) {
                    obj = (CharSequence) next;
                } else {
                    obj = next.toString();
                }
                sb.append(obj);
                while (zzdcVar.hasNext()) {
                    sb.append((CharSequence) ", ");
                    Object next2 = zzdcVar.next();
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
