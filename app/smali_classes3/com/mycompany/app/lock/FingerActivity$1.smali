.class Lcom/mycompany/app/lock/FingerActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/FingerActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/FingerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/FingerActivity$1;->c:Lcom/mycompany/app/lock/FingerActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/FingerActivity$1;->c:Lcom/mycompany/app/lock/FingerActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/lock/FingerActivity;->g1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/lock/FingerActivity;->u1:Landroidx/biometric/BiometricPrompt;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v0, Lcom/mycompany/app/lock/FingerActivity;->r1:Z

    .line 17
    .line 18
    iput-boolean v1, v0, Lcom/mycompany/app/lock/FingerActivity;->s1:Z

    .line 19
    .line 20
    iget v1, v0, Lcom/mycompany/app/lock/FingerActivity;->l1:I

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-ne v1, v2, :cond_2

    .line 24
    .line 25
    sget v1, Lnet/kaki87/soul2/testing/R$string;->secret_reset:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 v2, 0x3

    .line 29
    if-ne v1, v2, :cond_3

    .line 30
    .line 31
    sget v1, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    sget v1, Lnet/kaki87/soul2/testing/R$string;->normal_start:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    sget v1, Lnet/kaki87/soul2/testing/R$string;->secret_reset:I

    .line 42
    .line 43
    :goto_0
    :try_start_0
    invoke-static {v0}, Landroidx/core/content/ContextCompat;->d(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iput-object v2, v0, Lcom/mycompany/app/lock/FingerActivity;->t1:Ljava/util/concurrent/Executor;

    .line 48
    .line 49
    new-instance v3, Landroidx/biometric/BiometricPrompt;

    .line 50
    .line 51
    new-instance v4, Lcom/mycompany/app/lock/FingerActivity$8;

    .line 52
    .line 53
    invoke-direct {v4, v0}, Lcom/mycompany/app/lock/FingerActivity$8;-><init>(Lcom/mycompany/app/lock/FingerActivity;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    if-eqz v2, :cond_6

    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->T()Landroidx/fragment/app/FragmentManager;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    new-instance v6, Landroidx/lifecycle/ViewModelProvider;

    .line 66
    .line 67
    invoke-direct {v6, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 68
    .line 69
    .line 70
    const-class v7, Landroidx/biometric/BiometricViewModel;

    .line 71
    .line 72
    invoke-virtual {v6, v7}, Landroidx/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Landroidx/biometric/BiometricViewModel;

    .line 77
    .line 78
    iput-object v5, v3, Landroidx/biometric/BiometricPrompt;->a:Landroidx/fragment/app/FragmentManager;

    .line 79
    .line 80
    if-eqz v6, :cond_5

    .line 81
    .line 82
    iput-object v2, v6, Landroidx/biometric/BiometricViewModel;->d:Ljava/util/concurrent/Executor;

    .line 83
    .line 84
    iput-object v4, v6, Landroidx/biometric/BiometricViewModel;->e:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    .line 85
    .line 86
    :cond_5
    iput-object v3, v0, Lcom/mycompany/app/lock/FingerActivity;->u1:Landroidx/biometric/BiometricPrompt;

    .line 87
    .line 88
    new-instance v2, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    .line 89
    .line 90
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    iput-object v3, v2, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->a:Ljava/lang/String;

    .line 95
    .line 96
    iput-object v3, v2, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->b:Ljava/lang/String;

    .line 97
    .line 98
    sget v3, Lnet/kaki87/soul2/testing/R$string;->finger_print:I

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iput-object v3, v2, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->a:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iput-object v1, v2, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->b:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->a()Landroidx/biometric/BiometricPrompt$PromptInfo;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iput-object v1, v0, Lcom/mycompany/app/lock/FingerActivity;->v1:Landroidx/biometric/BiometricPrompt$PromptInfo;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/mycompany/app/lock/FingerActivity;->u1:Landroidx/biometric/BiometricPrompt;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt;->a(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 125
    .line 126
    const-string v1, "Executor must not be null."

    .line 127
    .line 128
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :catch_0
    :goto_1
    return-void
.end method
