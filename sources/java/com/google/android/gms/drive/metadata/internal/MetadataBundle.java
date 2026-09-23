package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.MetadataField;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

@SafeParcelable.Class(creator = "MetadataBundleCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class MetadataBundle extends AbstractSafeParcelable implements ReflectedParcelable {

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f3701c;
    public static final GmsLogger f = new GmsLogger("MetadataBundle", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    public static final Parcelable.Creator<MetadataBundle> CREATOR = new Object();

    public MetadataBundle(Bundle bundle) {
        int i;
        Bundle bundle2 = (Bundle) Preconditions.checkNotNull(bundle);
        this.f3701c = bundle2;
        bundle2.setClassLoader(MetadataBundle.class.getClassLoader());
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = bundle2.keySet().iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            if (((MetadataField) zzf.f3704a.get(next)) == null) {
                arrayList.add(next);
                f.wfmt("MetadataBundle", "Ignored unknown metadata field in bundle: %s", next);
            }
        }
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            this.f3701c.remove((String) obj);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != MetadataBundle.class) {
            return false;
        }
        Bundle bundle = ((MetadataBundle) obj).f3701c;
        Bundle bundle2 = this.f3701c;
        Set<String> keySet = bundle2.keySet();
        if (!keySet.equals(bundle.keySet())) {
            return false;
        }
        for (String str : keySet) {
            if (!Objects.equal(bundle2.get(str), bundle.get(str))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        Bundle bundle = this.f3701c;
        Iterator<String> it = bundle.keySet().iterator();
        int i = 1;
        while (it.hasNext()) {
            i = (i * 31) + bundle.get(it.next()).hashCode();
        }
        return i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 2, this.f3701c, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
