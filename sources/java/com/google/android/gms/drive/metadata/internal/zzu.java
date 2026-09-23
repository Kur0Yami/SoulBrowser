package com.google.android.gms.drive.metadata.internal;

import androidx.work.impl.workers.a;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.UserMetadata;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: classes.dex */
public final class zzu extends zzm<UserMetadata> {
    public zzu(String str) {
        super(str, Arrays.asList(g(str, "permissionId"), g(str, "displayName"), g(str, "picture"), g(str, "isAuthenticatedUser"), g(str, "emailAddress")), Collections.EMPTY_LIST);
    }

    public static String g(String str, String str2) {
        StringBuilder sb = new StringBuilder(str2.length() + a.e(1, str));
        sb.append(str);
        sb.append(".");
        sb.append(str2);
        return sb.toString();
    }

    @Override // com.google.android.gms.drive.metadata.zza
    public final boolean e(DataHolder dataHolder, int i, int i2) {
        String str = this.f3707a;
        if (dataHolder.hasColumn(g(str, "permissionId")) && !dataHolder.hasNull(g(str, "permissionId"), i, i2)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.drive.metadata.zza
    public final Object f(DataHolder dataHolder, int i, int i2) {
        String str = this.f3707a;
        String string = dataHolder.getString(g(str, "permissionId"), i, i2);
        if (string != null) {
            return new UserMetadata(string, dataHolder.getString(g(str, "displayName"), i, i2), dataHolder.getString(g(str, "picture"), i, i2), dataHolder.getString(g(str, "emailAddress"), i, i2), dataHolder.getBoolean(g(str, "isAuthenticatedUser"), i, i2));
        }
        return null;
    }
}
