package com.google.android.material.switchmaterial;

import android.R;
import android.content.res.ColorStateList;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.color.MaterialColors;

/* loaded from: classes3.dex */
public class SwitchMaterial extends SwitchCompat {
    public static final int[][] C = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
    public ColorStateList A;
    public boolean B;

    private ColorStateList getMaterialThemeColorsThumbTintList() {
        throw null;
    }

    private ColorStateList getMaterialThemeColorsTrackTintList() {
        if (this.A == null) {
            int c2 = MaterialColors.c(this, com.google.android.material.R.attr.colorSurface);
            int c3 = MaterialColors.c(this, androidx.appcompat.R.attr.colorControlActivated);
            int c4 = MaterialColors.c(this, com.google.android.material.R.attr.colorOnSurface);
            this.A = new ColorStateList(C, new int[]{MaterialColors.g(0.54f, c2, c3), MaterialColors.g(0.32f, c2, c4), MaterialColors.g(0.12f, c2, c3), MaterialColors.g(0.12f, c2, c4)});
        }
        return this.A;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.B && getThumbTintList() == null) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
        }
        if (this.B && getTrackTintList() == null) {
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.B = z;
        if (z) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        } else {
            setThumbTintList(null);
            setTrackTintList(null);
        }
    }
}
