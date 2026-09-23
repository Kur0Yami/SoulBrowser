package androidx.core.view.inputmethod;

import android.content.ClipData;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.InputConnectionCompat;
import androidx.core.view.inputmethod.InputContentInfoCompat;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements InputConnectionCompat.OnCommitContentListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppCompatEditText f853a;

    public final boolean a(InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 25 && (i & 1) != 0) {
            try {
                inputContentInfoCompat.f849a.b();
                Parcelable parcelable = (Parcelable) inputContentInfoCompat.f849a.d();
                if (bundle == null) {
                    bundle = new Bundle();
                } else {
                    bundle = new Bundle(bundle);
                }
                bundle.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", parcelable);
            } catch (Exception e) {
                Log.w("InputConnectionCompat", "Can't insert content from IME; requestPermission() failed", e);
                return false;
            }
        }
        InputContentInfoCompat.InputContentInfoCompatImpl inputContentInfoCompatImpl = inputContentInfoCompat.f849a;
        ContentInfoCompat.Builder builder = new ContentInfoCompat.Builder(new ClipData(inputContentInfoCompatImpl.getDescription(), new ClipData.Item(inputContentInfoCompatImpl.a())), 2);
        builder.d(inputContentInfoCompatImpl.c());
        builder.b(bundle);
        if (ViewCompat.u(this.f853a, builder.a()) != null) {
            return false;
        }
        return true;
    }
}
