.class Lcom/mycompany/app/dialog/DialogSetHistory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetHistory;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetHistory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetHistory$1;->c:Lcom/mycompany/app/dialog/DialogSetHistory;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory$1;->c:Lcom/mycompany/app/dialog/DialogSetHistory;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetHistory;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    sget v3, Lnet/kaki87/soul2/testing/R$id;->set_default_title:I

    .line 12
    .line 13
    sget v4, Lnet/kaki87/soul2/testing/R$id;->set_default_value:I

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    new-instance v7, Landroid/widget/RelativeLayout;

    .line 21
    .line 22
    invoke-direct {v7, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 26
    .line 27
    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 28
    .line 29
    .line 30
    const/16 v8, 0x10

    .line 31
    .line 32
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 33
    .line 34
    .line 35
    sget v8, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 36
    .line 37
    invoke-virtual {v7, v8}, Landroid/view/View;->setMinimumHeight(I)V

    .line 38
    .line 39
    .line 40
    const/4 v8, -0x1

    .line 41
    const/4 v9, -0x2

    .line 42
    invoke-virtual {v6, v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 43
    .line 44
    .line 45
    new-instance v10, Landroid/view/View;

    .line 46
    .line 47
    invoke-direct {v10, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 51
    .line 52
    invoke-direct {v11, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53
    .line 54
    .line 55
    const/16 v12, 0x15

    .line 56
    .line 57
    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    const/4 v11, 0x0

    .line 64
    const/high16 v12, 0x41800000    # 16.0f

    .line 65
    .line 66
    invoke-static {v2, v11, v3, v5, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->k(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    sget v14, Lnet/kaki87/soul2/testing/R$string;->history_time:I

    .line 71
    .line 72
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, v13, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 76
    .line 77
    .line 78
    const/high16 v14, 0x41600000    # 14.0f

    .line 79
    .line 80
    invoke-static {v2, v11, v4, v5, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->k(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    .line 83
    move-result-object v15

    .line 84
    const/4 v12, 0x3

    .line 85
    invoke-static {v8, v9, v12, v3}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 90
    .line 91
    iput v12, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 92
    .line 93
    invoke-virtual {v7, v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    invoke-direct {v3, v2, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v3, v5, v14, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    const/4 v11, 0x3

    .line 106
    invoke-virtual {v9, v11, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 107
    .line 108
    .line 109
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 110
    .line 111
    iput v4, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 112
    .line 113
    invoke-virtual {v7, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .line 115
    .line 116
    new-instance v4, Lcom/mycompany/app/view/MyLineText;

    .line 117
    .line 118
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    const/16 v2, 0x11

    .line 122
    .line 123
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 124
    .line 125
    .line 126
    const/high16 v2, 0x41800000    # 16.0f

    .line 127
    .line 128
    invoke-virtual {v4, v5, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 129
    .line 130
    .line 131
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 132
    .line 133
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 134
    .line 135
    .line 136
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 137
    .line 138
    invoke-virtual {v4, v2}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 142
    .line 143
    .line 144
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 145
    .line 146
    invoke-virtual {v6, v4, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 147
    .line 148
    .line 149
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogSetHistory;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 150
    .line 151
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogSetHistory;->e0:Landroid/widget/RelativeLayout;

    .line 152
    .line 153
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogSetHistory;->f0:Landroid/view/View;

    .line 154
    .line 155
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogSetHistory;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 156
    .line 157
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogSetHistory;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 158
    .line 159
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogSetHistory;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 160
    .line 161
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogSetHistory;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 162
    .line 163
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 164
    .line 165
    if-nez v2, :cond_1

    .line 166
    .line 167
    :goto_0
    return-void

    .line 168
    :cond_1
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetHistory$2;

    .line 169
    .line 170
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetHistory$2;-><init>(Lcom/mycompany/app/dialog/DialogSetHistory;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    .line 175
    .line 176
    return-void
.end method
