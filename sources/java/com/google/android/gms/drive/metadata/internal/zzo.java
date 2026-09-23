package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.SearchableCollectionMetadataField;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class zzo extends zzl<DriveId> implements SearchableCollectionMetadataField<DriveId> {

    /* renamed from: c, reason: collision with root package name */
    public static final zzg f3705c = new Object();

    @Override // com.google.android.gms.drive.metadata.zzb, com.google.android.gms.drive.metadata.zza
    /* renamed from: g */
    public final Collection f(DataHolder dataHolder, int i, int i2) {
        Bundle metadata = dataHolder.getMetadata();
        ArrayList parcelableArrayList = metadata.getParcelableArrayList("parentsExtra");
        if (parcelableArrayList == null) {
            if (metadata.getParcelable("parentsExtraHolder") != null) {
                synchronized (dataHolder) {
                    DataHolder dataHolder2 = (DataHolder) dataHolder.getMetadata().getParcelable("parentsExtraHolder");
                    if (dataHolder2 != null) {
                        try {
                            int count = dataHolder.getCount();
                            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(count);
                            HashMap hashMap = new HashMap(count);
                            for (int i3 = 0; i3 < count; i3++) {
                                int windowIndex = dataHolder.getWindowIndex(i3);
                                ParentDriveIdSet parentDriveIdSet = new ParentDriveIdSet();
                                arrayList.add(parentDriveIdSet);
                                hashMap.put(Long.valueOf(dataHolder.getLong("sqlId", i3, windowIndex)), parentDriveIdSet);
                            }
                            Bundle metadata2 = dataHolder2.getMetadata();
                            String string = metadata2.getString("childSqlIdColumn");
                            String string2 = metadata2.getString("parentSqlIdColumn");
                            String string3 = metadata2.getString("parentResIdColumn");
                            int count2 = dataHolder2.getCount();
                            for (int i4 = 0; i4 < count2; i4++) {
                                int windowIndex2 = dataHolder2.getWindowIndex(i4);
                                ((ParentDriveIdSet) hashMap.get(Long.valueOf(dataHolder2.getLong(string, i4, windowIndex2)))).f3702c.add(new zzq(1, dataHolder2.getString(string3, i4, windowIndex2), dataHolder2.getLong(string2, i4, windowIndex2)));
                            }
                            dataHolder.getMetadata().putParcelableArrayList("parentsExtra", arrayList);
                            dataHolder2.close();
                            dataHolder.getMetadata().remove("parentsExtraHolder");
                        } catch (Throwable th) {
                            dataHolder2.close();
                            dataHolder.getMetadata().remove("parentsExtraHolder");
                            throw th;
                        }
                    }
                }
                parcelableArrayList = metadata.getParcelableArrayList("parentsExtra");
            }
            if (parcelableArrayList == null) {
                return null;
            }
        }
        long j = metadata.getLong("dbInstanceId");
        ParentDriveIdSet parentDriveIdSet2 = (ParentDriveIdSet) parcelableArrayList.get(i);
        HashSet hashSet = new HashSet();
        for (zzq zzqVar : parentDriveIdSet2.f3702c) {
            hashSet.add(new DriveId(zzqVar.f3706c, zzqVar.f, j, zzqVar.g));
        }
        return hashSet;
    }

    @Override // com.google.android.gms.drive.metadata.internal.zzl, com.google.android.gms.drive.metadata.zza
    /* renamed from: h */
    public final Collection d(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(this.f3707a);
        if (parcelableArrayList == null) {
            return null;
        }
        return new HashSet(parcelableArrayList);
    }
}
