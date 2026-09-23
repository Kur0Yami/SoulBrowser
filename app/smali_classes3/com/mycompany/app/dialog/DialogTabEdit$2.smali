.class Lcom/mycompany/app/dialog/DialogTabEdit$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabEdit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabEdit$2;->c:Lcom/mycompany/app/dialog/DialogTabEdit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit$2;->c:Lcom/mycompany/app/dialog/DialogTabEdit;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->b0:Landroid/content/Context;

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
    const v2, -0xe19938

    .line 16
    .line 17
    .line 18
    const v3, -0x50506

    .line 19
    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->k0:Lcom/mycompany/app/view/MyLineView;

    .line 24
    .line 25
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_overlay_dark:I

    .line 26
    .line 27
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 36
    .line 37
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 38
    .line 39
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->k0:Lcom/mycompany/app/view/MyLineView;

    .line 49
    .line 50
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_overlay:I

    .line 51
    .line 52
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 56
    .line 57
    const/high16 v4, -0x1000000

    .line 58
    .line 59
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 63
    .line 64
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    :goto_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->k0:Lcom/mycompany/app/view/MyLineView;

    .line 79
    .line 80
    sget v4, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 81
    .line 82
    int-to-float v4, v4

    .line 83
    invoke-virtual {v1, v4, v3}, Lcom/mycompany/app/view/MyLineView;->c(FI)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->k0:Lcom/mycompany/app/view/MyLineView;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineView;->setLineColor(I)V

    .line 90
    .line 91
    .line 92
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->k0:Lcom/mycompany/app/view/MyLineView;

    .line 93
    .line 94
    new-instance v3, Lcom/mycompany/app/dialog/DialogTabEdit$3;

    .line 95
    .line 96
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogTabEdit$3;-><init>(Lcom/mycompany/app/dialog/DialogTabEdit;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 103
    .line 104
    iget v3, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->g0:I

    if-nez v3, :cond_tab_edit_color

    sget v3, Lcom/mycompany/app/pref/PrefWeb;->b0:I

    :cond_tab_edit_color
    .line 105
    .line 106
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbBookQuick;->f(I)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    const/4 v4, 0x0

    .line 111
    invoke-virtual {v1, v4, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 120
    .line 121
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->f0:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 127
    .line 128
    const/4 v2, 0x1

    .line 129
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 130
    .line 131
    .line 132
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 133
    .line 134
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabEdit$4;

    .line 135
    .line 136
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabEdit$4;-><init>(Lcom/mycompany/app/dialog/DialogTabEdit;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 143
    .line 144
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabEdit$5;

    .line 145
    .line 146
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabEdit$5;-><init>(Lcom/mycompany/app/dialog/DialogTabEdit;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    :goto_2
    return-void
.end method
