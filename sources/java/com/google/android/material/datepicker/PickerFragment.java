package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import java.util.LinkedHashSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class PickerFragment<S> extends Fragment {

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashSet f11776c = new LinkedHashSet();

    public void f(OnSelectionChangedListener onSelectionChangedListener) {
        this.f11776c.add(onSelectionChangedListener);
    }
}
