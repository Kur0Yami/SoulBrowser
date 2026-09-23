package com.google.android.gms.internal.ads;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public abstract class zzfwm extends SQLiteOpenHelper {
    public zzfwm(Context context, int i, String str) {
        super(context, true == str.equals(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED) ? null : str, (SQLiteDatabase.CursorFactory) null, i);
    }
}
