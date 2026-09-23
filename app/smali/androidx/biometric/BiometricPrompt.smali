.class public Landroidx/biometric/BiometricPrompt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricPrompt$ResetCallbackObserver;,
        Landroidx/biometric/BiometricPrompt$PromptInfo;,
        Landroidx/biometric/BiometricPrompt$AuthenticationCallback;,
        Landroidx/biometric/BiometricPrompt$AuthenticationResult;,
        Landroidx/biometric/BiometricPrompt$CryptoObject;
    }
.end annotation


# instance fields
.field public a:Landroidx/fragment/app/FragmentManager;


# virtual methods
.method public final a(Landroidx/biometric/BiometricPrompt$PromptInfo;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->a:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    const-string v1, "BiometricPromptCompat"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "Unable to start authentication. Client fragment manager was null."

    .line 10
    .line 11
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->N()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string p1, "Unable to start authentication. Called after onSaveInstanceState()."

    .line 22
    .line 23
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->a:Landroidx/fragment/app/FragmentManager;

    .line 28
    .line 29
    const-string v1, "androidx.biometric.BiometricFragment"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->C(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroidx/biometric/BiometricFragment;

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    new-instance v2, Landroidx/biometric/BiometricFragment;

    .line 41
    .line 42
    invoke-direct {v2}, Landroidx/biometric/BiometricFragment;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-virtual {v4, v5, v2, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->d()I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->y(Z)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->D()V

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    const-string p1, "BiometricFragment"

    .line 69
    .line 70
    const-string v0, "Not launching prompt. Client activity was null."

    .line 71
    .line 72
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    iget-object v1, v2, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 77
    .line 78
    iput-object p1, v1, Landroidx/biometric/BiometricViewModel;->f:Landroidx/biometric/BiometricPrompt$PromptInfo;

    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    iput-object p1, v1, Landroidx/biometric/BiometricViewModel;->g:Landroidx/biometric/BiometricPrompt$CryptoObject;

    .line 82
    .line 83
    invoke-virtual {v2}, Landroidx/biometric/BiometricFragment;->h()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    iget-object p1, v2, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 90
    .line 91
    sget v1, Landroidx/biometric/R$string;->confirm_device_credential_password:I

    .line 92
    .line 93
    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iput-object v1, p1, Landroidx/biometric/BiometricViewModel;->k:Ljava/lang/String;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    iget-object v1, v2, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 101
    .line 102
    iput-object p1, v1, Landroidx/biometric/BiometricViewModel;->k:Ljava/lang/String;

    .line 103
    .line 104
    :goto_0
    invoke-virtual {v2}, Landroidx/biometric/BiometricFragment;->h()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_5

    .line 109
    .line 110
    invoke-static {v0}, Landroidx/biometric/BiometricManager;->c(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroidx/biometric/BiometricManager;->a()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_5

    .line 119
    .line 120
    iget-object p1, v2, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 121
    .line 122
    iput-boolean v3, p1, Landroidx/biometric/BiometricViewModel;->n:Z

    .line 123
    .line 124
    invoke-virtual {v2}, Landroidx/biometric/BiometricFragment;->j()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_5
    iget-object p1, v2, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 129
    .line 130
    iget-boolean p1, p1, Landroidx/biometric/BiometricViewModel;->p:Z

    .line 131
    .line 132
    if-eqz p1, :cond_6

    .line 133
    .line 134
    iget-object p1, v2, Landroidx/biometric/BiometricFragment;->c:Landroid/os/Handler;

    .line 135
    .line 136
    new-instance v0, Landroidx/biometric/BiometricFragment$ShowPromptForAuthenticationRunnable;

    .line 137
    .line 138
    invoke-direct {v0, v2}, Landroidx/biometric/BiometricFragment$ShowPromptForAuthenticationRunnable;-><init>(Landroidx/biometric/BiometricFragment;)V

    .line 139
    .line 140
    .line 141
    const-wide/16 v1, 0x258

    .line 142
    .line 143
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_6
    invoke-virtual {v2}, Landroidx/biometric/BiometricFragment;->p()V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 152
    .line 153
    const-string v0, "PromptInfo cannot be null."

    .line 154
    .line 155
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1
.end method
