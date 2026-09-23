package androidx.biometric;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.biometric.BiometricPrompt;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.google.android.gms.ads.RequestConfiguration;

@RestrictTo
/* loaded from: classes.dex */
public class FingerprintDialogFragment extends DialogFragment {

    /* renamed from: c, reason: collision with root package name */
    public final Handler f400c = new Handler(Looper.getMainLooper());
    public final Runnable f = new Runnable() { // from class: androidx.biometric.FingerprintDialogFragment.1
        @Override // java.lang.Runnable
        public final void run() {
            FingerprintDialogFragment fingerprintDialogFragment = FingerprintDialogFragment.this;
            Context context = fingerprintDialogFragment.getContext();
            if (context == null) {
                Log.w("FingerprintFragment", "Not resetting the dialog. Context is null.");
            } else {
                fingerprintDialogFragment.g.f(1);
                fingerprintDialogFragment.g.e(context.getString(R.string.fingerprint_dialog_touch_sensor));
            }
        }
    };
    public BiometricViewModel g;
    public int h;
    public int i;
    public ImageView j;
    public TextView k;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21Impl {
        public static void a(@NonNull Drawable drawable) {
            if (drawable instanceof AnimatedVectorDrawable) {
                ((AnimatedVectorDrawable) drawable).start();
            }
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api26Impl {
        public static int a() {
            return R.attr.colorError;
        }
    }

    public final int g(int i) {
        Context context = getContext();
        FragmentActivity activity = getActivity();
        if (context != null && activity != null) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(i, typedValue, true);
            TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(typedValue.data, new int[]{i});
            int color = obtainStyledAttributes.getColor(0, 0);
            obtainStyledAttributes.recycle();
            return color;
        }
        Log.w("FingerprintFragment", "Unable to get themed color. Context or activity is null.");
        return 0;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        BiometricViewModel biometricViewModel = this.g;
        if (biometricViewModel.x == null) {
            biometricViewModel.x = new LiveData();
        }
        BiometricViewModel.h(biometricViewModel.x, Boolean.TRUE);
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        int i;
        super.onCreate(bundle);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            BiometricViewModel biometricViewModel = (BiometricViewModel) new ViewModelProvider(activity).a(BiometricViewModel.class);
            this.g = biometricViewModel;
            if (biometricViewModel.z == null) {
                biometricViewModel.z = new LiveData();
            }
            biometricViewModel.z.d(this, new Observer<Integer>() { // from class: androidx.biometric.FingerprintDialogFragment.3
                @Override // androidx.lifecycle.Observer
                public final void a(Object obj) {
                    int i2;
                    int i3;
                    Integer num = (Integer) obj;
                    FingerprintDialogFragment fingerprintDialogFragment = FingerprintDialogFragment.this;
                    Handler handler = fingerprintDialogFragment.f400c;
                    Runnable runnable = fingerprintDialogFragment.f;
                    handler.removeCallbacks(runnable);
                    int intValue = num.intValue();
                    if (fingerprintDialogFragment.j != null) {
                        int i4 = fingerprintDialogFragment.g.y;
                        Context context = fingerprintDialogFragment.getContext();
                        Drawable drawable = null;
                        if (context == null) {
                            Log.w("FingerprintFragment", "Unable to get asset. Context is null.");
                        } else {
                            if (i4 == 0 && intValue == 1) {
                                i3 = R.drawable.fingerprint_dialog_fp_icon;
                            } else if (i4 == 1 && intValue == 2) {
                                i3 = R.drawable.fingerprint_dialog_error;
                            } else if (i4 == 2 && intValue == 1) {
                                i3 = R.drawable.fingerprint_dialog_fp_icon;
                            } else if (i4 == 1 && intValue == 3) {
                                i3 = R.drawable.fingerprint_dialog_fp_icon;
                            }
                            drawable = context.getDrawable(i3);
                        }
                        if (drawable != null) {
                            fingerprintDialogFragment.j.setImageDrawable(drawable);
                            if ((i4 != 0 || intValue != 1) && ((i4 == 1 && intValue == 2) || (i4 == 2 && intValue == 1))) {
                                Api21Impl.a(drawable);
                            }
                            fingerprintDialogFragment.g.y = intValue;
                        }
                    }
                    int intValue2 = num.intValue();
                    TextView textView = fingerprintDialogFragment.k;
                    if (textView != null) {
                        if (intValue2 == 2) {
                            i2 = fingerprintDialogFragment.h;
                        } else {
                            i2 = fingerprintDialogFragment.i;
                        }
                        textView.setTextColor(i2);
                    }
                    fingerprintDialogFragment.f400c.postDelayed(runnable, 2000L);
                }
            });
            BiometricViewModel biometricViewModel2 = this.g;
            if (biometricViewModel2.A == null) {
                biometricViewModel2.A = new LiveData();
            }
            biometricViewModel2.A.d(this, new Observer<CharSequence>() { // from class: androidx.biometric.FingerprintDialogFragment.4
                @Override // androidx.lifecycle.Observer
                public final void a(Object obj) {
                    CharSequence charSequence = (CharSequence) obj;
                    FingerprintDialogFragment fingerprintDialogFragment = FingerprintDialogFragment.this;
                    Handler handler = fingerprintDialogFragment.f400c;
                    Runnable runnable = fingerprintDialogFragment.f;
                    handler.removeCallbacks(runnable);
                    TextView textView = fingerprintDialogFragment.k;
                    if (textView != null) {
                        textView.setText(charSequence);
                    }
                    fingerprintDialogFragment.f400c.postDelayed(runnable, 2000L);
                }
            });
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.h = g(Api26Impl.a());
        } else {
            Context context = getContext();
            if (context != null) {
                i = context.getColor(R.color.biometric_error_color);
            } else {
                i = 0;
            }
            this.h = i;
        }
        this.i = g(android.R.attr.textColorSecondary);
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        CharSequence charSequence;
        AlertDialog.Builder builder = new AlertDialog.Builder(requireContext());
        BiometricPrompt.PromptInfo promptInfo = this.g.f;
        CharSequence charSequence2 = null;
        if (promptInfo != null) {
            charSequence = promptInfo.f394a;
        } else {
            charSequence = null;
        }
        AlertController.AlertParams alertParams = builder.f81a;
        alertParams.d = charSequence;
        View inflate = LayoutInflater.from(alertParams.f76a).inflate(R.layout.fingerprint_dialog_layout, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.fingerprint_subtitle);
        if (textView != null) {
            this.g.getClass();
            if (TextUtils.isEmpty(null)) {
                textView.setVisibility(8);
            } else {
                textView.setVisibility(0);
                textView.setText((CharSequence) null);
            }
        }
        TextView textView2 = (TextView) inflate.findViewById(R.id.fingerprint_description);
        if (textView2 != null) {
            this.g.getClass();
            if (TextUtils.isEmpty(null)) {
                textView2.setVisibility(8);
            } else {
                textView2.setVisibility(0);
                textView2.setText((CharSequence) null);
            }
        }
        this.j = (ImageView) inflate.findViewById(R.id.fingerprint_icon);
        this.k = (TextView) inflate.findViewById(R.id.fingerprint_error);
        if (AuthenticatorUtils.a(this.g.c())) {
            charSequence2 = getString(R.string.confirm_device_credential_password);
        } else {
            BiometricViewModel biometricViewModel = this.g;
            String str = biometricViewModel.k;
            if (str != null) {
                charSequence2 = str;
            } else {
                BiometricPrompt.PromptInfo promptInfo2 = biometricViewModel.f;
                if (promptInfo2 != null && (charSequence2 = promptInfo2.b) == null) {
                    charSequence2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
            }
        }
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: androidx.biometric.FingerprintDialogFragment.2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                FingerprintDialogFragment.this.g.g(true);
            }
        };
        alertParams.f = charSequence2;
        alertParams.g = onClickListener;
        alertParams.k = inflate;
        AlertDialog a2 = builder.a();
        a2.setCanceledOnTouchOutside(false);
        return a2;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        this.f400c.removeCallbacksAndMessages(null);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        BiometricViewModel biometricViewModel = this.g;
        biometricViewModel.y = 0;
        biometricViewModel.f(1);
        this.g.e(getString(R.string.fingerprint_dialog_touch_sensor));
    }
}
