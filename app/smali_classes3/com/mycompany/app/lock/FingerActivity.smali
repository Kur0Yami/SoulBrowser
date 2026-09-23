.class public Lcom/mycompany/app/lock/FingerActivity;
.super Lcom/mycompany/app/main/MainActivity;
.source "SourceFile"


# static fields
.field public static final synthetic w1:I


# instance fields
.field public f1:Landroid/content/Context;

.field public g1:Lcom/mycompany/app/view/MyMainRelative;

.field public h1:Landroid/widget/ImageView;

.field public i1:Lcom/mycompany/app/view/MyButtonText;

.field public j1:Lcom/mycompany/app/view/MyButtonText;

.field public k1:I

.field public l1:I

.field public m1:Ljava/lang/String;

.field public n1:Z

.field public o1:Lcom/mycompany/app/dialog/DialogLockReset;

.field public p1:Z

.field public q1:Z

.field public r1:Z

.field public s1:Z

.field public t1:Ljava/util/concurrent/Executor;

.field public u1:Landroidx/biometric/BiometricPrompt;

.field public v1:Landroidx/biometric/BiometricPrompt$PromptInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static u0(Lcom/mycompany/app/lock/FingerActivity;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/lock/FingerActivity;->r1:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/lock/FingerActivity;->s1:Z

    .line 5
    .line 6
    iget v0, p0, Lcom/mycompany/app/lock/FingerActivity;->l1:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/lock/FingerActivity;->z0()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v1, 0x3

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mycompany/app/lock/FingerActivity;->z0()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    new-instance v0, Lcom/mycompany/app/lock/FingerActivity$9;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/mycompany/app/lock/FingerActivity$9;-><init>(Lcom/mycompany/app/lock/FingerActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final l0()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/lock/FingerActivity;->l1:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/lock/FingerActivity;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->f0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/mycompany/app/lock/FingerActivity;->f1:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/mycompany/app/lock/FingerActivity;->v0(Landroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/lock/FingerActivity;->m1:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/mycompany/app/lock/FingerActivity;->v0(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onPause()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/lock/FingerActivity;->x0()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/lock/FingerActivity;->i1:Lcom/mycompany/app/view/MyButtonText;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/lock/FingerActivity;->i1:Lcom/mycompany/app/view/MyButtonText;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/lock/FingerActivity;->j1:Lcom/mycompany/app/view/MyButtonText;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/lock/FingerActivity;->j1:Lcom/mycompany/app/view/MyButtonText;

    .line 25
    .line 26
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/lock/FingerActivity;->g1:Lcom/mycompany/app/view/MyMainRelative;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/lock/FingerActivity;->h1:Landroid/widget/ImageView;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/lock/FingerActivity;->u1:Landroidx/biometric/BiometricPrompt;

    .line 31
    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->a:Landroidx/fragment/app/FragmentManager;

    .line 35
    .line 36
    const-string v2, "BiometricPromptCompat"

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    const-string v0, "Unable to start authentication. Client fragment manager was null."

    .line 41
    .line 42
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string v3, "androidx.biometric.BiometricFragment"

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->C(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroidx/biometric/BiometricFragment;

    .line 53
    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    const-string v0, "Unable to cancel authentication. BiometricFragment not found."

    .line 57
    .line 58
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const/4 v2, 0x3

    .line 63
    invoke-virtual {v0, v2}, Landroidx/biometric/BiometricFragment;->f(I)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iput-object v1, p0, Lcom/mycompany/app/lock/FingerActivity;->u1:Landroidx/biometric/BiometricPrompt;

    .line 67
    .line 68
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/lock/FingerActivity;->t1:Ljava/util/concurrent/Executor;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/mycompany/app/lock/FingerActivity;->v1:Landroidx/biometric/BiometricPrompt$PromptInfo;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v1, Lcom/mycompany/app/lock/FingerActivity$2;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/mycompany/app/lock/FingerActivity$2;-><init>(Lcom/mycompany/app/lock/FingerActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/mycompany/app/lock/FingerActivity;->q1:Z

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/mycompany/app/lock/FingerActivity;->r1:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mycompany/app/lock/FingerActivity;->y0()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/mycompany/app/lock/FingerActivity;->r1:Z

    .line 17
    .line 18
    return-void
.end method

.method public final v0(Landroid/content/Intent;)V
    .locals 14

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_5

    .line 4
    .line 5
    :cond_0
    const-string v0, "EXTRA_PASS"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/mycompany/app/lock/FingerActivity;->k1:I

    .line 13
    .line 14
    const-string v0, "EXTRA_TYPE"

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/mycompany/app/lock/FingerActivity;->l1:I

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "EXTRA_PATH"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/mycompany/app/lock/FingerActivity;->m1:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iput-object v2, p0, Lcom/mycompany/app/lock/FingerActivity;->m1:Ljava/lang/String;

    .line 35
    .line 36
    :goto_0
    iget v0, p0, Lcom/mycompany/app/lock/FingerActivity;->l1:I

    .line 37
    .line 38
    const/4 v3, 0x4

    .line 39
    if-ne v0, v3, :cond_2

    .line 40
    .line 41
    const-string v0, "EXTRA_VOICE"

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput-boolean p1, p0, Lcom/mycompany/app/lock/FingerActivity;->n1:Z

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iput-boolean v1, p0, Lcom/mycompany/app/lock/FingerActivity;->n1:Z

    .line 51
    .line 52
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/lock/FingerActivity;->f1:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->e(Landroid/content/Context;Z)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput-boolean p1, p0, Lcom/mycompany/app/lock/FingerActivity;->p1:Z

    .line 59
    .line 60
    iget-object p1, p0, Lcom/mycompany/app/lock/FingerActivity;->i1:Lcom/mycompany/app/view/MyButtonText;

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 65
    .line 66
    .line 67
    iput-object v2, p0, Lcom/mycompany/app/lock/FingerActivity;->i1:Lcom/mycompany/app/view/MyButtonText;

    .line 68
    .line 69
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/lock/FingerActivity;->j1:Lcom/mycompany/app/view/MyButtonText;

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 74
    .line 75
    .line 76
    iput-object v2, p0, Lcom/mycompany/app/lock/FingerActivity;->j1:Lcom/mycompany/app/view/MyButtonText;

    .line 77
    .line 78
    :cond_4
    iput-object v2, p0, Lcom/mycompany/app/lock/FingerActivity;->g1:Lcom/mycompany/app/view/MyMainRelative;

    .line 79
    .line 80
    iput-object v2, p0, Lcom/mycompany/app/lock/FingerActivity;->h1:Landroid/widget/ImageView;

    .line 81
    .line 82
    iget-boolean p1, p0, Lcom/mycompany/app/lock/FingerActivity;->p1:Z

    .line 83
    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    iget p1, p0, Lcom/mycompany/app/lock/FingerActivity;->l1:I

    .line 87
    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    new-instance p1, Lcom/mycompany/app/view/MyMainRelative;

    .line 91
    .line 92
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lcom/mycompany/app/lock/FingerActivity;->g1:Lcom/mycompany/app/view/MyMainRelative;

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/mycompany/app/lock/FingerActivity;->g1:Lcom/mycompany/app/view/MyMainRelative;

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->setMainInsetView(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/mycompany/app/lock/FingerActivity;->g1:Lcom/mycompany/app/view/MyMainRelative;

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/mycompany/app/lock/FingerActivity;->g1:Lcom/mycompany/app/view/MyMainRelative;

    .line 115
    .line 116
    new-instance v0, Lcom/mycompany/app/lock/FingerActivity$3;

    .line 117
    .line 118
    invoke-direct {v0, p0}, Lcom/mycompany/app/lock/FingerActivity$3;-><init>(Lcom/mycompany/app/lock/FingerActivity;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_4

    .line 125
    .line 126
    :cond_5
    new-instance p1, Lcom/mycompany/app/view/MyMainRelative;

    .line 127
    .line 128
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 132
    .line 133
    const/4 v3, -0x1

    .line 134
    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .line 139
    .line 140
    new-instance v0, Landroid/widget/LinearLayout;

    .line 141
    .line 142
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 143
    .line 144
    .line 145
    const/4 v4, 0x1

    .line 146
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v0, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 150
    .line 151
    .line 152
    new-instance v5, Landroid/view/View;

    .line 153
    .line 154
    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 155
    .line 156
    .line 157
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    .line 159
    invoke-direct {v6, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 160
    .line 161
    .line 162
    const/high16 v7, 0x3f800000    # 1.0f

    .line 163
    .line 164
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 165
    .line 166
    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    .line 168
    .line 169
    const/high16 v5, 0x42a80000    # 84.0f

    .line 170
    .line 171
    invoke-static {p0, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    float-to-int v5, v5

    .line 176
    new-instance v6, Landroid/widget/ImageView;

    .line 177
    .line 178
    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 179
    .line 180
    .line 181
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 182
    .line 183
    invoke-direct {v7, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 184
    .line 185
    .line 186
    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 187
    .line 188
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    new-instance v5, Landroid/view/View;

    .line 192
    .line 193
    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 194
    .line 195
    .line 196
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 197
    .line 198
    invoke-direct {v7, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 199
    .line 200
    .line 201
    const/high16 v1, 0x40000000    # 2.0f

    .line 202
    .line 203
    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 204
    .line 205
    invoke-virtual {v0, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .line 207
    .line 208
    iget-boolean v1, p0, Lcom/mycompany/app/lock/FingerActivity;->p1:Z

    .line 209
    .line 210
    if-nez v1, :cond_6

    .line 211
    .line 212
    const/high16 v1, 0x41c00000    # 24.0f

    .line 213
    .line 214
    invoke-static {p0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    float-to-int v1, v1

    .line 219
    new-instance v2, Lcom/mycompany/app/view/MyButtonText;

    .line 220
    .line 221
    invoke-direct {v2, p0}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 222
    .line 223
    .line 224
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 225
    .line 226
    sget v7, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 227
    .line 228
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 229
    .line 230
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 231
    .line 232
    invoke-virtual {v2, v5, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 233
    .line 234
    .line 235
    const/16 v5, 0x11

    .line 236
    .line 237
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 238
    .line 239
    .line 240
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 241
    .line 242
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 243
    .line 244
    .line 245
    const/high16 v7, 0x41800000    # 16.0f

    .line 246
    .line 247
    invoke-virtual {v2, v4, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 257
    .line 258
    .line 259
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 260
    .line 261
    const/4 v9, -0x2

    .line 262
    invoke-direct {v8, v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 263
    .line 264
    .line 265
    const/high16 v10, 0x42000000    # 32.0f

    .line 266
    .line 267
    invoke-static {p0, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 268
    .line 269
    .line 270
    move-result v10

    .line 271
    float-to-int v10, v10

    .line 272
    iput v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 273
    .line 274
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    .line 282
    .line 283
    new-instance v8, Lcom/mycompany/app/view/MyButtonText;

    .line 284
    .line 285
    invoke-direct {v8, p0}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 286
    .line 287
    .line 288
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 289
    .line 290
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 291
    .line 292
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 293
    .line 294
    sget v13, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 295
    .line 296
    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 300
    .line 301
    .line 302
    sget v5, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 303
    .line 304
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v8, v4, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v8, v4}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v8, v4}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 314
    .line 315
    .line 316
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 317
    .line 318
    invoke-virtual {v8, v4}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 319
    .line 320
    .line 321
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 322
    .line 323
    invoke-direct {v4, v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 324
    .line 325
    .line 326
    sget v3, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 327
    .line 328
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 329
    .line 330
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    .line 338
    .line 339
    goto :goto_2

    .line 340
    :cond_6
    move-object v8, v2

    .line 341
    :goto_2
    iput-object p1, p0, Lcom/mycompany/app/lock/FingerActivity;->g1:Lcom/mycompany/app/view/MyMainRelative;

    .line 342
    .line 343
    iput-object v6, p0, Lcom/mycompany/app/lock/FingerActivity;->h1:Landroid/widget/ImageView;

    .line 344
    .line 345
    iput-object v2, p0, Lcom/mycompany/app/lock/FingerActivity;->i1:Lcom/mycompany/app/view/MyButtonText;

    .line 346
    .line 347
    iput-object v8, p0, Lcom/mycompany/app/lock/FingerActivity;->j1:Lcom/mycompany/app/view/MyButtonText;

    .line 348
    .line 349
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 350
    .line 351
    .line 352
    iget-object p1, p0, Lcom/mycompany/app/lock/FingerActivity;->g1:Lcom/mycompany/app/view/MyMainRelative;

    .line 353
    .line 354
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->setMainInsetView(Landroid/view/View;)V

    .line 355
    .line 356
    .line 357
    iget-object p1, p0, Lcom/mycompany/app/lock/FingerActivity;->g1:Lcom/mycompany/app/view/MyMainRelative;

    .line 358
    .line 359
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 364
    .line 365
    if-eqz v1, :cond_7

    .line 366
    .line 367
    const v1, -0xdededf

    .line 368
    .line 369
    .line 370
    goto :goto_3

    .line 371
    :cond_7
    const v1, -0x70708

    .line 372
    .line 373
    .line 374
    :goto_3
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 375
    .line 376
    .line 377
    iget-object p1, p0, Lcom/mycompany/app/lock/FingerActivity;->g1:Lcom/mycompany/app/view/MyMainRelative;

    .line 378
    .line 379
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 380
    .line 381
    .line 382
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 383
    .line 384
    if-nez p1, :cond_8

    .line 385
    .line 386
    goto :goto_4

    .line 387
    :cond_8
    new-instance v0, Lcom/mycompany/app/lock/FingerActivity$4;

    .line 388
    .line 389
    invoke-direct {v0, p0}, Lcom/mycompany/app/lock/FingerActivity$4;-><init>(Lcom/mycompany/app/lock/FingerActivity;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 393
    .line 394
    .line 395
    :goto_4
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 396
    .line 397
    if-nez p1, :cond_9

    .line 398
    .line 399
    :goto_5
    return-void

    .line 400
    :cond_9
    new-instance v0, Lcom/mycompany/app/lock/FingerActivity$1;

    .line 401
    .line 402
    invoke-direct {v0, p0}, Lcom/mycompany/app/lock/FingerActivity$1;-><init>(Lcom/mycompany/app/lock/FingerActivity;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    .line 407
    .line 408
    return-void
.end method

.method public final w0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-class v2, Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "EXTRA_LOCK"

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string v1, "EXTRA_VOICE"

    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/mycompany/app/lock/FingerActivity;->n1:Z

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final x0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/FingerActivity;->o1:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogLockReset;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/lock/FingerActivity;->o1:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final y0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/lock/FingerActivity;->p1:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/lock/FingerActivity;->l1:I

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final z0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/FingerActivity;->o1:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/lock/FingerActivity;->x0()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/lock/FingerActivity;->r1:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/lock/FingerActivity;->s1:Z

    .line 13
    .line 14
    new-instance v0, Lcom/mycompany/app/dialog/DialogLockReset;

    .line 15
    .line 16
    iget v1, p0, Lcom/mycompany/app/lock/FingerActivity;->k1:I

    .line 17
    .line 18
    new-instance v2, Lcom/mycompany/app/lock/FingerActivity$10;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/mycompany/app/lock/FingerActivity$10;-><init>(Lcom/mycompany/app/lock/FingerActivity;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p0, v1, v2}, Lcom/mycompany/app/dialog/DialogLockReset;-><init>(Landroid/app/Activity;ILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/lock/FingerActivity;->o1:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 27
    .line 28
    new-instance v1, Lcom/mycompany/app/lock/FingerActivity$11;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/mycompany/app/lock/FingerActivity$11;-><init>(Lcom/mycompany/app/lock/FingerActivity;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
