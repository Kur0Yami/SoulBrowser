package com.mycompany.app.warp;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;

/** Restores WARP proxy on process start when the preference is enabled. */
public class WarpInitProvider extends ContentProvider {
    private static final String TAG = "WarpInitProvider";

    @Override
    public boolean onCreate() {
        try {
            WarpController.maybeRestore(getContext());
        } catch (Throwable t) {
            Log.w(TAG, "WARP restore failed", t);
        }
        return false;
    }

    @Override
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        return null;
    }

    @Override
    public String getType(Uri uri) {
        return null;
    }

    @Override
    public Uri insert(Uri uri, ContentValues values) {
        return null;
    }

    @Override
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return 0;
    }

    @Override
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        return 0;
    }
}
