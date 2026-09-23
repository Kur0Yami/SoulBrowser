package com.google.android.gms.drive.widget;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.GmsLogger;

/* loaded from: classes.dex */
public class DataBufferAdapter<T> extends BaseAdapter {

    /* renamed from: c, reason: collision with root package name */
    public static final GmsLogger f3720c = new GmsLogger("DataBufferAdapter", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);

    @Override // android.widget.Adapter
    public final int getCount() {
        throw null;
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
        view.getClass();
        try {
            throw null;
        } catch (ClassCastException e) {
            f3720c.e("DataBufferAdapter", "You must supply a resource ID for a TextView", e);
            throw new IllegalStateException("DataBufferAdapter requires the resource ID to be a TextView", e);
        }
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        throw null;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        view.getClass();
        try {
            throw null;
        } catch (ClassCastException e) {
            f3720c.e("DataBufferAdapter", "You must supply a resource ID for a TextView", e);
            throw new IllegalStateException("DataBufferAdapter requires the resource ID to be a TextView", e);
        }
    }
}
