.class Lcom/mycompany/app/dialog/DialogDownSize$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownSize;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownSize;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownSize$1;->c:Lcom/mycompany/app/dialog/DialogDownSize;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize$1;->c:Lcom/mycompany/app/dialog/DialogDownSize;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownSize;->a0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    const/4 v3, 0x1

    .line 12
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    invoke-direct {v5, v2, v6}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 23
    .line 24
    .line 25
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    invoke-virtual {v5, v7, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 29
    .line 30
    .line 31
    const/high16 v7, 0x41600000    # 14.0f

    .line 32
    .line 33
    invoke-virtual {v5, v3, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 34
    .line 35
    .line 36
    sget v9, Lnet/kaki87/soul2/testing/R$string;->estimated_size:I

    .line 37
    .line 38
    const/4 v10, -0x1

    .line 39
    const/4 v11, -0x2

    .line 40
    invoke-static {v5, v9, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 45
    .line 46
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 47
    .line 48
    invoke-virtual {v4, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    new-instance v9, Landroid/widget/FrameLayout;

    .line 52
    .line 53
    invoke-direct {v9, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 57
    .line 58
    invoke-virtual {v4, v9, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 59
    .line 60
    .line 61
    sget-boolean v12, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 62
    .line 63
    if-eqz v12, :cond_1

    .line 64
    .line 65
    const v12, -0x50506

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const v12, -0xc6b655

    .line 70
    .line 71
    .line 72
    :goto_0
    const/high16 v13, 0x40000000    # 2.0f

    .line 73
    .line 74
    invoke-static {v2, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 75
    .line 76
    .line 77
    move-result v13

    .line 78
    float-to-int v13, v13

    .line 79
    new-instance v14, Lcom/mycompany/app/view/MyCoverView;

    .line 80
    .line 81
    sget v15, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 82
    .line 83
    invoke-direct {v14, v2, v12, v13, v15}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 84
    .line 85
    .line 86
    const/16 v12, 0x8

    .line 87
    .line 88
    invoke-virtual {v14, v12}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9, v14, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 92
    .line 93
    .line 94
    const/16 v13, 0x11

    .line 95
    .line 96
    const/high16 v15, 0x41800000    # 16.0f

    .line 97
    .line 98
    invoke-static {v2, v6, v13, v3, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9, v11, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 106
    .line 107
    .line 108
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    invoke-direct {v9, v2, v6}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 114
    .line 115
    .line 116
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 117
    .line 118
    invoke-virtual {v9, v6, v8, v6, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v9, v3, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 122
    .line 123
    .line 124
    sget v6, Lnet/kaki87/soul2/testing/R$string;->estimated_info:I

    .line 125
    .line 126
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(I)V

    .line 127
    .line 128
    .line 129
    const/4 v6, -0x2

    .line 130
    invoke-virtual {v4, v9, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 131
    .line 132
    .line 133
    new-instance v6, Lcom/mycompany/app/view/MyLineText;

    .line 134
    .line 135
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v3, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 142
    .line 143
    .line 144
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 145
    .line 146
    invoke-virtual {v6, v2}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 147
    .line 148
    .line 149
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 150
    .line 151
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 152
    .line 153
    invoke-direct {v2, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    .line 155
    .line 156
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 157
    .line 158
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 159
    .line 160
    invoke-virtual {v4, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    .line 162
    .line 163
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogDownSize;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 164
    .line 165
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogDownSize;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 166
    .line 167
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogDownSize;->g0:Lcom/mycompany/app/view/MyCoverView;

    .line 168
    .line 169
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogDownSize;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 170
    .line 171
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogDownSize;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 172
    .line 173
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogDownSize;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 174
    .line 175
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 176
    .line 177
    if-nez v2, :cond_2

    .line 178
    .line 179
    :goto_1
    return-void

    .line 180
    :cond_2
    new-instance v3, Lcom/mycompany/app/dialog/DialogDownSize$2;

    .line 181
    .line 182
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogDownSize$2;-><init>(Lcom/mycompany/app/dialog/DialogDownSize;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    .line 187
    .line 188
    return-void
.end method
