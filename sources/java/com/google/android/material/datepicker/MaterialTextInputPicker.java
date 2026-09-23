package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RestrictTo;
import java.util.Iterator;

@RestrictTo
/* loaded from: classes3.dex */
public final class MaterialTextInputPicker<S> extends PickerFragment<S> {
    public int f;
    public DateSelector g;
    public CalendarConstraints h;

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f = bundle.getInt("THEME_RES_ID_KEY");
        this.g = (DateSelector) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.h = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.g.y0(layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), this.f)), viewGroup, this.h, new OnSelectionChangedListener<Object>() { // from class: com.google.android.material.datepicker.MaterialTextInputPicker.1
            @Override // com.google.android.material.datepicker.OnSelectionChangedListener
            public final void a() {
                Iterator it = MaterialTextInputPicker.this.f11776c.iterator();
                while (it.hasNext()) {
                    ((OnSelectionChangedListener) it.next()).a();
                }
            }

            @Override // com.google.android.material.datepicker.OnSelectionChangedListener
            public final void b(Object obj) {
                Iterator it = MaterialTextInputPicker.this.f11776c.iterator();
                while (it.hasNext()) {
                    ((OnSelectionChangedListener) it.next()).b(obj);
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("THEME_RES_ID_KEY", this.f);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.g);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.h);
    }
}
