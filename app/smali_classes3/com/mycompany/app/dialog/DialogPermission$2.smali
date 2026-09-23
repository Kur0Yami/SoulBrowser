.class Lcom/mycompany/app/dialog/DialogPermission$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPermission;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPermission;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPermission$2;->c:Lcom/mycompany/app/dialog/DialogPermission;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPermission$2;->c:Lcom/mycompany/app/dialog/DialogPermission;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_e

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPermission;->c0:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPermission;->d0:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    sget v2, Lnet/kaki87/soul2/testing/R$string;->site_permission:I

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 38
    .line 39
    .line 40
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPermission;->e0:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    :cond_4
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 50
    .line 51
    if-eqz v1, :cond_9

    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    .line 55
    const v2, -0x50506

    .line 56
    .line 57
    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    if-eqz v1, :cond_7

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    .line 76
    .line 77
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    if-eqz v1, :cond_8

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 92
    .line 93
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 94
    .line 95
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 110
    .line 111
    const/high16 v2, -0x1000000

    .line 112
    .line 113
    if-eqz v1, :cond_a

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    .line 117
    .line 118
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 119
    .line 120
    if-eqz v1, :cond_b

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    .line 124
    .line 125
    :cond_b
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    .line 127
    if-eqz v1, :cond_c

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    .line 131
    .line 132
    :cond_c
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    .line 134
    if-eqz v1, :cond_d

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    .line 138
    .line 139
    :cond_d
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 140
    .line 141
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 144
    .line 145
    .line 146
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 147
    .line 148
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 154
    .line 155
    const v2, -0xe19938

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    .line 160
    .line 161
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    .line 165
    .line 166
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 167
    .line 168
    new-instance v2, Lcom/mycompany/app/dialog/DialogPermission$3;

    .line 169
    .line 170
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPermission$3;-><init>(Lcom/mycompany/app/dialog/DialogPermission;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 177
    .line 178
    new-instance v2, Lcom/mycompany/app/dialog/DialogPermission$4;

    .line 179
    .line 180
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPermission$4;-><init>(Lcom/mycompany/app/dialog/DialogPermission;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 187
    .line 188
    new-instance v2, Lcom/mycompany/app/dialog/DialogPermission$5;

    .line 189
    .line 190
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPermission$5;-><init>(Lcom/mycompany/app/dialog/DialogPermission;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 194
    .line 195
    .line 196
    :cond_e
    :goto_1
    return-void
.end method
