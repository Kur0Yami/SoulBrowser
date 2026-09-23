package com.google.android.material.datepicker;

import android.view.View;
import androidx.mediarouter.app.MediaRouteChooserDialog;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final /* synthetic */ class d implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f11784c;
    public final /* synthetic */ Object f;

    public /* synthetic */ d(int i, Object obj) {
        this.f11784c = i;
        this.f = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.f11784c;
        Object obj = this.f;
        switch (i) {
            case 0:
                MaterialDatePicker materialDatePicker = (MaterialDatePicker) obj;
                Iterator it = materialDatePicker.f11768c.iterator();
                while (it.hasNext()) {
                    MaterialPickerOnPositiveButtonClickListener materialPickerOnPositiveButtonClickListener = (MaterialPickerOnPositiveButtonClickListener) it.next();
                    materialDatePicker.g().getClass();
                    materialPickerOnPositiveButtonClickListener.a();
                }
                materialDatePicker.dismiss();
                return;
            case 1:
                MaterialDatePicker materialDatePicker2 = (MaterialDatePicker) obj;
                Iterator it2 = materialDatePicker2.f.iterator();
                while (it2.hasNext()) {
                    ((View.OnClickListener) it2.next()).onClick(view);
                }
                materialDatePicker2.dismiss();
                return;
            case 2:
                MaterialDatePicker materialDatePicker3 = (MaterialDatePicker) obj;
                materialDatePicker3.E.setEnabled(materialDatePicker3.g().h0());
                materialDatePicker3.C.toggle();
                int i2 = 1;
                if (materialDatePicker3.r == 1) {
                    i2 = 0;
                }
                materialDatePicker3.r = i2;
                materialDatePicker3.k(materialDatePicker3.C);
                materialDatePicker3.j();
                return;
            default:
                int i3 = MediaRouteChooserDialog.B;
                ((MediaRouteChooserDialog) obj).dismiss();
                return;
        }
    }
}
