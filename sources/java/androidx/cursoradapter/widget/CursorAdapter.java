package androidx.cursoradapter.widget;

import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.support.v4.media.a;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import androidx.cursoradapter.widget.CursorFilter;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public abstract class CursorAdapter extends BaseAdapter implements Filterable, CursorFilter.CursorFilterClient {

    /* renamed from: c, reason: collision with root package name */
    public boolean f932c;
    public Cursor f;
    public int g;
    public CursorFilter h;

    /* loaded from: classes.dex */
    public class ChangeObserver extends ContentObserver {
        @Override // android.database.ContentObserver
        public final boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
        }
    }

    /* loaded from: classes.dex */
    public class MyDataSetObserver extends DataSetObserver {
        @Override // android.database.DataSetObserver
        public final void onChanged() {
            throw null;
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            throw null;
        }
    }

    public void a(Cursor cursor) {
        Cursor h = h(cursor);
        if (h != null) {
            h.close();
        }
    }

    public String c(Cursor cursor) {
        if (cursor == null) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return cursor.toString();
    }

    public Cursor d(CharSequence charSequence) {
        return this.f;
    }

    public abstract void e(View view, Cursor cursor);

    public View f(Cursor cursor, ViewGroup viewGroup) {
        return g(cursor, viewGroup);
    }

    public abstract View g(Cursor cursor, ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public final int getCount() {
        Cursor cursor;
        if (this.f932c && (cursor = this.f) != null) {
            return cursor.getCount();
        }
        return 0;
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (this.f932c) {
            this.f.moveToPosition(i);
            if (view == null) {
                view = f(this.f, viewGroup);
            }
            e(view, this.f);
            return view;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [android.widget.Filter, androidx.cursoradapter.widget.CursorFilter] */
    @Override // android.widget.Filterable
    public final Filter getFilter() {
        if (this.h == null) {
            ?? filter = new Filter();
            filter.f933a = this;
            this.h = filter;
        }
        return this.h;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        Cursor cursor;
        if (this.f932c && (cursor = this.f) != null) {
            cursor.moveToPosition(i);
            return this.f;
        }
        return null;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        Cursor cursor;
        if (!this.f932c || (cursor = this.f) == null || !cursor.moveToPosition(i)) {
            return 0L;
        }
        return this.f.getLong(this.g);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (this.f932c) {
            if (this.f.moveToPosition(i)) {
                if (view == null) {
                    view = g(this.f, viewGroup);
                }
                e(view, this.f);
                return view;
            }
            throw new IllegalStateException(a.e(i, "couldn't move cursor to position "));
        }
        throw new IllegalStateException("this should only be called when the cursor is valid");
    }

    public Cursor h(Cursor cursor) {
        Cursor cursor2 = this.f;
        if (cursor == cursor2) {
            return null;
        }
        this.f = cursor;
        if (cursor != null) {
            this.g = cursor.getColumnIndexOrThrow("_id");
            this.f932c = true;
            notifyDataSetChanged();
            return cursor2;
        }
        this.g = -1;
        this.f932c = false;
        notifyDataSetInvalidated();
        return cursor2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }
}
