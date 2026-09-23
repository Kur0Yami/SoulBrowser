package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;

@RestrictTo
/* loaded from: classes.dex */
public final class AppCompatDrawableManager {
    public static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;

    /* renamed from: c, reason: collision with root package name */
    public static AppCompatDrawableManager f235c;

    /* renamed from: a, reason: collision with root package name */
    public ResourceManagerInternal f236a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.AppCompatDrawableManager$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements ResourceManagerInternal.ResourceManagerHooks {

        /* renamed from: a, reason: collision with root package name */
        public final int[] f237a = {R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};
        public final int[] b = {R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};

        /* renamed from: c, reason: collision with root package name */
        public final int[] f238c = {R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};
        public final int[] d = {R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
        public final int[] e = {R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
        public final int[] f = {R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};

        public static boolean a(int i, int[] iArr) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        public static ColorStateList b(Context context, int i) {
            int c2 = ThemeUtils.c(context, R.attr.colorControlHighlight);
            return new ColorStateList(new int[][]{ThemeUtils.b, ThemeUtils.d, ThemeUtils.f327c, ThemeUtils.f}, new int[]{ThemeUtils.b(context, R.attr.colorButtonNormal), ColorUtils.i(c2, i), ColorUtils.i(c2, i), i});
        }

        public static LayerDrawable d(ResourceManagerInternal resourceManagerInternal, Context context, int i) {
            BitmapDrawable bitmapDrawable;
            BitmapDrawable bitmapDrawable2;
            BitmapDrawable bitmapDrawable3;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
            Drawable e = resourceManagerInternal.e(context, R.drawable.abc_star_black_48dp);
            Drawable e2 = resourceManagerInternal.e(context, R.drawable.abc_star_half_black_48dp);
            if ((e instanceof BitmapDrawable) && e.getIntrinsicWidth() == dimensionPixelSize && e.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable = (BitmapDrawable) e;
                bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                e.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                e.draw(canvas);
                bitmapDrawable = new BitmapDrawable(createBitmap);
                bitmapDrawable2 = new BitmapDrawable(createBitmap);
            }
            bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
            if ((e2 instanceof BitmapDrawable) && e2.getIntrinsicWidth() == dimensionPixelSize && e2.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable3 = (BitmapDrawable) e2;
            } else {
                Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(createBitmap2);
                e2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                e2.draw(canvas2);
                bitmapDrawable3 = new BitmapDrawable(createBitmap2);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
            layerDrawable.setId(0, android.R.id.background);
            layerDrawable.setId(1, android.R.id.secondaryProgress);
            layerDrawable.setId(2, android.R.id.progress);
            return layerDrawable;
        }

        public static void f(Drawable drawable, int i, PorterDuff.Mode mode) {
            Drawable mutate = drawable.mutate();
            if (mode == null) {
                mode = AppCompatDrawableManager.b;
            }
            mutate.setColorFilter(AppCompatDrawableManager.c(i, mode));
        }

        public final LayerDrawable c(ResourceManagerInternal resourceManagerInternal, Context context, int i) {
            if (i == R.drawable.abc_cab_background_top_material) {
                return new LayerDrawable(new Drawable[]{resourceManagerInternal.e(context, R.drawable.abc_cab_background_internal_bg), resourceManagerInternal.e(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
            }
            if (i == R.drawable.abc_ratingbar_material) {
                return d(resourceManagerInternal, context, R.dimen.abc_star_big);
            }
            if (i == R.drawable.abc_ratingbar_indicator_material) {
                return d(resourceManagerInternal, context, R.dimen.abc_star_medium);
            }
            if (i == R.drawable.abc_ratingbar_small_material) {
                return d(resourceManagerInternal, context, R.dimen.abc_star_small);
            }
            return null;
        }

        public final ColorStateList e(Context context, int i) {
            if (i == R.drawable.abc_edit_text_material) {
                return ContextCompat.c(context, R.color.abc_tint_edittext);
            }
            if (i == R.drawable.abc_switch_track_mtrl_alpha) {
                return ContextCompat.c(context, R.color.abc_tint_switch_track);
            }
            if (i == R.drawable.abc_switch_thumb_material) {
                int[][] iArr = new int[3];
                int[] iArr2 = new int[3];
                ColorStateList d = ThemeUtils.d(context, R.attr.colorSwitchThumbNormal);
                if (d != null && d.isStateful()) {
                    int[] iArr3 = ThemeUtils.b;
                    iArr[0] = iArr3;
                    iArr2[0] = d.getColorForState(iArr3, 0);
                    iArr[1] = ThemeUtils.e;
                    iArr2[1] = ThemeUtils.c(context, R.attr.colorControlActivated);
                    iArr[2] = ThemeUtils.f;
                    iArr2[2] = d.getDefaultColor();
                } else {
                    iArr[0] = ThemeUtils.b;
                    iArr2[0] = ThemeUtils.b(context, R.attr.colorSwitchThumbNormal);
                    iArr[1] = ThemeUtils.e;
                    iArr2[1] = ThemeUtils.c(context, R.attr.colorControlActivated);
                    iArr[2] = ThemeUtils.f;
                    iArr2[2] = ThemeUtils.c(context, R.attr.colorSwitchThumbNormal);
                }
                return new ColorStateList(iArr, iArr2);
            }
            if (i == R.drawable.abc_btn_default_mtrl_shape) {
                return b(context, ThemeUtils.c(context, R.attr.colorButtonNormal));
            }
            if (i == R.drawable.abc_btn_borderless_material) {
                return b(context, 0);
            }
            if (i == R.drawable.abc_btn_colored_material) {
                return b(context, ThemeUtils.c(context, R.attr.colorAccent));
            }
            if (i != R.drawable.abc_spinner_mtrl_am_alpha && i != R.drawable.abc_spinner_textfield_background_material) {
                if (a(i, this.b)) {
                    return ThemeUtils.d(context, R.attr.colorControlNormal);
                }
                if (a(i, this.e)) {
                    return ContextCompat.c(context, R.color.abc_tint_default);
                }
                if (a(i, this.f)) {
                    return ContextCompat.c(context, R.color.abc_tint_btn_checkable);
                }
                if (i == R.drawable.abc_seekbar_thumb_material) {
                    return ContextCompat.c(context, R.color.abc_tint_seek_thumb);
                }
                return null;
            }
            return ContextCompat.c(context, R.color.abc_tint_spinner);
        }
    }

    public static synchronized AppCompatDrawableManager a() {
        AppCompatDrawableManager appCompatDrawableManager;
        synchronized (AppCompatDrawableManager.class) {
            try {
                if (f235c == null) {
                    d();
                }
                appCompatDrawableManager = f235c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return appCompatDrawableManager;
    }

    public static synchronized PorterDuffColorFilter c(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter g;
        synchronized (AppCompatDrawableManager.class) {
            g = ResourceManagerInternal.g(i, mode);
        }
        return g;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.appcompat.widget.AppCompatDrawableManager, java.lang.Object] */
    public static synchronized void d() {
        synchronized (AppCompatDrawableManager.class) {
            if (f235c == null) {
                ?? obj = new Object();
                f235c = obj;
                obj.f236a = ResourceManagerInternal.c();
                f235c.f236a.l(new AnonymousClass1());
            }
        }
    }

    public static void e(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        ColorStateList colorStateList;
        PorterDuff.Mode mode;
        PorterDuff.Mode mode2 = ResourceManagerInternal.h;
        int[] state = drawable.getState();
        if (drawable.mutate() == drawable) {
            if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
                drawable.setState(new int[0]);
                drawable.setState(state);
            }
            boolean z = tintInfo.d;
            if (!z && !tintInfo.f330c) {
                drawable.clearColorFilter();
            } else {
                PorterDuffColorFilter porterDuffColorFilter = null;
                if (z) {
                    colorStateList = tintInfo.f329a;
                } else {
                    colorStateList = null;
                }
                if (tintInfo.f330c) {
                    mode = tintInfo.b;
                } else {
                    mode = ResourceManagerInternal.h;
                }
                if (colorStateList != null && mode != null) {
                    porterDuffColorFilter = ResourceManagerInternal.g(colorStateList.getColorForState(iArr, 0), mode);
                }
                drawable.setColorFilter(porterDuffColorFilter);
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
                return;
            }
            return;
        }
        Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
    }

    public final synchronized Drawable b(Context context, int i) {
        return this.f236a.e(context, i);
    }
}
