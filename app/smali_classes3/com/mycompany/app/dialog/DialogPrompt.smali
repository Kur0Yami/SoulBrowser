.class public Lcom/mycompany/app/dialog/DialogPrompt;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/view/MyDialogLinear;

.field public c0:Landroidx/appcompat/widget/AppCompatTextView;

.field public d0:Lcom/mycompany/app/view/MyEditText;

.field public e0:Lcom/mycompany/app/view/MyLineText;

.field public f0:Ljava/lang/String;

.field public g0:Ljava/lang/String;

.field public h0:Landroid/webkit/JsPromptResult;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPrompt;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogPrompt;->f0:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogPrompt;->g0:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogPrompt;->h0:Landroid/webkit/JsPromptResult;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogPrompt$1;

    .line 22
    .line 23
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogPrompt$1;-><init>(Lcom/mycompany/app/dialog/DialogPrompt;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogPrompt;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPrompt;->a0:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static {v0, v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, -0x1

    .line 22
    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 23
    .line 24
    .line 25
    const/high16 v6, 0x3f800000    # 1.0f

    .line 26
    .line 27
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 28
    .line 29
    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    new-instance v5, Landroid/widget/LinearLayout;

    .line 33
    .line 34
    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    const/high16 v8, 0x41400000    # 12.0f

    .line 38
    .line 39
    invoke-static {v0, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    float-to-int v8, v8

    .line 44
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 45
    .line 46
    invoke-virtual {v5, v9, v9, v9, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50
    .line 51
    .line 52
    const/4 v8, -0x2

    .line 53
    invoke-virtual {v3, v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 54
    .line 55
    .line 56
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    .line 58
    invoke-direct {v3, v0, v4}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    .line 60
    .line 61
    const/16 v9, 0x11

    .line 62
    .line 63
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 64
    .line 65
    .line 66
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 67
    .line 68
    int-to-float v10, v10

    .line 69
    invoke-virtual {v3, v10, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 70
    .line 71
    .line 72
    const/high16 v6, 0x41800000    # 16.0f

    .line 73
    .line 74
    invoke-virtual {v3, v1, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v3, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 78
    .line 79
    .line 80
    new-instance v8, Lcom/mycompany/app/view/MyEditText;

    .line 81
    .line 82
    invoke-direct {v8, v0}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    const/16 v10, 0x10

    .line 86
    .line 87
    const/4 v11, 0x3

    .line 88
    invoke-static {v8, v10, v1, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 92
    .line 93
    .line 94
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 95
    .line 96
    const/16 v11, 0x1d

    .line 97
    .line 98
    if-lt v10, v11, :cond_1

    .line 99
    .line 100
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 101
    .line 102
    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 103
    .line 104
    .line 105
    :cond_1
    const/high16 v10, 0x10000000

    .line 106
    .line 107
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    .line 112
    .line 113
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 114
    .line 115
    invoke-virtual {v5, v8, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 116
    .line 117
    .line 118
    new-instance v4, Lcom/mycompany/app/view/MyLineText;

    .line 119
    .line 120
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v1, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 127
    .line 128
    .line 129
    sget v0, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 130
    .line 131
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 132
    .line 133
    .line 134
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 135
    .line 136
    invoke-virtual {v4, v0}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 140
    .line 141
    .line 142
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 143
    .line 144
    invoke-virtual {v2, v4, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 145
    .line 146
    .line 147
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPrompt;->b0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 148
    .line 149
    iput-object v3, p0, Lcom/mycompany/app/dialog/DialogPrompt;->c0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 150
    .line 151
    iput-object v8, p0, Lcom/mycompany/app/dialog/DialogPrompt;->d0:Lcom/mycompany/app/view/MyEditText;

    .line 152
    .line 153
    iput-object v4, p0, Lcom/mycompany/app/dialog/DialogPrompt;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 154
    .line 155
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 156
    .line 157
    if-nez v0, :cond_2

    .line 158
    .line 159
    :goto_0
    return-void

    .line 160
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogPrompt$2;

    .line 161
    .line 162
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogPrompt$2;-><init>(Lcom/mycompany/app/dialog/DialogPrompt;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogPrompt;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPrompt;->h0:Landroid/webkit/JsPromptResult;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPrompt;->h0:Landroid/webkit/JsPromptResult;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPrompt;->d0:Lcom/mycompany/app/view/MyEditText;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->T6(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    const-string v1, ""

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    :goto_1
    return-void

    .line 40
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogPrompt$6;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogPrompt$6;-><init>(Lcom/mycompany/app/dialog/DialogPrompt;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPrompt;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPrompt;->h0:Landroid/webkit/JsPromptResult;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPrompt;->h0:Landroid/webkit/JsPromptResult;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPrompt;->b0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPrompt;->b0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPrompt;->d0:Lcom/mycompany/app/view/MyEditText;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPrompt;->d0:Lcom/mycompany/app/view/MyEditText;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPrompt;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPrompt;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 45
    .line 46
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPrompt;->a0:Landroid/content/Context;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPrompt;->c0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPrompt;->f0:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPrompt;->g0:Ljava/lang/String;

    .line 53
    .line 54
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 55
    .line 56
    .line 57
    return-void
.end method
