package com.google.android.material.radiobutton;

import android.content.res.ColorStateList;
import androidx.appcompat.widget.AppCompatRadioButton;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;

/* loaded from: classes3.dex */
public class MaterialRadioButton extends AppCompatRadioButton {
    public static final int k = R.style.Widget_MaterialComponents_CompoundButton_RadioButton;
    public static final int[][] l = {new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};
    public ColorStateList i;
    public boolean j;

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.i == null) {
            int c2 = MaterialColors.c(this, androidx.appcompat.R.attr.colorControlActivated);
            int c3 = MaterialColors.c(this, R.attr.colorOnSurface);
            int c4 = MaterialColors.c(this, R.attr.colorSurface);
            this.i = new ColorStateList(l, new int[]{MaterialColors.g(1.0f, c4, c2), MaterialColors.g(0.54f, c4, c3), MaterialColors.g(0.38f, c4, c3), MaterialColors.g(0.38f, c4, c3)});
        }
        return this.i;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.j && getButtonTintList() == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.j = z;
        if (z) {
            setButtonTintList(getMaterialThemeColorsTintList());
        } else {
            setButtonTintList(null);
        }
    }
}
