package androidx.appcompat.widget;

import android.database.Cursor;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.cursoradapter.widget.ResourceCursorAdapter;

/* loaded from: classes.dex */
class SuggestionsAdapter extends ResourceCursorAdapter implements View.OnClickListener {
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;

    /* loaded from: classes.dex */
    public static final class ChildViewCache {
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    public final void a(Cursor cursor) {
        try {
            super.a(cursor);
            if (cursor != null) {
                this.j = cursor.getColumnIndex("suggest_text_1");
                this.k = cursor.getColumnIndex("suggest_text_2");
                this.l = cursor.getColumnIndex("suggest_text_2_url");
                this.m = cursor.getColumnIndex("suggest_icon_1");
                this.n = cursor.getColumnIndex("suggest_icon_2");
                this.o = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e);
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    public final String c(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        int columnIndex = cursor.getColumnIndex("suggest_intent_query");
        String str = null;
        if (columnIndex != -1) {
            try {
                str = cursor.getString(columnIndex);
            } catch (Exception e) {
                Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e);
            }
        }
        str.getClass();
        return str;
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    public final Cursor d(CharSequence charSequence) {
        if (charSequence != null) {
            charSequence.toString();
        }
        throw null;
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public final void e(View view, Cursor cursor) {
        int i;
        ChildViewCache childViewCache = (ChildViewCache) view.getTag();
        int i2 = this.o;
        if (i2 != -1) {
            i = cursor.getInt(i2);
        } else {
            i = 0;
        }
        childViewCache.getClass();
        int i3 = this.i;
        if (i3 != 2 && (i3 != 1 || (i & 1) == 0)) {
            throw null;
        }
        throw null;
    }

    @Override // androidx.cursoradapter.widget.ResourceCursorAdapter, androidx.cursoradapter.widget.CursorAdapter
    public final View g(Cursor cursor, ViewGroup viewGroup) {
        throw null;
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            throw null;
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            throw null;
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:?, code lost:
    
        throw null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable i(java.lang.String r3) {
        /*
            r2 = this;
            r0 = 0
            if (r3 == 0) goto L23
            boolean r1 = r3.isEmpty()
            if (r1 != 0) goto L23
            java.lang.String r1 = "0"
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L12
            goto L23
        L12:
            java.lang.Integer.parseInt(r3)     // Catch: android.content.res.Resources.NotFoundException -> L16 java.lang.NumberFormatException -> L22
            throw r0
        L16:
            java.lang.String r1 = "Icon resource not found: "
            java.lang.String r3 = r1.concat(r3)
            java.lang.String r1 = "SuggestionsAdapter"
            android.util.Log.w(r1, r3)
            return r0
        L22:
            throw r0
        L23:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SuggestionsAdapter.i(java.lang.String):android.graphics.drawable.Drawable");
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        Bundle bundle;
        super.notifyDataSetChanged();
        Cursor cursor = this.f;
        if (cursor != null) {
            bundle = cursor.getExtras();
        } else {
            bundle = null;
        }
        if (bundle != null) {
            bundle.getBoolean("in_progress");
        }
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetInvalidated() {
        Bundle bundle;
        super.notifyDataSetInvalidated();
        Cursor cursor = this.f;
        if (cursor != null) {
            bundle = cursor.getExtras();
        } else {
            bundle = null;
        }
        if (bundle != null) {
            bundle.getBoolean("in_progress");
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (!(view.getTag() instanceof CharSequence)) {
        } else {
            throw null;
        }
    }
}
