.class Lcom/mycompany/app/dialog/DialogSetHistory$2;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetHistory$2;->c:Lcom/mycompany/app/dialog/DialogSetHistory;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHistory$2;->c:Lcom/mycompany/app/dialog/DialogSetHistory;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    const v2, -0x50506

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    const v3, -0x4e3a0c

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    .line 35
    const v3, -0x3e3e3f

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->e0:Landroid/widget/RelativeLayout;

    .line 42
    .line 43
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 49
    .line 50
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    .line 63
    const/high16 v2, -0x1000000

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    .line 70
    const v2, -0xc0ae4b

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    const v2, -0x9e9e9f

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->e0:Landroid/widget/RelativeLayout;

    .line 85
    .line 86
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 92
    .line 93
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 99
    .line 100
    const v2, -0xe19938

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    :goto_0
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->n:I

    .line 107
    .line 108
    iput v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->m0:I

    .line 109
    .line 110
    const/4 v2, 0x0

    .line 111
    move v3, v2

    .line 112
    :goto_1
    const/4 v4, 0x7

    .line 113
    if-ge v3, v4, :cond_3

    .line 114
    .line 115
    sget-object v4, Lcom/mycompany/app/dialog/DialogSetHistory;->p0:[I

    .line 116
    .line 117
    aget v4, v4, v3

    .line 118
    .line 119
    if-ne v1, v4, :cond_2

    .line 120
    .line 121
    move v2, v3

    .line 122
    goto :goto_2

    .line 123
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_3
    :goto_2
    iput v2, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->n0:I

    .line 127
    .line 128
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 129
    .line 130
    sget-object v3, Lcom/mycompany/app/dialog/DialogSetHistory;->q0:[I

    .line 131
    .line 132
    aget v2, v3, v2

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    .line 139
    sget-object v2, Lcom/mycompany/app/dialog/DialogSetHistory;->r0:[I

    .line 140
    .line 141
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->n0:I

    .line 142
    .line 143
    aget v2, v2, v3

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 146
    .line 147
    .line 148
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->e0:Landroid/widget/RelativeLayout;

    .line 149
    .line 150
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetHistory$3;

    .line 151
    .line 152
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetHistory$3;-><init>(Lcom/mycompany/app/dialog/DialogSetHistory;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 159
    .line 160
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetHistory$4;

    .line 161
    .line 162
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetHistory$4;-><init>(Lcom/mycompany/app/dialog/DialogSetHistory;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHistory;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 169
    .line 170
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetHistory$5;

    .line 171
    .line 172
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetHistory$5;-><init>(Lcom/mycompany/app/dialog/DialogSetHistory;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 176
    .line 177
    .line 178
    :cond_4
    :goto_3
    return-void
.end method
