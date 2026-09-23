.class public Landroidx/biometric/FingerprintDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/FingerprintDialogFragment$Api21Impl;,
        Landroidx/biometric/FingerprintDialogFragment$Api26Impl;
    }
.end annotation


# instance fields
.field public final c:Landroid/os/Handler;

.field public final f:Ljava/lang/Runnable;

.field public g:Landroidx/biometric/BiometricViewModel;

.field public h:I

.field public i:I

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->c:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Landroidx/biometric/FingerprintDialogFragment$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Landroidx/biometric/FingerprintDialogFragment$1;-><init>(Landroidx/biometric/FingerprintDialogFragment;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->f:Ljava/lang/Runnable;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final g(I)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v3, Landroid/util/TypedValue;

    .line 16
    .line 17
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-virtual {v0, p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 26
    .line 27
    .line 28
    iget v0, v3, Landroid/util/TypedValue;->data:I

    .line 29
    .line 30
    filled-new-array {p1}, [I

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    .line 44
    .line 45
    return v0

    .line 46
    :cond_1
    :goto_0
    const-string p1, "FingerprintFragment"

    .line 47
    .line 48
    const-string v0, "Unable to get themed color. Context or activity is null."

    .line 49
    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return v2
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroidx/biometric/BiometricViewModel;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p1, Landroidx/biometric/BiometricViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    :cond_0
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-static {p1, v0}, Landroidx/biometric/BiometricViewModel;->h(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 14
    .line 15
    .line 16
    const-class p1, Landroidx/biometric/BiometricViewModel;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroidx/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroidx/biometric/BiometricViewModel;

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroidx/biometric/BiometricViewModel;

    .line 25
    .line 26
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p1, Landroidx/biometric/BiometricViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    :cond_1
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    new-instance v0, Landroidx/biometric/FingerprintDialogFragment$3;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Landroidx/biometric/FingerprintDialogFragment$3;-><init>(Landroidx/biometric/FingerprintDialogFragment;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->d(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroidx/biometric/BiometricViewModel;

    .line 48
    .line 49
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->A:Landroidx/lifecycle/MutableLiveData;

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p1, Landroidx/biometric/BiometricViewModel;->A:Landroidx/lifecycle/MutableLiveData;

    .line 59
    .line 60
    :cond_2
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->A:Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    new-instance v0, Landroidx/biometric/FingerprintDialogFragment$4;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Landroidx/biometric/FingerprintDialogFragment$4;-><init>(Landroidx/biometric/FingerprintDialogFragment;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->d(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 71
    .line 72
    const/16 v0, 0x1a

    .line 73
    .line 74
    if-lt p1, v0, :cond_3

    .line 75
    .line 76
    invoke-static {}, Landroidx/biometric/FingerprintDialogFragment$Api26Impl;->a()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-virtual {p0, p1}, Landroidx/biometric/FingerprintDialogFragment;->g(I)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    iput p1, p0, Landroidx/biometric/FingerprintDialogFragment;->h:I

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    sget v0, Landroidx/biometric/R$color;->biometric_error_color:I

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    goto :goto_1

    .line 100
    :cond_4
    const/4 p1, 0x0

    .line 101
    :goto_1
    iput p1, p0, Landroidx/biometric/FingerprintDialogFragment;->h:I

    .line 102
    .line 103
    :goto_2
    const p1, 0x1010038

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Landroidx/biometric/FingerprintDialogFragment;->g(I)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    iput p1, p0, Landroidx/biometric/FingerprintDialogFragment;->i:I

    .line 111
    .line 112
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroidx/biometric/BiometricViewModel;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/biometric/BiometricViewModel;->f:Landroidx/biometric/BiometricPrompt$PromptInfo;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt$PromptInfo;->a:Ljava/lang/CharSequence;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v0, v1

    .line 21
    :goto_0
    iget-object v2, p1, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 22
    .line 23
    iput-object v0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->d:Ljava/lang/CharSequence;

    .line 24
    .line 25
    iget-object v0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/view/ContextThemeWrapper;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget v3, Landroidx/biometric/R$layout;->fingerprint_dialog_layout:I

    .line 32
    .line 33
    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget v3, Landroidx/biometric/R$id;->fingerprint_subtitle:I

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Landroid/widget/TextView;

    .line 44
    .line 45
    const/16 v4, 0x8

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    iget-object v6, p0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroidx/biometric/BiometricViewModel;

    .line 51
    .line 52
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_1

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_1
    sget v3, Landroidx/biometric/R$id;->fingerprint_description:I

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Landroid/widget/TextView;

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    iget-object v6, p0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroidx/biometric/BiometricViewModel;

    .line 82
    .line 83
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_3

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    :goto_2
    sget v3, Landroidx/biometric/R$id;->fingerprint_icon:I

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Landroid/widget/ImageView;

    .line 109
    .line 110
    iput-object v3, p0, Landroidx/biometric/FingerprintDialogFragment;->j:Landroid/widget/ImageView;

    .line 111
    .line 112
    sget v3, Landroidx/biometric/R$id;->fingerprint_error:I

    .line 113
    .line 114
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Landroid/widget/TextView;

    .line 119
    .line 120
    iput-object v3, p0, Landroidx/biometric/FingerprintDialogFragment;->k:Landroid/widget/TextView;

    .line 121
    .line 122
    iget-object v3, p0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroidx/biometric/BiometricViewModel;

    .line 123
    .line 124
    invoke-virtual {v3}, Landroidx/biometric/BiometricViewModel;->c()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    invoke-static {v3}, Landroidx/biometric/AuthenticatorUtils;->a(I)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_5

    .line 133
    .line 134
    sget v1, Landroidx/biometric/R$string;->confirm_device_credential_password:I

    .line 135
    .line 136
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    goto :goto_3

    .line 141
    :cond_5
    iget-object v3, p0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroidx/biometric/BiometricViewModel;

    .line 142
    .line 143
    iget-object v4, v3, Landroidx/biometric/BiometricViewModel;->k:Ljava/lang/String;

    .line 144
    .line 145
    if-eqz v4, :cond_6

    .line 146
    .line 147
    move-object v1, v4

    .line 148
    goto :goto_3

    .line 149
    :cond_6
    iget-object v3, v3, Landroidx/biometric/BiometricViewModel;->f:Landroidx/biometric/BiometricPrompt$PromptInfo;

    .line 150
    .line 151
    if-eqz v3, :cond_8

    .line 152
    .line 153
    iget-object v1, v3, Landroidx/biometric/BiometricPrompt$PromptInfo;->b:Ljava/lang/CharSequence;

    .line 154
    .line 155
    if-eqz v1, :cond_7

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_7
    const-string v1, ""

    .line 159
    .line 160
    :cond_8
    :goto_3
    new-instance v3, Landroidx/biometric/FingerprintDialogFragment$2;

    .line 161
    .line 162
    invoke-direct {v3, p0}, Landroidx/biometric/FingerprintDialogFragment$2;-><init>(Landroidx/biometric/FingerprintDialogFragment;)V

    .line 163
    .line 164
    .line 165
    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->f:Ljava/lang/CharSequence;

    .line 166
    .line 167
    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 168
    .line 169
    iput-object v0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->k:Landroid/view/View;

    .line 170
    .line 171
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->a()Landroidx/appcompat/app/AlertDialog;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 176
    .line 177
    .line 178
    return-object p1
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->c:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroidx/biometric/BiometricViewModel;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Landroidx/biometric/BiometricViewModel;->y:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->f(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroidx/biometric/BiometricViewModel;

    .line 14
    .line 15
    sget v1, Landroidx/biometric/R$string;->fingerprint_dialog_touch_sensor:I

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->e(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
