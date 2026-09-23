package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import androidx.annotation.RestrictTo;

/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo
/* loaded from: classes.dex */
public class AppCompatCheckedTextViewHelper {

    /* renamed from: a, reason: collision with root package name */
    public final AppCompatCheckedTextView f231a;
    public ColorStateList b = null;

    /* renamed from: c, reason: collision with root package name */
    public PorterDuff.Mode f232c = null;
    public boolean d = false;
    public boolean e = false;
    public boolean f;

    public AppCompatCheckedTextViewHelper(AppCompatCheckedTextView appCompatCheckedTextView) {
        this.f231a = appCompatCheckedTextView;
    }

    public final void a() {
        AppCompatCheckedTextView appCompatCheckedTextView = this.f231a;
        Drawable checkMarkDrawable = appCompatCheckedTextView.getCheckMarkDrawable();
        if (checkMarkDrawable != null) {
            if (this.d || this.e) {
                Drawable mutate = checkMarkDrawable.mutate();
                if (this.d) {
                    mutate.setTintList(this.b);
                }
                if (this.e) {
                    mutate.setTintMode(this.f232c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(appCompatCheckedTextView.getDrawableState());
                }
                appCompatCheckedTextView.setCheckMarkDrawable(mutate);
            }
        }
    }
}
