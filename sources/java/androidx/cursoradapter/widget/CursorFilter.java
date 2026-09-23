package androidx.cursoradapter.widget;

import android.database.Cursor;
import android.widget.Filter;

/* loaded from: classes.dex */
class CursorFilter extends Filter {

    /* renamed from: a, reason: collision with root package name */
    public CursorAdapter f933a;

    /* loaded from: classes.dex */
    public interface CursorFilterClient {
        void a(Cursor cursor);

        String c(Cursor cursor);

        Cursor d(CharSequence charSequence);
    }

    @Override // android.widget.Filter
    public final CharSequence convertResultToString(Object obj) {
        return this.f933a.c((Cursor) obj);
    }

    @Override // android.widget.Filter
    public final Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor d = this.f933a.d(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (d != null) {
            filterResults.count = d.getCount();
            filterResults.values = d;
            return filterResults;
        }
        filterResults.count = 0;
        filterResults.values = null;
        return filterResults;
    }

    @Override // android.widget.Filter
    public final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        CursorAdapter cursorAdapter = this.f933a;
        Cursor cursor = cursorAdapter.f;
        Object obj = filterResults.values;
        if (obj != null && obj != cursor) {
            cursorAdapter.a((Cursor) obj);
        }
    }
}
