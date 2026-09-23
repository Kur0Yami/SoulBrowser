package com.google.android.material.theme;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.R;
import androidx.appcompat.app.AppCompatViewInflater;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.radiobutton.MaterialRadioButton;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.textfield.MaterialAutoCompleteTextView;
import com.google.android.material.textview.MaterialTextView;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

/* loaded from: classes3.dex */
public class MaterialComponentsViewInflater extends AppCompatViewInflater {
    @Override // androidx.appcompat.app.AppCompatViewInflater
    public final AppCompatAutoCompleteTextView a(Context context, AttributeSet attributeSet) {
        return new MaterialAutoCompleteTextView(context, attributeSet);
    }

    @Override // androidx.appcompat.app.AppCompatViewInflater
    public final AppCompatButton b(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // androidx.appcompat.app.AppCompatViewInflater
    public final AppCompatCheckBox c(Context context, AttributeSet attributeSet) {
        return new MaterialCheckBox(context, attributeSet);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.appcompat.widget.AppCompatRadioButton, com.google.android.material.radiobutton.MaterialRadioButton, android.widget.CompoundButton, android.view.View] */
    @Override // androidx.appcompat.app.AppCompatViewInflater
    public final AppCompatRadioButton d(Context context, AttributeSet attributeSet) {
        int i = R.attr.radioButtonStyle;
        int i2 = MaterialRadioButton.k;
        ?? appCompatRadioButton = new AppCompatRadioButton(MaterialThemeOverlay.a(context, attributeSet, i, i2), attributeSet, i);
        Context context2 = appCompatRadioButton.getContext();
        TypedArray d = ThemeEnforcement.d(context2, attributeSet, com.google.android.material.R.styleable.MaterialRadioButton, i, i2, new int[0]);
        if (d.hasValue(com.google.android.material.R.styleable.MaterialRadioButton_buttonTint)) {
            appCompatRadioButton.setButtonTintList(MaterialResources.a(context2, d, com.google.android.material.R.styleable.MaterialRadioButton_buttonTint));
        }
        appCompatRadioButton.j = d.getBoolean(com.google.android.material.R.styleable.MaterialRadioButton_useMaterialThemeColors, false);
        d.recycle();
        return appCompatRadioButton;
    }

    @Override // androidx.appcompat.app.AppCompatViewInflater
    public final AppCompatTextView e(Context context, AttributeSet attributeSet) {
        AppCompatTextView appCompatTextView = new AppCompatTextView(MaterialThemeOverlay.a(context, attributeSet, android.R.attr.textViewStyle, 0), attributeSet, android.R.attr.textViewStyle);
        Context context2 = appCompatTextView.getContext();
        if (MaterialAttributes.b(context2, com.google.android.material.R.attr.textAppearanceLineHeightEnabled, true)) {
            Resources.Theme theme = context2.getTheme();
            TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, com.google.android.material.R.styleable.MaterialTextView, android.R.attr.textViewStyle, 0);
            int q = MaterialTextView.q(context2, obtainStyledAttributes, com.google.android.material.R.styleable.MaterialTextView_android_lineHeight, com.google.android.material.R.styleable.MaterialTextView_lineHeight);
            obtainStyledAttributes.recycle();
            if (q == -1) {
                TypedArray obtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, com.google.android.material.R.styleable.MaterialTextView, android.R.attr.textViewStyle, 0);
                int resourceId = obtainStyledAttributes2.getResourceId(com.google.android.material.R.styleable.MaterialTextView_android_textAppearance, -1);
                obtainStyledAttributes2.recycle();
                if (resourceId != -1) {
                    TypedArray obtainStyledAttributes3 = theme.obtainStyledAttributes(resourceId, com.google.android.material.R.styleable.MaterialTextAppearance);
                    int q2 = MaterialTextView.q(appCompatTextView.getContext(), obtainStyledAttributes3, com.google.android.material.R.styleable.MaterialTextAppearance_android_lineHeight, com.google.android.material.R.styleable.MaterialTextAppearance_lineHeight);
                    obtainStyledAttributes3.recycle();
                    if (q2 >= 0) {
                        appCompatTextView.setLineHeight(q2);
                    }
                }
            }
        }
        return appCompatTextView;
    }
}
