package androidx.emoji2.viewsintegration;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import androidx.emoji2.text.EmojiCompat;

/* loaded from: classes.dex */
public final class EmojiTextViewHelper {

    /* renamed from: a, reason: collision with root package name */
    public final HelperInternal f1051a;

    /* loaded from: classes.dex */
    public static class HelperInternal {
        public InputFilter[] a(InputFilter[] inputFilterArr) {
            return inputFilterArr;
        }

        public void b(boolean z) {
        }

        public void c(boolean z) {
        }

        public TransformationMethod d(TransformationMethod transformationMethod) {
            return null;
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class HelperInternal19 extends HelperInternal {

        /* renamed from: a, reason: collision with root package name */
        public final TextView f1052a;
        public final EmojiInputFilter b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f1053c = true;

        public HelperInternal19(TextView textView) {
            this.f1052a = textView;
            this.b = new EmojiInputFilter(textView);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final InputFilter[] a(InputFilter[] inputFilterArr) {
            if (!this.f1053c) {
                SparseArray sparseArray = new SparseArray(1);
                for (int i = 0; i < inputFilterArr.length; i++) {
                    InputFilter inputFilter = inputFilterArr[i];
                    if (inputFilter instanceof EmojiInputFilter) {
                        sparseArray.put(i, inputFilter);
                    }
                }
                if (sparseArray.size() == 0) {
                    return inputFilterArr;
                }
                int length = inputFilterArr.length;
                InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
                int i2 = 0;
                for (int i3 = 0; i3 < length; i3++) {
                    if (sparseArray.indexOfKey(i3) < 0) {
                        inputFilterArr2[i2] = inputFilterArr[i3];
                        i2++;
                    }
                }
                return inputFilterArr2;
            }
            int length2 = inputFilterArr.length;
            int i4 = 0;
            while (true) {
                EmojiInputFilter emojiInputFilter = this.b;
                if (i4 < length2) {
                    if (inputFilterArr[i4] == emojiInputFilter) {
                        return inputFilterArr;
                    }
                    i4++;
                } else {
                    InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                    System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                    inputFilterArr3[length2] = emojiInputFilter;
                    return inputFilterArr3;
                }
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final void b(boolean z) {
            if (z) {
                TextView textView = this.f1052a;
                textView.setTransformationMethod(d(textView.getTransformationMethod()));
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final void c(boolean z) {
            this.f1053c = z;
            TextView textView = this.f1052a;
            textView.setTransformationMethod(d(textView.getTransformationMethod()));
            textView.setFilters(a(textView.getFilters()));
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final TransformationMethod d(TransformationMethod transformationMethod) {
            if (this.f1053c) {
                if (transformationMethod instanceof EmojiTransformationMethod) {
                    return transformationMethod;
                }
                if (transformationMethod instanceof PasswordTransformationMethod) {
                    return transformationMethod;
                }
                return new EmojiTransformationMethod(transformationMethod);
            }
            if (transformationMethod instanceof EmojiTransformationMethod) {
                return ((EmojiTransformationMethod) transformationMethod).f1057c;
            }
            return transformationMethod;
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class SkippingHelper19 extends HelperInternal {

        /* renamed from: a, reason: collision with root package name */
        public final HelperInternal19 f1054a;

        public SkippingHelper19(TextView textView) {
            this.f1054a = new HelperInternal19(textView);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final InputFilter[] a(InputFilter[] inputFilterArr) {
            boolean z;
            if (EmojiCompat.k != null) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                return inputFilterArr;
            }
            return this.f1054a.a(inputFilterArr);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final void b(boolean z) {
            boolean z2;
            if (EmojiCompat.k != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                return;
            }
            this.f1054a.b(z);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final void c(boolean z) {
            boolean z2;
            HelperInternal19 helperInternal19 = this.f1054a;
            if (EmojiCompat.k != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                helperInternal19.f1053c = z;
            } else {
                helperInternal19.c(z);
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final TransformationMethod d(TransformationMethod transformationMethod) {
            boolean z;
            if (EmojiCompat.k != null) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                return null;
            }
            return this.f1054a.d(null);
        }
    }

    public EmojiTextViewHelper(TextView textView) {
        this.f1051a = new SkippingHelper19(textView);
    }

    public final InputFilter[] a(InputFilter[] inputFilterArr) {
        return this.f1051a.a(inputFilterArr);
    }

    public final void b(boolean z) {
        this.f1051a.b(z);
    }

    public final void c(boolean z) {
        this.f1051a.c(z);
    }

    public final TransformationMethod d() {
        return this.f1051a.d(null);
    }
}
