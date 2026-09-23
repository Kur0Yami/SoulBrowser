.class Lcom/mycompany/app/dialog/DialogTransMsg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTransMsg;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTransMsg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTransMsg$2;->c:Lcom/mycompany/app/dialog/DialogTransMsg;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransMsg$2;->c:Lcom/mycompany/app/dialog/DialogTransMsg;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->a0:Landroid/content/Context;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->d0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 35
    .line 36
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 42
    .line 43
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    const/high16 v2, -0x1000000

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 67
    .line 68
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 74
    .line 75
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 78
    .line 79
    .line 80
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    sget v2, Lnet/kaki87/soul2/testing/R$string;->trans_blocked:I

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 88
    .line 89
    sget v2, Lnet/kaki87/soul2/testing/R$string;->trans_allowed:I

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 95
    .line 96
    sget v2, Lnet/kaki87/soul2/testing/R$string;->open_chrome:I

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 102
    .line 103
    new-instance v2, Lcom/mycompany/app/dialog/DialogTransMsg$3;

    .line 104
    .line 105
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTransMsg$3;-><init>(Lcom/mycompany/app/dialog/DialogTransMsg;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 112
    .line 113
    new-instance v2, Lcom/mycompany/app/dialog/DialogTransMsg$4;

    .line 114
    .line 115
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTransMsg$4;-><init>(Lcom/mycompany/app/dialog/DialogTransMsg;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 122
    .line 123
    new-instance v2, Lcom/mycompany/app/dialog/DialogTransMsg$5;

    .line 124
    .line 125
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTransMsg$5;-><init>(Lcom/mycompany/app/dialog/DialogTransMsg;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    :goto_1
    return-void
.end method
