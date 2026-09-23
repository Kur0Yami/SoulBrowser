.class Lcom/mycompany/app/dialog/DialogPrompt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPrompt;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPrompt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPrompt$2;->c:Lcom/mycompany/app/dialog/DialogPrompt;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPrompt$2;->c:Lcom/mycompany/app/dialog/DialogPrompt;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrompt;->b0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrompt;->a0:Landroid/content/Context;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrompt;->c0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrompt;->d0:Lcom/mycompany/app/view/MyEditText;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrompt;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 31
    .line 32
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrompt;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrompt;->c0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    const/high16 v2, -0x1000000

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrompt;->d0:Lcom/mycompany/app/view/MyEditText;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrompt;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 56
    .line 57
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrompt;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 63
    .line 64
    const v2, -0xe19938

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrompt;->f0:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrompt;->c0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPrompt;->f0:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrompt;->g0:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_3

    .line 92
    .line 93
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrompt;->d0:Lcom/mycompany/app/view/MyEditText;

    .line 94
    .line 95
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPrompt;->g0:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrompt;->d0:Lcom/mycompany/app/view/MyEditText;

    .line 101
    .line 102
    const/4 v2, 0x1

    .line 103
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrompt;->d0:Lcom/mycompany/app/view/MyEditText;

    .line 107
    .line 108
    new-instance v2, Lcom/mycompany/app/dialog/DialogPrompt$3;

    .line 109
    .line 110
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPrompt$3;-><init>(Lcom/mycompany/app/dialog/DialogPrompt;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrompt;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 117
    .line 118
    new-instance v2, Lcom/mycompany/app/dialog/DialogPrompt$4;

    .line 119
    .line 120
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPrompt$4;-><init>(Lcom/mycompany/app/dialog/DialogPrompt;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrompt;->b0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 127
    .line 128
    new-instance v2, Lcom/mycompany/app/dialog/DialogPrompt$5;

    .line 129
    .line 130
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPrompt$5;-><init>(Lcom/mycompany/app/dialog/DialogPrompt;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 134
    .line 135
    .line 136
    :cond_4
    :goto_1
    return-void
.end method
