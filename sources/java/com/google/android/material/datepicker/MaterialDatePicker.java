package com.google.android.material.datepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentTransaction;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.dialog.InsetDialogOnTouchListener;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.uuid.Uuid;

/* loaded from: classes3.dex */
public class MaterialDatePicker<S> extends DialogFragment {
    public TextView A;
    public TextView B;
    public CheckableImageButton C;
    public MaterialShapeDrawable D;
    public Button E;
    public boolean F;
    public CharSequence G;
    public CharSequence H;

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashSet f11768c = new LinkedHashSet();
    public final LinkedHashSet f = new LinkedHashSet();
    public final LinkedHashSet g = new LinkedHashSet();
    public final LinkedHashSet h = new LinkedHashSet();
    public int i;
    public DateSelector j;
    public PickerFragment k;
    public CalendarConstraints l;
    public DayViewDecorator m;
    public MaterialCalendar n;
    public int o;
    public CharSequence p;
    public boolean q;
    public int r;
    public int s;
    public CharSequence t;
    public int u;
    public CharSequence v;
    public int w;
    public CharSequence x;
    public int y;
    public CharSequence z;

    /* loaded from: classes3.dex */
    public static final class Builder<S> {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface InputMode {
    }

    public static int h(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_content_padding);
        Month month = new Month(UtcDates.h());
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_width);
        int dimensionPixelOffset2 = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_horizontal_padding);
        int i = month.h;
        return ((i - 1) * dimensionPixelOffset2) + (dimensionPixelSize * i) + (dimensionPixelOffset * 2);
    }

    public static boolean i(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(MaterialAttributes.c(context, R.attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()).data, new int[]{i});
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z;
    }

    public final DateSelector g() {
        if (this.j == null) {
            this.j = (DateSelector) getArguments().getParcelable("DATE_SELECTOR_KEY");
        }
        return this.j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.google.android.material.datepicker.MaterialTextInputPicker, androidx.fragment.app.Fragment] */
    public final void j() {
        CharSequence charSequence;
        Context requireContext = requireContext();
        int i = this.i;
        if (i == 0) {
            i = g().b0(requireContext);
        }
        DateSelector g = g();
        CalendarConstraints calendarConstraints = this.l;
        DayViewDecorator dayViewDecorator = this.m;
        MaterialCalendar materialCalendar = new MaterialCalendar();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i);
        bundle.putParcelable("GRID_SELECTOR_KEY", g);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", dayViewDecorator);
        bundle.putParcelable("CURRENT_MONTH_KEY", calendarConstraints.h);
        materialCalendar.setArguments(bundle);
        this.n = materialCalendar;
        if (this.r == 1) {
            DateSelector g2 = g();
            CalendarConstraints calendarConstraints2 = this.l;
            ?? materialTextInputPicker = new MaterialTextInputPicker();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("THEME_RES_ID_KEY", i);
            bundle2.putParcelable("DATE_SELECTOR_KEY", g2);
            bundle2.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints2);
            materialTextInputPicker.setArguments(bundle2);
            materialCalendar = materialTextInputPicker;
        }
        this.k = materialCalendar;
        TextView textView = this.A;
        if (this.r == 1 && getResources().getConfiguration().orientation == 2) {
            charSequence = this.H;
        } else {
            charSequence = this.G;
        }
        textView.setText(charSequence);
        String i2 = g().i(getContext());
        this.B.setContentDescription(g().Z(requireContext()));
        this.B.setText(i2);
        FragmentTransaction d = getChildFragmentManager().d();
        int i3 = R.id.mtrl_calendar_frame;
        PickerFragment pickerFragment = this.k;
        if (i3 != 0) {
            d.f(i3, pickerFragment, null, 2);
            d.e();
            this.k.f(new OnSelectionChangedListener<Object>() { // from class: com.google.android.material.datepicker.MaterialDatePicker.2
                @Override // com.google.android.material.datepicker.OnSelectionChangedListener
                public final void a() {
                    MaterialDatePicker.this.E.setEnabled(false);
                }

                @Override // com.google.android.material.datepicker.OnSelectionChangedListener
                public final void b(Object obj) {
                    MaterialDatePicker materialDatePicker = MaterialDatePicker.this;
                    String i4 = materialDatePicker.g().i(materialDatePicker.getContext());
                    materialDatePicker.B.setContentDescription(materialDatePicker.g().Z(materialDatePicker.requireContext()));
                    materialDatePicker.B.setText(i4);
                    materialDatePicker.E.setEnabled(materialDatePicker.g().h0());
                }
            });
            return;
        }
        throw new IllegalArgumentException("Must use non-zero containerViewId");
    }

    public final void k(CheckableImageButton checkableImageButton) {
        String string;
        if (this.r == 1) {
            string = checkableImageButton.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode);
        } else {
            string = checkableImageButton.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode);
        }
        this.C.setContentDescription(string);
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
        this.i = bundle.getInt("OVERRIDE_THEME_RES_ID");
        this.j = (DateSelector) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.l = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.m = (DayViewDecorator) bundle.getParcelable("DAY_VIEW_DECORATOR_KEY");
        this.o = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.p = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.r = bundle.getInt("INPUT_MODE_KEY");
        this.s = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.t = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.u = bundle.getInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.v = bundle.getCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        this.w = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.x = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
        this.y = bundle.getInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.z = bundle.getCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        CharSequence charSequence = this.p;
        if (charSequence == null) {
            charSequence = requireContext().getResources().getText(this.o);
        }
        this.G = charSequence;
        if (charSequence != null) {
            CharSequence[] split2 = TextUtils.split(String.valueOf(charSequence), "\n");
            if (split2.length > 1) {
                charSequence = split2[0];
            }
        } else {
            charSequence = null;
        }
        this.H = charSequence;
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Context requireContext = requireContext();
        Context requireContext2 = requireContext();
        int i = this.i;
        if (i == 0) {
            i = g().b0(requireContext2);
        }
        Dialog dialog = new Dialog(requireContext, i);
        Context context = dialog.getContext();
        this.q = i(context, android.R.attr.windowFullscreen);
        this.D = new MaterialShapeDrawable(context, null, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.MaterialCalendar, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        int color = obtainStyledAttributes.getColor(R.styleable.MaterialCalendar_backgroundTint, 0);
        obtainStyledAttributes.recycle();
        this.D.l(context);
        this.D.o(ColorStateList.valueOf(color));
        this.D.n(dialog.getWindow().getDecorView().getElevation());
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        boolean z;
        if (this.q) {
            i = R.layout.mtrl_picker_fullscreen;
        } else {
            i = R.layout.mtrl_picker_dialog;
        }
        View inflate = layoutInflater.inflate(i, viewGroup);
        Context context = inflate.getContext();
        if (this.q) {
            inflate.findViewById(R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(h(context), -2));
        } else {
            inflate.findViewById(R.id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(h(context), -1));
        }
        TextView textView = (TextView) inflate.findViewById(R.id.mtrl_picker_header_selection_text);
        this.B = textView;
        textView.setAccessibilityLiveRegion(1);
        this.C = (CheckableImageButton) inflate.findViewById(R.id.mtrl_picker_header_toggle);
        this.A = (TextView) inflate.findViewById(R.id.mtrl_picker_title_text);
        this.C.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.C;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, AppCompatResources.a(context, R.drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], AppCompatResources.a(context, R.drawable.material_ic_edit_black_24dp));
        checkableImageButton.setImageDrawable(stateListDrawable);
        CheckableImageButton checkableImageButton2 = this.C;
        if (this.r != 0) {
            z = true;
        } else {
            z = false;
        }
        checkableImageButton2.setChecked(z);
        ViewCompat.z(this.C, null);
        k(this.C);
        this.C.setOnClickListener(new d(2, this));
        this.E = (Button) inflate.findViewById(R.id.confirm_button);
        if (g().h0()) {
            this.E.setEnabled(true);
        } else {
            this.E.setEnabled(false);
        }
        this.E.setTag("CONFIRM_BUTTON_TAG");
        CharSequence charSequence = this.t;
        if (charSequence != null) {
            this.E.setText(charSequence);
        } else {
            int i2 = this.s;
            if (i2 != 0) {
                this.E.setText(i2);
            }
        }
        CharSequence charSequence2 = this.v;
        if (charSequence2 != null) {
            this.E.setContentDescription(charSequence2);
        } else if (this.u != 0) {
            this.E.setContentDescription(getContext().getResources().getText(this.u));
        }
        this.E.setOnClickListener(new d(0, this));
        Button button = (Button) inflate.findViewById(R.id.cancel_button);
        button.setTag("CANCEL_BUTTON_TAG");
        CharSequence charSequence3 = this.x;
        if (charSequence3 != null) {
            button.setText(charSequence3);
        } else {
            int i3 = this.w;
            if (i3 != 0) {
                button.setText(i3);
            }
        }
        CharSequence charSequence4 = this.z;
        if (charSequence4 != null) {
            button.setContentDescription(charSequence4);
        } else if (this.y != 0) {
            button.setContentDescription(getContext().getResources().getText(this.y));
        }
        button.setOnClickListener(new d(1, this));
        return inflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.h.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.google.android.material.datepicker.CalendarConstraints$Builder] */
    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        Month month;
        Month b;
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.i);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.j);
        CalendarConstraints calendarConstraints = this.l;
        ?? obj = new Object();
        int i = CalendarConstraints.Builder.f11747c;
        int i2 = CalendarConstraints.Builder.f11747c;
        obj.b = new DateValidatorPointForward(Long.MIN_VALUE);
        long j = calendarConstraints.f11746c.j;
        long j2 = calendarConstraints.f.j;
        obj.f11748a = Long.valueOf(calendarConstraints.h.j);
        int i3 = calendarConstraints.i;
        CalendarConstraints.DateValidator dateValidator = calendarConstraints.g;
        obj.b = dateValidator;
        MaterialCalendar materialCalendar = this.n;
        if (materialCalendar == null) {
            month = null;
        } else {
            month = materialCalendar.j;
        }
        if (month != null) {
            obj.f11748a = Long.valueOf(month.j);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", dateValidator);
        Month b2 = Month.b(j);
        Month b3 = Month.b(j2);
        CalendarConstraints.DateValidator dateValidator2 = (CalendarConstraints.DateValidator) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY");
        Long l = obj.f11748a;
        if (l == null) {
            b = null;
        } else {
            b = Month.b(l.longValue());
        }
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new CalendarConstraints(b2, b3, dateValidator2, b, i3));
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", this.m);
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.o);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.p);
        bundle.putInt("INPUT_MODE_KEY", this.r);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.s);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.t);
        bundle.putInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.u);
        bundle.putCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.v);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.w);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.x);
        bundle.putInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.y);
        bundle.putCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.z);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        Integer num;
        boolean z;
        int i;
        boolean z2;
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.q) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.D);
            if (!this.F) {
                final View findViewById = requireView().findViewById(R.id.fullscreen_header);
                ColorStateList d = DrawableUtils.d(findViewById.getBackground());
                if (d != null) {
                    num = Integer.valueOf(d.getDefaultColor());
                } else {
                    num = null;
                }
                boolean z3 = false;
                if (num != null && num.intValue() != 0) {
                    z = false;
                } else {
                    z = true;
                }
                int b = MaterialColors.b(window.getContext(), android.R.attr.colorBackground, -16777216);
                if (z) {
                    num = Integer.valueOf(b);
                }
                WindowCompat.a(window, false);
                window.getContext();
                Context context = window.getContext();
                if (Build.VERSION.SDK_INT < 27) {
                    i = ColorUtils.l(MaterialColors.b(context, android.R.attr.navigationBarColor, -16777216), Uuid.SIZE_BITS);
                } else {
                    i = 0;
                }
                window.setStatusBarColor(0);
                window.setNavigationBarColor(i);
                boolean f = MaterialColors.f(num.intValue());
                if (!MaterialColors.f(0) && !f) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                new WindowInsetsControllerCompat(window, window.getDecorView()).e(z2);
                boolean f2 = MaterialColors.f(b);
                if (MaterialColors.f(i) || (i == 0 && f2)) {
                    z3 = true;
                }
                new WindowInsetsControllerCompat(window, window.getDecorView()).d(z3);
                final int paddingTop = findViewById.getPaddingTop();
                final int paddingLeft = findViewById.getPaddingLeft();
                final int paddingRight = findViewById.getPaddingRight();
                final int i2 = findViewById.getLayoutParams().height;
                ViewCompat.G(findViewById, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.datepicker.MaterialDatePicker.1
                    @Override // androidx.core.view.OnApplyWindowInsetsListener
                    public final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
                        Insets d2 = windowInsetsCompat.d(7);
                        View view2 = findViewById;
                        int i3 = i2;
                        if (i3 >= 0) {
                            view2.getLayoutParams().height = i3 + d2.b;
                            view2.setLayoutParams(view2.getLayoutParams());
                        }
                        view2.setPadding(paddingLeft + d2.f681a, paddingTop + d2.b, paddingRight + d2.f682c, view2.getPaddingBottom());
                        return windowInsetsCompat;
                    }
                });
                this.F = true;
            }
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.D, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new InsetDialogOnTouchListener(requireDialog(), rect));
        }
        j();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStop() {
        this.k.f11776c.clear();
        super.onStop();
    }
}
