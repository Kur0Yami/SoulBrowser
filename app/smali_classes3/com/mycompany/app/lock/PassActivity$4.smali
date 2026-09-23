.class Lcom/mycompany/app/lock/PassActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/PassActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PassActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/PassActivity$4;->c:Lcom/mycompany/app/lock/PassActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity$4;->c:Lcom/mycompany/app/lock/PassActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move-object p1, v1

    .line 18
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    move p1, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    :goto_1
    iget v2, v0, Lcom/mycompany/app/lock/PassActivity;->s1:I

    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    const/4 v5, 0x1

    .line 35
    if-ne v2, v5, :cond_c

    .line 36
    .line 37
    const v2, -0x252526

    .line 38
    .line 39
    .line 40
    const v6, -0x7f7f80

    .line 41
    .line 42
    .line 43
    const v7, -0xe19938

    .line 44
    .line 45
    .line 46
    const v8, -0x50506

    .line 47
    .line 48
    .line 49
    if-nez p1, :cond_6

    .line 50
    .line 51
    iget-boolean v9, v0, Lcom/mycompany/app/lock/PassActivity;->v1:Z

    .line 52
    .line 53
    if-eqz v9, :cond_4

    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    .line 57
    sget v9, Lnet/kaki87/soul2/testing/R$string;->reinput:I

    .line 58
    .line 59
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->p1:Lcom/mycompany/app/view/MyLineText;

    .line 63
    .line 64
    if-eqz v1, :cond_8

    .line 65
    .line 66
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->p1:Lcom/mycompany/app/view/MyLineText;

    .line 70
    .line 71
    sget-boolean v9, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 72
    .line 73
    if-eqz v9, :cond_3

    .line 74
    .line 75
    move v9, v8

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move v9, v7

    .line 78
    :goto_2
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_5

    .line 82
    :cond_4
    iget-object v9, v0, Lcom/mycompany/app/lock/PassActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->p1:Lcom/mycompany/app/view/MyLineText;

    .line 88
    .line 89
    if-eqz v1, :cond_8

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->p1:Lcom/mycompany/app/view/MyLineText;

    .line 95
    .line 96
    sget-boolean v9, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 97
    .line 98
    if-eqz v9, :cond_5

    .line 99
    .line 100
    move v9, v6

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    move v9, v2

    .line 103
    :goto_3
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_6
    iget-object v9, v0, Lcom/mycompany/app/lock/PassActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 108
    .line 109
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->p1:Lcom/mycompany/app/view/MyLineText;

    .line 113
    .line 114
    if-eqz v1, :cond_8

    .line 115
    .line 116
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->p1:Lcom/mycompany/app/view/MyLineText;

    .line 120
    .line 121
    sget-boolean v9, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 122
    .line 123
    if-eqz v9, :cond_7

    .line 124
    .line 125
    move v9, v8

    .line 126
    goto :goto_4

    .line 127
    :cond_7
    move v9, v7

    .line 128
    :goto_4
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    .line 130
    .line 131
    :cond_8
    :goto_5
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 132
    .line 133
    if-eqz v1, :cond_e

    .line 134
    .line 135
    if-ge p1, v4, :cond_a

    .line 136
    .line 137
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 138
    .line 139
    .line 140
    iget-object p1, v0, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    .line 142
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 143
    .line 144
    if-eqz v0, :cond_9

    .line 145
    .line 146
    move v2, v6

    .line 147
    :cond_9
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_a
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 152
    .line 153
    .line 154
    iget-object p1, v0, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 157
    .line 158
    if-eqz v0, :cond_b

    .line 159
    .line 160
    move v7, v8

    .line 161
    :cond_b
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_c
    iget-object v2, v0, Lcom/mycompany/app/lock/PassActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 166
    .line 167
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->n1:Lcom/mycompany/app/view/MyButtonImage;

    .line 171
    .line 172
    if-eqz v1, :cond_e

    .line 173
    .line 174
    if-ge p1, v4, :cond_d

    .line 175
    .line 176
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 177
    .line 178
    .line 179
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 180
    .line 181
    if-nez p1, :cond_e

    .line 182
    .line 183
    iget-object p1, v0, Lcom/mycompany/app/lock/PassActivity;->n1:Lcom/mycompany/app/view/MyButtonImage;

    .line 184
    .line 185
    const v0, 0x3e4ccccd    # 0.2f

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setAlpha(F)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_d
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 193
    .line 194
    .line 195
    :cond_e
    :goto_6
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
