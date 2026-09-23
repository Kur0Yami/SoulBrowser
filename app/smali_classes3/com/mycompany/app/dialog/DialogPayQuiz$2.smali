.class Lcom/mycompany/app/dialog/DialogPayQuiz$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPayQuiz;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPayQuiz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPayQuiz$2;->c:Lcom/mycompany/app/dialog/DialogPayQuiz;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPayQuiz$2;->c:Lcom/mycompany/app/dialog/DialogPayQuiz;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->a0:Landroid/content/Context;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->e0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->h0:Lcom/mycompany/app/view/MyEditText;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 41
    .line 42
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    .line 55
    const/high16 v2, -0x1000000

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->h0:Lcom/mycompany/app/view/MyEditText;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 76
    .line 77
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 83
    .line 84
    const v2, -0xe19938

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPayQuiz;->D()V

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->h0:Lcom/mycompany/app/view/MyEditText;

    .line 94
    .line 95
    const/4 v2, 0x1

    .line 96
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->h0:Lcom/mycompany/app/view/MyEditText;

    .line 100
    .line 101
    new-instance v2, Lcom/mycompany/app/dialog/DialogPayQuiz$3;

    .line 102
    .line 103
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPayQuiz$3;-><init>(Lcom/mycompany/app/dialog/DialogPayQuiz;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->h0:Lcom/mycompany/app/view/MyEditText;

    .line 110
    .line 111
    new-instance v2, Lcom/mycompany/app/dialog/DialogPayQuiz$4;

    .line 112
    .line 113
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPayQuiz$4;-><init>(Lcom/mycompany/app/dialog/DialogPayQuiz;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 120
    .line 121
    new-instance v2, Lcom/mycompany/app/dialog/DialogPayQuiz$5;

    .line 122
    .line 123
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPayQuiz$5;-><init>(Lcom/mycompany/app/dialog/DialogPayQuiz;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 130
    .line 131
    new-instance v2, Lcom/mycompany/app/dialog/DialogPayQuiz$6;

    .line 132
    .line 133
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPayQuiz$6;-><init>(Lcom/mycompany/app/dialog/DialogPayQuiz;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 137
    .line 138
    .line 139
    :cond_2
    :goto_1
    return-void
.end method
