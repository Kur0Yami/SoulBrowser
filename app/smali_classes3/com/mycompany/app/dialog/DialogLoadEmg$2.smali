.class Lcom/mycompany/app/dialog/DialogLoadEmg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogLoadEmg;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogLoadEmg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg$2;->c:Lcom/mycompany/app/dialog/DialogLoadEmg;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadEmg$2;->c:Lcom/mycompany/app/dialog/DialogLoadEmg;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->e0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 38
    .line 39
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    .line 57
    const/high16 v2, -0x1000000

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 75
    .line 76
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    const v2, -0xe19938

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    const/4 v2, 0x1

    .line 97
    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    new-instance v3, Lcom/mycompany/app/dialog/DialogLoadEmg$3;

    .line 103
    .line 104
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogLoadEmg$3;-><init>(Lcom/mycompany/app/dialog/DialogLoadEmg;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 111
    .line 112
    new-instance v3, Lcom/mycompany/app/dialog/DialogLoadEmg$4;

    .line 113
    .line 114
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogLoadEmg$4;-><init>(Lcom/mycompany/app/dialog/DialogLoadEmg;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->o0:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    const/4 v3, 0x0

    .line 127
    if-nez v1, :cond_2

    .line 128
    .line 129
    const/4 v1, 0x2

    .line 130
    iput v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->k0:I

    .line 131
    .line 132
    invoke-virtual {v0, v2, v3, v3}, Lcom/mycompany/app/dialog/DialogLoadEmg;->B(ZZZ)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebEmgTask;

    .line 137
    .line 138
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->b0:Landroid/content/Context;

    .line 139
    .line 140
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->n0:Lcom/mycompany/app/web/WebNestView;

    .line 141
    .line 142
    new-instance v6, Lcom/mycompany/app/dialog/DialogLoadEmg$6;

    .line 143
    .line 144
    invoke-direct {v6, v0}, Lcom/mycompany/app/dialog/DialogLoadEmg$6;-><init>(Lcom/mycompany/app/dialog/DialogLoadEmg;)V

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, v4, v5, v6}, Lcom/mycompany/app/web/WebEmgTask;-><init>(Landroid/content/Context;Lcom/mycompany/app/web/WebNestView;Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;)V

    .line 148
    .line 149
    .line 150
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->m0:Lcom/mycompany/app/web/WebEmgTask;

    .line 151
    .line 152
    const/4 v1, -0x1

    .line 153
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogLoadEmg;->C(I)V

    .line 154
    .line 155
    .line 156
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 157
    .line 158
    if-nez v1, :cond_3

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 162
    .line 163
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 167
    .line 168
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 172
    .line 173
    new-instance v3, Lcom/mycompany/app/dialog/DialogLoadEmg$10;

    .line 174
    .line 175
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogLoadEmg$10;-><init>(Lcom/mycompany/app/dialog/DialogLoadEmg;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v2, v2, v3}, Lcom/mycompany/app/view/MyProgressBar;->k(ZILcom/mycompany/app/view/MyProgressBar$MyProgressListener;)V

    .line 179
    .line 180
    .line 181
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 182
    .line 183
    new-instance v2, Lcom/mycompany/app/dialog/DialogLoadEmg$5;

    .line 184
    .line 185
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogLoadEmg$5;-><init>(Lcom/mycompany/app/dialog/DialogLoadEmg;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 189
    .line 190
    .line 191
    :cond_4
    :goto_2
    return-void
.end method
