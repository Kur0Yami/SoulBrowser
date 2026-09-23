.class Lcom/mycompany/app/dialog/DialogDownBlob$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownBlob;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownBlob;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownBlob$2;->c:Lcom/mycompany/app/dialog/DialogDownBlob;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob$2;->c:Lcom/mycompany/app/dialog/DialogDownBlob;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    const v2, -0x50506

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 35
    .line 36
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    const/high16 v2, -0x1000000

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 65
    .line 66
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->n0:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->Q1(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_draft_black_24:I

    .line 83
    .line 84
    if-ne v1, v2, :cond_2

    .line 85
    .line 86
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 87
    .line 88
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    .line 90
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->n0:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 96
    .line 97
    const v3, -0x70708

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v3, v1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 104
    .line 105
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 111
    .line 112
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownBlob$3;

    .line 113
    .line 114
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownBlob$3;-><init>(Lcom/mycompany/app/dialog/DialogDownBlob;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 121
    .line 122
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownBlob$4;

    .line 123
    .line 124
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownBlob$4;-><init>(Lcom/mycompany/app/dialog/DialogDownBlob;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    :goto_1
    return-void
.end method
