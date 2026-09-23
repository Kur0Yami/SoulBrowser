.class Lcom/mycompany/app/dialog/DialogSetMsg$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetMsg;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetMsg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetMsg$4;->c:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetMsg$4;->c:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_f

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->o0:I

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogLinear;->setFilterColor(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 21
    .line 22
    if-eqz v1, :cond_6

    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_20:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    const v2, -0xc0c0c1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 42
    .line 43
    const v2, -0x50506

    .line 44
    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    .line 50
    .line 51
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    .line 57
    .line 58
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 59
    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    .line 71
    .line 72
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 73
    .line 74
    if-eqz v1, :cond_b

    .line 75
    .line 76
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 88
    .line 89
    if-eqz v1, :cond_7

    .line 90
    .line 91
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_20:I

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 97
    .line 98
    const/high16 v2, 0x21000000

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 101
    .line 102
    .line 103
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 104
    .line 105
    const/high16 v2, -0x1000000

    .line 106
    .line 107
    if-eqz v1, :cond_8

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    .line 111
    .line 112
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 113
    .line 114
    if-eqz v1, :cond_9

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    .line 118
    .line 119
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 120
    .line 121
    if-eqz v1, :cond_a

    .line 122
    .line 123
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 124
    .line 125
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 129
    .line 130
    const v3, -0xe19938

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    .line 135
    .line 136
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 137
    .line 138
    if-eqz v1, :cond_b

    .line 139
    .line 140
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 141
    .line 142
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    .line 149
    .line 150
    :cond_b
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 151
    .line 152
    if-eqz v1, :cond_c

    .line 153
    .line 154
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetMsg$5;

    .line 155
    .line 156
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetMsg$5;-><init>(Lcom/mycompany/app/dialog/DialogSetMsg;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    :cond_c
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 163
    .line 164
    if-eqz v1, :cond_d

    .line 165
    .line 166
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetMsg$6;

    .line 167
    .line 168
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetMsg$6;-><init>(Lcom/mycompany/app/dialog/DialogSetMsg;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    :cond_d
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 175
    .line 176
    if-eqz v1, :cond_e

    .line 177
    .line 178
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetMsg$7;

    .line 179
    .line 180
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetMsg$7;-><init>(Lcom/mycompany/app/dialog/DialogSetMsg;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    :cond_e
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 187
    .line 188
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetMsg$8;

    .line 189
    .line 190
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetMsg$8;-><init>(Lcom/mycompany/app/dialog/DialogSetMsg;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 194
    .line 195
    .line 196
    :cond_f
    :goto_1
    return-void
.end method
