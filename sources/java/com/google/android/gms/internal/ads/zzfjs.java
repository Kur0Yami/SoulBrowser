package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzfjs implements zzdan {

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f7419c = new HashSet();
    public final Context f;
    public final zzcdf g;

    public zzfjs(Context context, zzcdf zzcdfVar) {
        this.f = context;
        this.g = zzcdfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdan
    public final synchronized void S(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (zzeVar.zza != 3) {
            this.g.b(this.f7419c);
        }
    }

    public final synchronized void a(HashSet hashSet) {
        HashSet hashSet2 = this.f7419c;
        hashSet2.clear();
        hashSet2.addAll(hashSet);
    }

    public final Bundle b() {
        zzcdf zzcdfVar = this.g;
        Context context = this.f;
        zzcdfVar.getClass();
        HashSet hashSet = new HashSet();
        synchronized (zzcdfVar.f5060c) {
            HashSet hashSet2 = zzcdfVar.i;
            hashSet.addAll(hashSet2);
            hashSet2.clear();
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("app", zzcdfVar.h.f(context, zzcdfVar.g.a()));
        Bundle bundle2 = new Bundle();
        Iterator it = zzcdfVar.j.iterator();
        if (!it.hasNext()) {
            bundle.putBundle("slots", bundle2);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                arrayList.add(((zzccu) it2.next()).a());
            }
            bundle.putParcelableArrayList("ads", arrayList);
            a(hashSet);
            return bundle;
        }
        throw null;
    }
}
