package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;

@RestrictTo
/* loaded from: classes3.dex */
public interface DateSelector<S> extends Parcelable {
    void B0(long j);

    String Z(Context context);

    int b0(Context context);

    boolean h0();

    String i(Context context);

    ArrayList n0();

    Object s0();

    ArrayList v();

    View y0(LayoutInflater layoutInflater, ViewGroup viewGroup, CalendarConstraints calendarConstraints, OnSelectionChangedListener onSelectionChangedListener);
}
