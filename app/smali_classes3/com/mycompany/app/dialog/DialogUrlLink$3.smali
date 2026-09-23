.class Lcom/mycompany/app/dialog/DialogUrlLink$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogUrlLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$3;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink$3;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 4
    .line 5
    if-eqz v1, :cond_6

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    const v2, -0xdededf

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogLink;->setBackColor(I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    const v2, -0x50506

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_20:I

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 39
    .line 40
    const v2, -0xc0c0c1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v2, -0x1

    .line 48
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogLink;->setBackColor(I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    const/high16 v2, -0x1000000

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_20:I

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 66
    .line 67
    const v2, -0x1f1f20

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    .line 75
    const/high16 v2, 0x3f800000    # 1.0f

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setAlpha(F)V

    .line 78
    .line 79
    .line 80
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->k0:Z

    .line 81
    .line 82
    xor-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogUrlLink;->L(Z)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 88
    .line 89
    new-instance v2, Lcom/mycompany/app/dialog/DialogUrlLink$4;

    .line 90
    .line 91
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogUrlLink$4;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->k0:Z

    .line 98
    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->l0:Z

    .line 102
    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->A0:Lcom/mycompany/app/view/MyLineLinear;

    .line 106
    .line 107
    if-nez v1, :cond_2

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    const/4 v2, 0x0

    .line 111
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->D0:Lcom/google/android/material/tabs/TabLayout;

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 120
    .line 121
    if-eqz v1, :cond_3

    .line 122
    .line 123
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->B0:Lcom/mycompany/app/view/MyLineText;

    .line 124
    .line 125
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->D0:Lcom/google/android/material/tabs/TabLayout;

    .line 138
    .line 139
    const v2, -0x4f4f50

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->B0:Lcom/mycompany/app/view/MyLineText;

    .line 147
    .line 148
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 154
    .line 155
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->D0:Lcom/google/android/material/tabs/TabLayout;

    .line 161
    .line 162
    const v2, -0x595616

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 166
    .line 167
    .line 168
    :goto_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUrlLink;->K()V

    .line 169
    .line 170
    .line 171
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->B0:Lcom/mycompany/app/view/MyLineText;

    .line 172
    .line 173
    new-instance v2, Lcom/mycompany/app/dialog/DialogUrlLink$5;

    .line 174
    .line 175
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogUrlLink$5;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 182
    .line 183
    new-instance v2, Lcom/mycompany/app/dialog/DialogUrlLink$6;

    .line 184
    .line 185
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogUrlLink$6;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    new-instance v1, Lcom/mycompany/app/dialog/DialogUrlLink$7;

    .line 192
    .line 193
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogUrlLink$7;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 197
    .line 198
    .line 199
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 200
    .line 201
    if-nez v1, :cond_5

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_5
    new-instance v2, Lcom/mycompany/app/dialog/DialogUrlLink$8;

    .line 205
    .line 206
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogUrlLink$8;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    .line 211
    .line 212
    :cond_6
    :goto_2
    return-void
.end method
