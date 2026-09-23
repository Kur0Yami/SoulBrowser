.class Lcom/mycompany/app/dialog/DialogTabMain$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$24;->c:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefAlbum;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/mycompany/app/dialog/DialogTabMain;->l1:[I

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$24;->c:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->m0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMain;->G()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->O:Lcom/mycompany/app/view/MyMainRelative;

    .line 25
    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 31
    .line 32
    if-nez v1, :cond_4

    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_4
    new-instance v2, Lcom/mycompany/app/view/MyFadeFrame;

    .line 37
    .line 38
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyFadeFrame;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 42
    .line 43
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 44
    .line 45
    .line 46
    new-instance v3, Landroid/widget/FrameLayout;

    .line 47
    .line 48
    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->round_guide_8:I

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 54
    .line 55
    .line 56
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    .line 58
    const/4 v5, -0x1

    .line 59
    const/4 v6, -0x2

    .line 60
    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 61
    .line 62
    .line 63
    const v7, 0x800053

    .line 64
    .line 65
    .line 66
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 67
    .line 68
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    new-instance v4, Landroid/widget/LinearLayout;

    .line 72
    .line 73
    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 77
    .line 78
    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 79
    .line 80
    .line 81
    const/4 v7, 0x1

    .line 82
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 83
    .line 84
    .line 85
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    .line 87
    invoke-direct {v8, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    .line 89
    .line 90
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 91
    .line 92
    invoke-virtual {v3, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 96
    .line 97
    const/4 v9, 0x0

    .line 98
    invoke-direct {v8, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    .line 100
    .line 101
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 102
    .line 103
    int-to-float v10, v10

    .line 104
    const/high16 v11, 0x3f800000    # 1.0f

    .line 105
    .line 106
    invoke-virtual {v8, v10, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 107
    .line 108
    .line 109
    const/high16 v10, 0x41800000    # 16.0f

    .line 110
    .line 111
    invoke-virtual {v8, v7, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v8, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 118
    .line 119
    .line 120
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    invoke-direct {v12, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    .line 124
    .line 125
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 126
    .line 127
    int-to-float v1, v1

    .line 128
    invoke-virtual {v12, v1, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v12, v7, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    .line 136
    .line 137
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 138
    .line 139
    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 140
    .line 141
    .line 142
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 143
    .line 144
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 145
    .line 146
    invoke-virtual {v4, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    .line 148
    .line 149
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain;->m0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 150
    .line 151
    sget v1, Lnet/kaki87/soul2/testing/R$string;->tab_guide_1:I

    .line 152
    .line 153
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(I)V

    .line 154
    .line 155
    .line 156
    sget v1, Lnet/kaki87/soul2/testing/R$string;->tab_guide_2:I

    .line 157
    .line 158
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    .line 160
    .line 161
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->m0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 162
    .line 163
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMain$25;

    .line 164
    .line 165
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMain$25;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyFadeFrame;->setListener(Lcom/mycompany/app/view/MyFadeListener;)V

    .line 169
    .line 170
    .line 171
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->m0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 172
    .line 173
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMain$26;

    .line 174
    .line 175
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMain$26;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 179
    .line 180
    .line 181
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMain$27;

    .line 182
    .line 183
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogTabMain$27;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    .line 188
    .line 189
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->O:Lcom/mycompany/app/view/MyMainRelative;

    .line 190
    .line 191
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain;->m0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 192
    .line 193
    invoke-virtual {v1, v0, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 195
    .line 196
    :catch_0
    :goto_0
    return-void
.end method
