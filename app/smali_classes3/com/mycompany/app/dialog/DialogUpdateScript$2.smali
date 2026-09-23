.class Lcom/mycompany/app/dialog/DialogUpdateScript$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogUpdateScript;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUpdateScript;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$2;->c:Lcom/mycompany/app/dialog/DialogUpdateScript;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$2;->c:Lcom/mycompany/app/dialog/DialogUpdateScript;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->g0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 46
    .line 47
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    const/high16 v2, -0x1000000

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 98
    .line 99
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 105
    .line 106
    const v2, -0xe19938

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    .line 111
    .line 112
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 113
    .line 114
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 115
    .line 116
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    .line 123
    .line 124
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 125
    .line 126
    new-instance v2, Lcom/mycompany/app/dialog/DialogUpdateScript$3;

    .line 127
    .line 128
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogUpdateScript$3;-><init>(Lcom/mycompany/app/dialog/DialogUpdateScript;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 135
    .line 136
    new-instance v2, Lcom/mycompany/app/dialog/DialogUpdateScript$4;

    .line 137
    .line 138
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogUpdateScript$4;-><init>(Lcom/mycompany/app/dialog/DialogUpdateScript;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->u0:Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

    .line 145
    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    const/4 v2, 0x1

    .line 149
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 150
    .line 151
    :cond_2
    const/4 v1, 0x0

    .line 152
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->u0:Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

    .line 153
    .line 154
    new-instance v1, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

    .line 155
    .line 156
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogUpdateScript;)V

    .line 157
    .line 158
    .line 159
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->u0:Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

    .line 160
    .line 161
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->a0:Landroid/content/Context;

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 164
    .line 165
    .line 166
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 167
    .line 168
    new-instance v2, Lcom/mycompany/app/dialog/DialogUpdateScript$5;

    .line 169
    .line 170
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogUpdateScript$5;-><init>(Lcom/mycompany/app/dialog/DialogUpdateScript;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 174
    .line 175
    .line 176
    :cond_3
    :goto_1
    return-void
.end method
