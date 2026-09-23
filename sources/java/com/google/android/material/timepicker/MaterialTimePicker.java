package com.google.android.material.timepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.timepicker.TimePickerView;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes3.dex */
public final class MaterialTimePicker extends DialogFragment implements TimePickerView.OnDoubleTapListener {
    public TimePickerView i;
    public ViewStub j;
    public TimePickerClockPresenter k;
    public TimePickerTextInputPresenter l;
    public Object m;
    public int n;
    public int o;
    public CharSequence q;
    public CharSequence s;
    public CharSequence u;
    public MaterialButton v;
    public Button w;
    public TimeModel y;

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashSet f11995c = new LinkedHashSet();
    public final LinkedHashSet f = new LinkedHashSet();
    public final LinkedHashSet g = new LinkedHashSet();
    public final LinkedHashSet h = new LinkedHashSet();
    public int p = 0;
    public int r = 0;
    public int t = 0;
    public int x = 0;
    public int z = 0;

    /* loaded from: classes3.dex */
    public static final class Builder {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.google.android.material.timepicker.TimePickerPresenter, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.material.timepicker.TimePickerPresenter, java.lang.Object] */
    public final void g(MaterialButton materialButton) {
        TimePickerTextInputPresenter timePickerTextInputPresenter;
        Pair pair;
        if (materialButton != null && this.i != null && this.j != null) {
            ?? r0 = this.m;
            if (r0 != 0) {
                r0.c();
            }
            int i = this.x;
            TimePickerView timePickerView = this.i;
            ViewStub viewStub = this.j;
            if (i == 0) {
                TimePickerClockPresenter timePickerClockPresenter = this.k;
                TimePickerClockPresenter timePickerClockPresenter2 = timePickerClockPresenter;
                if (timePickerClockPresenter == null) {
                    timePickerClockPresenter2 = new TimePickerClockPresenter(timePickerView, this.y);
                }
                this.k = timePickerClockPresenter2;
                timePickerTextInputPresenter = timePickerClockPresenter2;
            } else {
                if (this.l == null) {
                    this.l = new TimePickerTextInputPresenter((LinearLayout) viewStub.inflate(), this.y);
                }
                TimePickerTextInputPresenter timePickerTextInputPresenter2 = this.l;
                timePickerTextInputPresenter2.i.setChecked(false);
                timePickerTextInputPresenter2.j.setChecked(false);
                timePickerTextInputPresenter = this.l;
            }
            this.m = timePickerTextInputPresenter;
            timePickerTextInputPresenter.b();
            this.m.invalidate();
            int i2 = this.x;
            if (i2 != 0) {
                if (i2 == 1) {
                    pair = new Pair(Integer.valueOf(this.o), Integer.valueOf(R.string.material_timepicker_clock_mode_description));
                } else {
                    throw new IllegalArgumentException(android.support.v4.media.a.e(i2, "no icon for mode: "));
                }
            } else {
                pair = new Pair(Integer.valueOf(this.n), Integer.valueOf(R.string.material_timepicker_text_input_mode_description));
            }
            materialButton.setIconResource(((Integer) pair.first).intValue());
            materialButton.setContentDescription(getResources().getString(((Integer) pair.second).intValue()));
            materialButton.sendAccessibilityEvent(4);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        if (bundle == null) {
            return;
        }
        TimeModel timeModel = (TimeModel) bundle.getParcelable("TIME_PICKER_TIME_MODEL");
        this.y = timeModel;
        if (timeModel == null) {
            this.y = new TimeModel(0, 0, 10, 0);
        }
        int i = 1;
        if (this.y.g != 1) {
            i = 0;
        }
        this.x = bundle.getInt("TIME_PICKER_INPUT_MODE", i);
        this.p = bundle.getInt("TIME_PICKER_TITLE_RES", 0);
        this.q = bundle.getCharSequence("TIME_PICKER_TITLE_TEXT");
        this.r = bundle.getInt("TIME_PICKER_POSITIVE_BUTTON_TEXT_RES", 0);
        this.s = bundle.getCharSequence("TIME_PICKER_POSITIVE_BUTTON_TEXT");
        this.t = bundle.getInt("TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES", 0);
        this.u = bundle.getCharSequence("TIME_PICKER_NEGATIVE_BUTTON_TEXT");
        this.z = bundle.getInt("TIME_PICKER_OVERRIDE_THEME_RES_ID", 0);
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Context requireContext = requireContext();
        int i = this.z;
        if (i == 0) {
            TypedValue a2 = MaterialAttributes.a(requireContext(), R.attr.materialTimePickerTheme);
            if (a2 == null) {
                i = 0;
            } else {
                i = a2.data;
            }
        }
        Dialog dialog = new Dialog(requireContext, i);
        Context context = dialog.getContext();
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context, null, R.attr.materialTimePickerStyle, R.style.Widget_MaterialComponents_TimePicker);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.MaterialTimePicker, R.attr.materialTimePickerStyle, R.style.Widget_MaterialComponents_TimePicker);
        this.o = obtainStyledAttributes.getResourceId(R.styleable.MaterialTimePicker_clockIcon, 0);
        this.n = obtainStyledAttributes.getResourceId(R.styleable.MaterialTimePicker_keyboardIcon, 0);
        int color = obtainStyledAttributes.getColor(R.styleable.MaterialTimePicker_backgroundTint, 0);
        obtainStyledAttributes.recycle();
        materialShapeDrawable.l(context);
        materialShapeDrawable.o(ColorStateList.valueOf(color));
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(materialShapeDrawable);
        window.requestFeature(1);
        window.setLayout(-2, -2);
        materialShapeDrawable.n(window.getDecorView().getElevation());
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(R.layout.material_timepicker_dialog, viewGroup);
        TimePickerView timePickerView = (TimePickerView) viewGroup2.findViewById(R.id.material_timepicker_view);
        this.i = timePickerView;
        timePickerView.E = this;
        this.j = (ViewStub) viewGroup2.findViewById(R.id.material_textinput_timepicker);
        this.v = (MaterialButton) viewGroup2.findViewById(R.id.material_timepicker_mode_button);
        TextView textView = (TextView) viewGroup2.findViewById(R.id.header_title);
        int i2 = this.p;
        if (i2 != 0) {
            textView.setText(i2);
        } else if (!TextUtils.isEmpty(this.q)) {
            textView.setText(this.q);
        }
        g(this.v);
        Button button = (Button) viewGroup2.findViewById(R.id.material_timepicker_ok_button);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.timepicker.MaterialTimePicker.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MaterialTimePicker materialTimePicker = MaterialTimePicker.this;
                Iterator it = materialTimePicker.f11995c.iterator();
                while (it.hasNext()) {
                    ((View.OnClickListener) it.next()).onClick(view);
                }
                materialTimePicker.dismiss();
            }
        });
        int i3 = this.r;
        if (i3 != 0) {
            button.setText(i3);
        } else if (!TextUtils.isEmpty(this.s)) {
            button.setText(this.s);
        }
        Button button2 = (Button) viewGroup2.findViewById(R.id.material_timepicker_cancel_button);
        this.w = button2;
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.timepicker.MaterialTimePicker.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MaterialTimePicker materialTimePicker = MaterialTimePicker.this;
                Iterator it = materialTimePicker.f.iterator();
                while (it.hasNext()) {
                    ((View.OnClickListener) it.next()).onClick(view);
                }
                materialTimePicker.dismiss();
            }
        });
        int i4 = this.t;
        if (i4 != 0) {
            this.w.setText(i4);
        } else if (!TextUtils.isEmpty(this.u)) {
            this.w.setText(this.u);
        }
        Button button3 = this.w;
        if (button3 != null) {
            if (isCancelable()) {
                i = 0;
            } else {
                i = 8;
            }
            button3.setVisibility(i);
        }
        this.v.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.timepicker.MaterialTimePicker.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i5;
                MaterialTimePicker materialTimePicker = MaterialTimePicker.this;
                if (materialTimePicker.x == 0) {
                    i5 = 1;
                } else {
                    i5 = 0;
                }
                materialTimePicker.x = i5;
                materialTimePicker.g(materialTimePicker.v);
            }
        });
        return viewGroup2;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.m = null;
        this.k = null;
        this.l = null;
        TimePickerView timePickerView = this.i;
        if (timePickerView != null) {
            timePickerView.E = null;
            this.i = null;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.h.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("TIME_PICKER_TIME_MODEL", this.y);
        bundle.putInt("TIME_PICKER_INPUT_MODE", this.x);
        bundle.putInt("TIME_PICKER_TITLE_RES", this.p);
        bundle.putCharSequence("TIME_PICKER_TITLE_TEXT", this.q);
        bundle.putInt("TIME_PICKER_POSITIVE_BUTTON_TEXT_RES", this.r);
        bundle.putCharSequence("TIME_PICKER_POSITIVE_BUTTON_TEXT", this.s);
        bundle.putInt("TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES", this.t);
        bundle.putCharSequence("TIME_PICKER_NEGATIVE_BUTTON_TEXT", this.u);
        bundle.putInt("TIME_PICKER_OVERRIDE_THEME_RES_ID", this.z);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.m instanceof TimePickerTextInputPresenter) {
            view.postDelayed(new b(0, this), 100L);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public final void setCancelable(boolean z) {
        int i;
        super.setCancelable(z);
        Button button = this.w;
        if (button != null) {
            if (isCancelable()) {
                i = 0;
            } else {
                i = 8;
            }
            button.setVisibility(i);
        }
    }
}
