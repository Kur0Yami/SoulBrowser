package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes.dex */
public class zzl<T extends Parcelable> extends com.google.android.gms.drive.metadata.zzb<T> {
    @Override // com.google.android.gms.drive.metadata.zza
    public final void a(Bundle bundle, Object obj) {
        ArrayList<? extends Parcelable> arrayList;
        Collection collection = (Collection) obj;
        if (collection instanceof ArrayList) {
            arrayList = (ArrayList) collection;
        } else {
            arrayList = new ArrayList<>((Collection<? extends Object>) collection);
        }
        bundle.putParcelableArrayList(this.f3707a, arrayList);
    }

    @Override // com.google.android.gms.drive.metadata.zza
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public Collection d(Bundle bundle) {
        return bundle.getParcelableArrayList(this.f3707a);
    }
}
