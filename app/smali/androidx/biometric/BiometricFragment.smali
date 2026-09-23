.class public Landroidx/biometric/BiometricFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricFragment$Api21Impl;,
        Landroidx/biometric/BiometricFragment$Api28Impl;,
        Landroidx/biometric/BiometricFragment$Api29Impl;,
        Landroidx/biometric/BiometricFragment$Api30Impl;,
        Landroidx/biometric/BiometricFragment$StopIgnoringCancelRunnable;,
        Landroidx/biometric/BiometricFragment$StopDelayingPromptRunnable;,
        Landroidx/biometric/BiometricFragment$ShowPromptForAuthenticationRunnable;,
        Landroidx/biometric/BiometricFragment$PromptExecutor;
    }
.end annotation


# instance fields
.field public final c:Landroid/os/Handler;

.field public f:Landroidx/biometric/BiometricViewModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

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
    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->c:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Landroidx/biometric/BiometricViewModel;->m:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->g()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 10
    .line 11
    iget-boolean v0, v0, Landroidx/biometric/BiometricViewModel;->o:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->g(Landroidx/fragment/app/Fragment;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->d()I

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 42
    .line 43
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    const/16 v4, 0x1d

    .line 46
    .line 47
    if-eq v3, v4, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    sget v3, Landroidx/biometric/R$array;->delay_showing_prompt_models:I

    .line 51
    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    array-length v3, v0

    .line 64
    :goto_0
    if-ge v1, v3, :cond_4

    .line 65
    .line 66
    aget-object v4, v0, v1

    .line 67
    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    iput-boolean v1, v0, Landroidx/biometric/BiometricViewModel;->p:Z

    .line 78
    .line 79
    new-instance v1, Landroidx/biometric/BiometricFragment$StopDelayingPromptRunnable;

    .line 80
    .line 81
    invoke-direct {v1, v0}, Landroidx/biometric/BiometricFragment$StopDelayingPromptRunnable;-><init>(Landroidx/biometric/BiometricViewModel;)V

    .line 82
    .line 83
    .line 84
    const-wide/16 v2, 0x258

    .line 85
    .line 86
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c:Landroid/os/Handler;

    .line 87
    .line 88
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    :goto_1
    return-void
.end method

.method public final f(I)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 5
    .line 6
    iget-boolean v0, v0, Landroidx/biometric/BiometricViewModel;->q:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->i()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 18
    .line 19
    iput p1, v0, Landroidx/biometric/BiometricViewModel;->l:I

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/16 v0, 0xa

    .line 29
    .line 30
    invoke-static {p1, v0}, Landroidx/biometric/ErrorUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, v0, p1}, Landroidx/biometric/BiometricFragment;->l(ILjava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 38
    .line 39
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->i:Landroidx/biometric/CancellationSignalProvider;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    new-instance v0, Landroidx/biometric/CancellationSignalProvider;

    .line 44
    .line 45
    invoke-direct {v0}, Landroidx/biometric/CancellationSignalProvider;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p1, Landroidx/biometric/BiometricViewModel;->i:Landroidx/biometric/CancellationSignalProvider;

    .line 49
    .line 50
    :cond_2
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->i:Landroidx/biometric/CancellationSignalProvider;

    .line 51
    .line 52
    iget-object v0, p1, Landroidx/biometric/CancellationSignalProvider;->a:Landroid/os/CancellationSignal;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    const-string v2, "CancelSignalProvider"

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    :try_start_0
    invoke-static {v0}, Landroidx/biometric/CancellationSignalProvider$Api16Impl;->a(Landroid/os/CancellationSignal;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v3, "Got NPE while canceling biometric authentication."

    .line 65
    .line 66
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    :goto_0
    iput-object v1, p1, Landroidx/biometric/CancellationSignalProvider;->a:Landroid/os/CancellationSignal;

    .line 70
    .line 71
    :cond_3
    iget-object v0, p1, Landroidx/biometric/CancellationSignalProvider;->b:Landroidx/core/os/CancellationSignal;

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    :try_start_1
    invoke-virtual {v0}, Landroidx/core/os/CancellationSignal;->a()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_1
    move-exception v0

    .line 80
    const-string v3, "Got NPE while canceling fingerprint authentication."

    .line 81
    .line 82
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    :goto_1
    iput-object v1, p1, Landroidx/biometric/CancellationSignalProvider;->b:Landroidx/core/os/CancellationSignal;

    .line 86
    .line 87
    :cond_4
    :goto_2
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Landroidx/biometric/BiometricViewModel;->m:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "androidx.biometric.FingerprintDialogFragment"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->C(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/biometric/FingerprintDialogFragment;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->g(Landroidx/fragment/app/Fragment;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->d()I

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final h()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->c()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Landroidx/biometric/AuthenticatorUtils;->a(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public final i()Z
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x1c

    .line 5
    .line 6
    if-lt v0, v2, :cond_9

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v3, :cond_6

    .line 14
    .line 15
    iget-object v5, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 16
    .line 17
    iget-object v5, v5, Landroidx/biometric/BiometricViewModel;->g:Landroidx/biometric/BiometricPrompt$CryptoObject;

    .line 18
    .line 19
    if-eqz v5, :cond_6

    .line 20
    .line 21
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 22
    .line 23
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 24
    .line 25
    if-eq v0, v2, :cond_0

    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_0
    sget v0, Landroidx/biometric/R$array;->crypto_fingerprint_fallback_vendors:I

    .line 29
    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    array-length v6, v0

    .line 42
    move v7, v4

    .line 43
    :goto_0
    if-ge v7, v6, :cond_3

    .line 44
    .line 45
    aget-object v8, v0, v7

    .line 46
    .line 47
    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-eqz v8, :cond_2

    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    :goto_1
    sget v0, Landroidx/biometric/R$array;->crypto_fingerprint_fallback_prefixes:I

    .line 58
    .line 59
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 60
    .line 61
    if-nez v5, :cond_4

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    array-length v3, v0

    .line 73
    move v6, v4

    .line 74
    :goto_2
    if-ge v6, v3, :cond_6

    .line 75
    .line 76
    aget-object v7, v0, v6

    .line 77
    .line 78
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-eqz v7, :cond_5

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_6
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 89
    .line 90
    if-ne v0, v2, :cond_8

    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    if-eqz v2, :cond_7

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0}, Landroidx/biometric/PackageUtils$Api23Impl;->a(Landroid/content/pm/PackageManager;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    return v4

    .line 115
    :cond_7
    return v1

    .line 116
    :cond_8
    return v4

    .line 117
    :cond_9
    :goto_4
    return v1
.end method

.method public final j()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "BiometricFragment"

    .line 8
    .line 9
    const-string v1, "Failed to check device credential. Client FragmentActivity not found."

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {v0}, Landroidx/biometric/KeyguardUtils$Api23Impl;->a(Landroid/content/Context;)Landroid/app/KeyguardManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    sget v0, Landroidx/biometric/R$string;->generic_error_no_keyguard:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/16 v1, 0xc

    .line 28
    .line 29
    invoke-virtual {p0, v1, v0}, Landroidx/biometric/BiometricFragment;->k(ILjava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 34
    .line 35
    iget-object v2, v1, Landroidx/biometric/BiometricViewModel;->f:Landroidx/biometric/BiometricPrompt$PromptInfo;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    iget-object v2, v2, Landroidx/biometric/BiometricPrompt$PromptInfo;->a:Ljava/lang/CharSequence;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move-object v2, v3

    .line 44
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v2, v3}, Landroidx/biometric/BiometricFragment$Api21Impl;->a(Landroid/app/KeyguardManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    sget v0, Landroidx/biometric/R$string;->generic_error_no_device_credential:I

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/16 v1, 0xe

    .line 65
    .line 66
    invoke-virtual {p0, v1, v0}, Landroidx/biometric/BiometricFragment;->k(ILjava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    iput-boolean v2, v1, Landroidx/biometric/BiometricViewModel;->o:Z

    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->i()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->g()V

    .line 82
    .line 83
    .line 84
    :cond_4
    const/high16 v1, 0x8080000

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final k(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->l(ILjava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final l(ILjava/lang/CharSequence;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/biometric/BiometricViewModel;->o:Z

    .line 4
    .line 5
    const-string v2, "BiometricFragment"

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string p1, "Error not sent to client. User is confirming their device credential."

    .line 10
    .line 11
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v1, v0, Landroidx/biometric/BiometricViewModel;->n:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string p1, "Error not sent to client. Client is not awaiting a result."

    .line 20
    .line 21
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, v0, Landroidx/biometric/BiometricViewModel;->n:Z

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/biometric/BiometricViewModel;->d:Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    new-instance v0, Landroidx/biometric/BiometricViewModel$DefaultExecutor;

    .line 34
    .line 35
    invoke-direct {v0}, Landroidx/biometric/BiometricViewModel$DefaultExecutor;-><init>()V

    .line 36
    .line 37
    .line 38
    :goto_0
    new-instance v1, Landroidx/biometric/BiometricFragment$10;

    .line 39
    .line 40
    invoke-direct {v1, p0, p1, p2}, Landroidx/biometric/BiometricFragment$10;-><init>(Landroidx/biometric/BiometricFragment;ILjava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final m(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/biometric/BiometricViewModel;->n:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string p1, "BiometricFragment"

    .line 8
    .line 9
    const-string v0, "Success not sent to client. Client is not awaiting a result."

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v0, Landroidx/biometric/BiometricViewModel;->n:Z

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/biometric/BiometricViewModel;->d:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Landroidx/biometric/BiometricViewModel$DefaultExecutor;

    .line 24
    .line 25
    invoke-direct {v0}, Landroidx/biometric/BiometricViewModel$DefaultExecutor;-><init>()V

    .line 26
    .line 27
    .line 28
    :goto_0
    new-instance v1, Landroidx/biometric/BiometricFragment$9;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1}, Landroidx/biometric/BiometricFragment$9;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sget p1, Landroidx/biometric/R$string;->default_error_msg:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->f(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricViewModel;->e(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x1

    .line 5
    if-ne p1, p3, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p1, Landroidx/biometric/BiometricViewModel;->o:Z

    .line 11
    .line 12
    const/4 p1, -0x1

    .line 13
    if-ne p2, p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-direct {p1, p2, p3}, Landroidx/biometric/BiometricPrompt$AuthenticationResult;-><init>(Landroidx/biometric/BiometricPrompt$CryptoObject;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricFragment;->m(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    sget p1, Landroidx/biometric/R$string;->generic_error_user_canceled:I

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/16 p2, 0xa

    .line 32
    .line 33
    invoke-virtual {p0, p2, p1}, Landroidx/biometric/BiometricFragment;->k(ILjava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

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
    return-void

    .line 11
    :cond_0
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 18
    .line 19
    .line 20
    const-class v0, Landroidx/biometric/BiometricViewModel;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroidx/biometric/BiometricViewModel;

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 29
    .line 30
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p1, Landroidx/biometric/BiometricViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    :cond_1
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    new-instance v0, Landroidx/biometric/BiometricFragment$1;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Landroidx/biometric/BiometricFragment$1;-><init>(Landroidx/biometric/BiometricFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->d(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 52
    .line 53
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 58
    .line 59
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p1, Landroidx/biometric/BiometricViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    .line 63
    .line 64
    :cond_2
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    .line 65
    .line 66
    new-instance v0, Landroidx/biometric/BiometricFragment$2;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Landroidx/biometric/BiometricFragment$2;-><init>(Landroidx/biometric/BiometricFragment;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->d(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 75
    .line 76
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 77
    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 81
    .line 82
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v0, p1, Landroidx/biometric/BiometricViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 86
    .line 87
    :cond_3
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 88
    .line 89
    new-instance v0, Landroidx/biometric/BiometricFragment$3;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Landroidx/biometric/BiometricFragment$3;-><init>(Landroidx/biometric/BiometricFragment;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->d(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 98
    .line 99
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 100
    .line 101
    if-nez v0, :cond_4

    .line 102
    .line 103
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 104
    .line 105
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v0, p1, Landroidx/biometric/BiometricViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 109
    .line 110
    :cond_4
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 111
    .line 112
    new-instance v0, Landroidx/biometric/BiometricFragment$4;

    .line 113
    .line 114
    invoke-direct {v0, p0}, Landroidx/biometric/BiometricFragment$4;-><init>(Landroidx/biometric/BiometricFragment;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->d(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 121
    .line 122
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    .line 123
    .line 124
    if-nez v0, :cond_5

    .line 125
    .line 126
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 127
    .line 128
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 129
    .line 130
    .line 131
    iput-object v0, p1, Landroidx/biometric/BiometricViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    .line 132
    .line 133
    :cond_5
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    .line 134
    .line 135
    new-instance v0, Landroidx/biometric/BiometricFragment$5;

    .line 136
    .line 137
    invoke-direct {v0, p0}, Landroidx/biometric/BiometricFragment$5;-><init>(Landroidx/biometric/BiometricFragment;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->d(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 144
    .line 145
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 146
    .line 147
    if-nez v0, :cond_6

    .line 148
    .line 149
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 150
    .line 151
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 152
    .line 153
    .line 154
    iput-object v0, p1, Landroidx/biometric/BiometricViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 155
    .line 156
    :cond_6
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 157
    .line 158
    new-instance v0, Landroidx/biometric/BiometricFragment$6;

    .line 159
    .line 160
    invoke-direct {v0, p0}, Landroidx/biometric/BiometricFragment$6;-><init>(Landroidx/biometric/BiometricFragment;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->d(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public final onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1d

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->c()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Landroidx/biometric/AuthenticatorUtils;->a(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, v0, Landroidx/biometric/BiometricViewModel;->q:Z

    .line 26
    .line 27
    new-instance v1, Landroidx/biometric/BiometricFragment$StopIgnoringCancelRunnable;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Landroidx/biometric/BiometricFragment$StopIgnoringCancelRunnable;-><init>(Landroidx/biometric/BiometricViewModel;)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v2, 0xfa

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1d

    .line 7
    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 11
    .line 12
    iget-boolean v0, v0, Landroidx/biometric/BiometricViewModel;->o:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->f(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroidx/biometric/BiometricViewModel;->m:Z

    .line 4
    .line 5
    if-nez v0, :cond_28

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "BiometricFragment"

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, "Not showing biometric prompt. Context is null."

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    iput-boolean v2, v0, Landroidx/biometric/BiometricViewModel;->m:Z

    .line 25
    .line 26
    iput-boolean v2, v0, Landroidx/biometric/BiometricViewModel;->n:Z

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->i()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v3, 0x0

    .line 33
    const/16 v4, 0x1e

    .line 34
    .line 35
    if-eqz v0, :cond_11

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v5, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    .line 46
    .line 47
    invoke-direct {v5, v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->b(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const/4 v7, 0x0

    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_2

    .line 62
    .line 63
    invoke-static {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->b(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    if-eqz v6, :cond_1

    .line 68
    .line 69
    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_1

    .line 74
    .line 75
    move v6, v7

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const/16 v6, 0xb

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/16 v6, 0xc

    .line 81
    .line 82
    :goto_0
    if-eqz v6, :cond_3

    .line 83
    .line 84
    invoke-static {v0, v6}, Landroidx/biometric/ErrorUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p0, v6, v0}, Landroidx/biometric/BiometricFragment;->k(ILjava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_b

    .line 92
    .line 93
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_28

    .line 98
    .line 99
    iget-object v6, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 100
    .line 101
    iput-boolean v2, v6, Landroidx/biometric/BiometricViewModel;->w:Z

    .line 102
    .line 103
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 104
    .line 105
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 106
    .line 107
    const/16 v9, 0x1c

    .line 108
    .line 109
    if-eq v8, v9, :cond_4

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    sget v8, Landroidx/biometric/R$array;->hide_fingerprint_instantly_prefixes:I

    .line 113
    .line 114
    if-nez v6, :cond_5

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    array-length v9, v8

    .line 126
    move v10, v7

    .line 127
    :goto_1
    if-ge v10, v9, :cond_7

    .line 128
    .line 129
    aget-object v11, v8, v10

    .line 130
    .line 131
    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    if-eqz v11, :cond_6

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_7
    :goto_2
    new-instance v6, Landroidx/biometric/BiometricFragment$7;

    .line 142
    .line 143
    invoke-direct {v6, p0}, Landroidx/biometric/BiometricFragment$7;-><init>(Landroidx/biometric/BiometricFragment;)V

    .line 144
    .line 145
    .line 146
    const-wide/16 v8, 0x1f4

    .line 147
    .line 148
    iget-object v10, p0, Landroidx/biometric/BiometricFragment;->c:Landroid/os/Handler;

    .line 149
    .line 150
    invoke-virtual {v10, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    .line 152
    .line 153
    new-instance v6, Landroidx/biometric/FingerprintDialogFragment;

    .line 154
    .line 155
    invoke-direct {v6}, Landroidx/biometric/FingerprintDialogFragment;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    const-string v9, "androidx.biometric.FingerprintDialogFragment"

    .line 163
    .line 164
    invoke-virtual {v6, v8, v9}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :goto_3
    iget-object v6, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 168
    .line 169
    iput v7, v6, Landroidx/biometric/BiometricViewModel;->l:I

    .line 170
    .line 171
    iget-object v6, v6, Landroidx/biometric/BiometricViewModel;->g:Landroidx/biometric/BiometricPrompt$CryptoObject;

    .line 172
    .line 173
    if-nez v6, :cond_8

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_8
    iget-object v7, v6, Landroidx/biometric/BiometricPrompt$CryptoObject;->b:Ljavax/crypto/Cipher;

    .line 177
    .line 178
    if-eqz v7, :cond_9

    .line 179
    .line 180
    new-instance v3, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    .line 181
    .line 182
    invoke-direct {v3, v7}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_9
    iget-object v7, v6, Landroidx/biometric/BiometricPrompt$CryptoObject;->a:Ljava/security/Signature;

    .line 187
    .line 188
    if-eqz v7, :cond_a

    .line 189
    .line 190
    new-instance v3, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    .line 191
    .line 192
    invoke-direct {v3, v7}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljava/security/Signature;)V

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_a
    iget-object v7, v6, Landroidx/biometric/BiometricPrompt$CryptoObject;->c:Ljavax/crypto/Mac;

    .line 197
    .line 198
    if-eqz v7, :cond_b

    .line 199
    .line 200
    new-instance v3, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    .line 201
    .line 202
    invoke-direct {v3, v7}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    .line 203
    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_b
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 207
    .line 208
    if-lt v7, v4, :cond_c

    .line 209
    .line 210
    iget-object v4, v6, Landroidx/biometric/BiometricPrompt$CryptoObject;->d:Landroid/security/identity/IdentityCredential;

    .line 211
    .line 212
    if-eqz v4, :cond_c

    .line 213
    .line 214
    const-string v4, "CryptoObjectUtils"

    .line 215
    .line 216
    const-string v6, "Identity credential is not supported by FingerprintManager."

    .line 217
    .line 218
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    :cond_c
    :goto_4
    iget-object v4, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 222
    .line 223
    iget-object v6, v4, Landroidx/biometric/BiometricViewModel;->i:Landroidx/biometric/CancellationSignalProvider;

    .line 224
    .line 225
    if-nez v6, :cond_d

    .line 226
    .line 227
    new-instance v6, Landroidx/biometric/CancellationSignalProvider;

    .line 228
    .line 229
    invoke-direct {v6}, Landroidx/biometric/CancellationSignalProvider;-><init>()V

    .line 230
    .line 231
    .line 232
    iput-object v6, v4, Landroidx/biometric/BiometricViewModel;->i:Landroidx/biometric/CancellationSignalProvider;

    .line 233
    .line 234
    :cond_d
    iget-object v4, v4, Landroidx/biometric/BiometricViewModel;->i:Landroidx/biometric/CancellationSignalProvider;

    .line 235
    .line 236
    iget-object v6, v4, Landroidx/biometric/CancellationSignalProvider;->b:Landroidx/core/os/CancellationSignal;

    .line 237
    .line 238
    if-nez v6, :cond_e

    .line 239
    .line 240
    new-instance v6, Landroidx/core/os/CancellationSignal;

    .line 241
    .line 242
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 243
    .line 244
    .line 245
    iput-object v6, v4, Landroidx/biometric/CancellationSignalProvider;->b:Landroidx/core/os/CancellationSignal;

    .line 246
    .line 247
    :cond_e
    iget-object v4, v4, Landroidx/biometric/CancellationSignalProvider;->b:Landroidx/core/os/CancellationSignal;

    .line 248
    .line 249
    iget-object v6, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 250
    .line 251
    iget-object v7, v6, Landroidx/biometric/BiometricViewModel;->h:Landroidx/biometric/AuthenticationCallbackProvider;

    .line 252
    .line 253
    if-nez v7, :cond_f

    .line 254
    .line 255
    new-instance v7, Landroidx/biometric/AuthenticationCallbackProvider;

    .line 256
    .line 257
    new-instance v8, Landroidx/biometric/BiometricViewModel$CallbackListener;

    .line 258
    .line 259
    invoke-direct {v8, v6}, Landroidx/biometric/BiometricViewModel$CallbackListener;-><init>(Landroidx/biometric/BiometricViewModel;)V

    .line 260
    .line 261
    .line 262
    invoke-direct {v7, v8}, Landroidx/biometric/AuthenticationCallbackProvider;-><init>(Landroidx/biometric/BiometricViewModel$CallbackListener;)V

    .line 263
    .line 264
    .line 265
    iput-object v7, v6, Landroidx/biometric/BiometricViewModel;->h:Landroidx/biometric/AuthenticationCallbackProvider;

    .line 266
    .line 267
    :cond_f
    iget-object v6, v6, Landroidx/biometric/BiometricViewModel;->h:Landroidx/biometric/AuthenticationCallbackProvider;

    .line 268
    .line 269
    iget-object v7, v6, Landroidx/biometric/AuthenticationCallbackProvider;->b:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    .line 270
    .line 271
    if-nez v7, :cond_10

    .line 272
    .line 273
    new-instance v7, Landroidx/biometric/AuthenticationCallbackProvider$1;

    .line 274
    .line 275
    invoke-direct {v7, v6}, Landroidx/biometric/AuthenticationCallbackProvider$1;-><init>(Landroidx/biometric/AuthenticationCallbackProvider;)V

    .line 276
    .line 277
    .line 278
    iput-object v7, v6, Landroidx/biometric/AuthenticationCallbackProvider;->b:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    .line 279
    .line 280
    :cond_10
    iget-object v6, v6, Landroidx/biometric/AuthenticationCallbackProvider;->b:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    .line 281
    .line 282
    :try_start_0
    invoke-virtual {v5, v3, v4, v6}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->a(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;Landroidx/core/os/CancellationSignal;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .line 284
    .line 285
    goto/16 :goto_b

    .line 286
    .line 287
    :catch_0
    move-exception v3

    .line 288
    const-string v4, "Got NPE while authenticating with fingerprint."

    .line 289
    .line 290
    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    .line 292
    .line 293
    invoke-static {v0, v2}, Landroidx/biometric/ErrorUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {p0, v2, v0}, Landroidx/biometric/BiometricFragment;->k(ILjava/lang/CharSequence;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_b

    .line 301
    .line 302
    :cond_11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-static {v0}, Landroidx/biometric/BiometricFragment$Api28Impl;->d(Landroid/content/Context;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    iget-object v5, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 315
    .line 316
    iget-object v6, v5, Landroidx/biometric/BiometricViewModel;->f:Landroidx/biometric/BiometricPrompt$PromptInfo;

    .line 317
    .line 318
    if-eqz v6, :cond_12

    .line 319
    .line 320
    iget-object v6, v6, Landroidx/biometric/BiometricPrompt$PromptInfo;->a:Ljava/lang/CharSequence;

    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_12
    move-object v6, v3

    .line 324
    :goto_5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    iget-object v5, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 328
    .line 329
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    if-eqz v6, :cond_13

    .line 333
    .line 334
    invoke-static {v0, v6}, Landroidx/biometric/BiometricFragment$Api28Impl;->f(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    .line 335
    .line 336
    .line 337
    :cond_13
    iget-object v5, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 338
    .line 339
    iget-object v6, v5, Landroidx/biometric/BiometricViewModel;->k:Ljava/lang/String;

    .line 340
    .line 341
    const-string v7, ""

    .line 342
    .line 343
    if-eqz v6, :cond_14

    .line 344
    .line 345
    move-object v3, v6

    .line 346
    goto :goto_6

    .line 347
    :cond_14
    iget-object v5, v5, Landroidx/biometric/BiometricViewModel;->f:Landroidx/biometric/BiometricPrompt$PromptInfo;

    .line 348
    .line 349
    if-eqz v5, :cond_16

    .line 350
    .line 351
    iget-object v3, v5, Landroidx/biometric/BiometricPrompt$PromptInfo;->b:Ljava/lang/CharSequence;

    .line 352
    .line 353
    if-eqz v3, :cond_15

    .line 354
    .line 355
    goto :goto_6

    .line 356
    :cond_15
    move-object v3, v7

    .line 357
    :cond_16
    :goto_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    if-nez v5, :cond_19

    .line 362
    .line 363
    iget-object v5, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 364
    .line 365
    iget-object v5, v5, Landroidx/biometric/BiometricViewModel;->d:Ljava/util/concurrent/Executor;

    .line 366
    .line 367
    if-eqz v5, :cond_17

    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_17
    new-instance v5, Landroidx/biometric/BiometricViewModel$DefaultExecutor;

    .line 371
    .line 372
    invoke-direct {v5}, Landroidx/biometric/BiometricViewModel$DefaultExecutor;-><init>()V

    .line 373
    .line 374
    .line 375
    :goto_7
    iget-object v6, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 376
    .line 377
    iget-object v8, v6, Landroidx/biometric/BiometricViewModel;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 378
    .line 379
    if-nez v8, :cond_18

    .line 380
    .line 381
    new-instance v8, Landroidx/biometric/BiometricViewModel$NegativeButtonListener;

    .line 382
    .line 383
    invoke-direct {v8, v6}, Landroidx/biometric/BiometricViewModel$NegativeButtonListener;-><init>(Landroidx/biometric/BiometricViewModel;)V

    .line 384
    .line 385
    .line 386
    iput-object v8, v6, Landroidx/biometric/BiometricViewModel;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 387
    .line 388
    :cond_18
    iget-object v6, v6, Landroidx/biometric/BiometricViewModel;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 389
    .line 390
    invoke-static {v0, v3, v5, v6}, Landroidx/biometric/BiometricFragment$Api28Impl;->e(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V

    .line 391
    .line 392
    .line 393
    :cond_19
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 394
    .line 395
    const/16 v5, 0x1d

    .line 396
    .line 397
    if-lt v3, v5, :cond_1a

    .line 398
    .line 399
    iget-object v6, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 400
    .line 401
    iget-object v6, v6, Landroidx/biometric/BiometricViewModel;->f:Landroidx/biometric/BiometricPrompt$PromptInfo;

    .line 402
    .line 403
    invoke-static {v0, v2}, Landroidx/biometric/BiometricFragment$Api29Impl;->a(Landroid/hardware/biometrics/BiometricPrompt$Builder;Z)V

    .line 404
    .line 405
    .line 406
    :cond_1a
    iget-object v6, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 407
    .line 408
    invoke-virtual {v6}, Landroidx/biometric/BiometricViewModel;->c()I

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    if-lt v3, v4, :cond_1b

    .line 413
    .line 414
    invoke-static {v0, v6}, Landroidx/biometric/BiometricFragment$Api30Impl;->a(Landroid/hardware/biometrics/BiometricPrompt$Builder;I)V

    .line 415
    .line 416
    .line 417
    goto :goto_8

    .line 418
    :cond_1b
    if-lt v3, v5, :cond_1c

    .line 419
    .line 420
    invoke-static {v6}, Landroidx/biometric/AuthenticatorUtils;->a(I)Z

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    invoke-static {v0, v3}, Landroidx/biometric/BiometricFragment$Api29Impl;->b(Landroid/hardware/biometrics/BiometricPrompt$Builder;Z)V

    .line 425
    .line 426
    .line 427
    :cond_1c
    :goto_8
    invoke-static {v0}, Landroidx/biometric/BiometricFragment$Api28Impl;->c(Landroid/hardware/biometrics/BiometricPrompt$Builder;)Landroid/hardware/biometrics/BiometricPrompt;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    iget-object v4, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 436
    .line 437
    iget-object v4, v4, Landroidx/biometric/BiometricViewModel;->g:Landroidx/biometric/BiometricPrompt$CryptoObject;

    .line 438
    .line 439
    const/4 v5, 0x0

    .line 440
    if-nez v4, :cond_1d

    .line 441
    .line 442
    goto :goto_9

    .line 443
    :cond_1d
    iget-object v6, v4, Landroidx/biometric/BiometricPrompt$CryptoObject;->b:Ljavax/crypto/Cipher;

    .line 444
    .line 445
    if-eqz v6, :cond_1e

    .line 446
    .line 447
    invoke-static {v6}, Landroidx/biometric/CryptoObjectUtils$Api28Impl;->b(Ljavax/crypto/Cipher;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    goto :goto_9

    .line 452
    :cond_1e
    iget-object v6, v4, Landroidx/biometric/BiometricPrompt$CryptoObject;->a:Ljava/security/Signature;

    .line 453
    .line 454
    if-eqz v6, :cond_1f

    .line 455
    .line 456
    invoke-static {v6}, Landroidx/biometric/CryptoObjectUtils$Api28Impl;->a(Ljava/security/Signature;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 457
    .line 458
    .line 459
    move-result-object v5

    .line 460
    goto :goto_9

    .line 461
    :cond_1f
    iget-object v6, v4, Landroidx/biometric/BiometricPrompt$CryptoObject;->c:Ljavax/crypto/Mac;

    .line 462
    .line 463
    if-eqz v6, :cond_20

    .line 464
    .line 465
    invoke-static {v6}, Landroidx/biometric/CryptoObjectUtils$Api28Impl;->c(Ljavax/crypto/Mac;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    goto :goto_9

    .line 470
    :cond_20
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 471
    .line 472
    const/16 v8, 0x1e

    .line 473
    .line 474
    if-lt v6, v8, :cond_21

    .line 475
    .line 476
    iget-object v4, v4, Landroidx/biometric/BiometricPrompt$CryptoObject;->d:Landroid/security/identity/IdentityCredential;

    .line 477
    .line 478
    if-eqz v4, :cond_21

    .line 479
    .line 480
    invoke-static {v4}, Landroidx/biometric/CryptoObjectUtils$Api30Impl;->a(Landroid/security/identity/IdentityCredential;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 481
    .line 482
    .line 483
    move-result-object v5

    .line 484
    :cond_21
    :goto_9
    iget-object v4, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 485
    .line 486
    iget-object v6, v4, Landroidx/biometric/BiometricViewModel;->i:Landroidx/biometric/CancellationSignalProvider;

    .line 487
    .line 488
    if-nez v6, :cond_22

    .line 489
    .line 490
    new-instance v6, Landroidx/biometric/CancellationSignalProvider;

    .line 491
    .line 492
    invoke-direct {v6}, Landroidx/biometric/CancellationSignalProvider;-><init>()V

    .line 493
    .line 494
    .line 495
    iput-object v6, v4, Landroidx/biometric/BiometricViewModel;->i:Landroidx/biometric/CancellationSignalProvider;

    .line 496
    .line 497
    :cond_22
    iget-object v4, v4, Landroidx/biometric/BiometricViewModel;->i:Landroidx/biometric/CancellationSignalProvider;

    .line 498
    .line 499
    iget-object v6, v4, Landroidx/biometric/CancellationSignalProvider;->a:Landroid/os/CancellationSignal;

    .line 500
    .line 501
    if-nez v6, :cond_23

    .line 502
    .line 503
    invoke-static {}, Landroidx/biometric/CancellationSignalProvider$Api16Impl;->b()Landroid/os/CancellationSignal;

    .line 504
    .line 505
    .line 506
    move-result-object v6

    .line 507
    iput-object v6, v4, Landroidx/biometric/CancellationSignalProvider;->a:Landroid/os/CancellationSignal;

    .line 508
    .line 509
    :cond_23
    iget-object v4, v4, Landroidx/biometric/CancellationSignalProvider;->a:Landroid/os/CancellationSignal;

    .line 510
    .line 511
    new-instance v6, Landroidx/biometric/BiometricFragment$PromptExecutor;

    .line 512
    .line 513
    invoke-direct {v6}, Landroidx/biometric/BiometricFragment$PromptExecutor;-><init>()V

    .line 514
    .line 515
    .line 516
    iget-object v8, p0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 517
    .line 518
    iget-object v9, v8, Landroidx/biometric/BiometricViewModel;->h:Landroidx/biometric/AuthenticationCallbackProvider;

    .line 519
    .line 520
    if-nez v9, :cond_24

    .line 521
    .line 522
    new-instance v9, Landroidx/biometric/AuthenticationCallbackProvider;

    .line 523
    .line 524
    new-instance v10, Landroidx/biometric/BiometricViewModel$CallbackListener;

    .line 525
    .line 526
    invoke-direct {v10, v8}, Landroidx/biometric/BiometricViewModel$CallbackListener;-><init>(Landroidx/biometric/BiometricViewModel;)V

    .line 527
    .line 528
    .line 529
    invoke-direct {v9, v10}, Landroidx/biometric/AuthenticationCallbackProvider;-><init>(Landroidx/biometric/BiometricViewModel$CallbackListener;)V

    .line 530
    .line 531
    .line 532
    iput-object v9, v8, Landroidx/biometric/BiometricViewModel;->h:Landroidx/biometric/AuthenticationCallbackProvider;

    .line 533
    .line 534
    :cond_24
    iget-object v8, v8, Landroidx/biometric/BiometricViewModel;->h:Landroidx/biometric/AuthenticationCallbackProvider;

    .line 535
    .line 536
    iget-object v9, v8, Landroidx/biometric/AuthenticationCallbackProvider;->a:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 537
    .line 538
    if-nez v9, :cond_25

    .line 539
    .line 540
    iget-object v9, v8, Landroidx/biometric/AuthenticationCallbackProvider;->c:Landroidx/biometric/BiometricViewModel$CallbackListener;

    .line 541
    .line 542
    invoke-static {v9}, Landroidx/biometric/AuthenticationCallbackProvider$Api28Impl;->a(Landroidx/biometric/AuthenticationCallbackProvider$Listener;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 543
    .line 544
    .line 545
    move-result-object v9

    .line 546
    iput-object v9, v8, Landroidx/biometric/AuthenticationCallbackProvider;->a:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 547
    .line 548
    :cond_25
    iget-object v8, v8, Landroidx/biometric/AuthenticationCallbackProvider;->a:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 549
    .line 550
    if-nez v5, :cond_26

    .line 551
    .line 552
    :try_start_1
    invoke-static {v0, v4, v6, v8}, Landroidx/biometric/BiometricFragment$Api28Impl;->b(Landroid/hardware/biometrics/BiometricPrompt;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    .line 553
    .line 554
    .line 555
    goto :goto_b

    .line 556
    :catch_1
    move-exception v0

    .line 557
    goto :goto_a

    .line 558
    :cond_26
    invoke-static {v0, v5, v4, v6, v8}, Landroidx/biometric/BiometricFragment$Api28Impl;->a(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 559
    .line 560
    .line 561
    goto :goto_b

    .line 562
    :goto_a
    const-string v4, "Got NPE while authenticating with biometric prompt."

    .line 563
    .line 564
    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    .line 566
    .line 567
    if-eqz v3, :cond_27

    .line 568
    .line 569
    sget v0, Landroidx/biometric/R$string;->default_error_msg:I

    .line 570
    .line 571
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v7

    .line 575
    :cond_27
    invoke-virtual {p0, v2, v7}, Landroidx/biometric/BiometricFragment;->k(ILjava/lang/CharSequence;)V

    .line 576
    .line 577
    .line 578
    :cond_28
    :goto_b
    return-void
.end method
