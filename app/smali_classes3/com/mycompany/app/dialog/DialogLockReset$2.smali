.class Lcom/mycompany/app/dialog/DialogLockReset$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogLockReset;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogLockReset;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogLockReset$2;->c:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLockReset$2;->c:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLockReset;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLockReset;->a0:Landroid/content/Context;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLockReset;->e0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLockReset;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 26
    .line 27
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLockReset;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLockReset;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    const/high16 v2, -0x1000000

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLockReset;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 46
    .line 47
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLockReset;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 53
    .line 54
    const v2, -0xe19938

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    .line 59
    .line 60
    :goto_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogLockReset;->c0:I

    .line 61
    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogLockReset;->a0:Landroid/content/Context;

    .line 74
    .line 75
    sget v3, Lnet/kaki87/soul2/testing/R$string;->lock_reset_guide:I

    .line 76
    .line 77
    const-string v4, "\n"

    .line 78
    .line 79
    invoke-static {v2, v3, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogLockReset;->a0:Landroid/content/Context;

    .line 83
    .line 84
    sget v3, Lnet/kaki87/soul2/testing/R$string;->lock_secret_guide:I

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogLockReset;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLockReset;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    .line 105
    sget v2, Lnet/kaki87/soul2/testing/R$string;->lock_reset_guide:I

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    const/4 v2, 0x2

    .line 112
    if-ne v1, v2, :cond_4

    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLockReset;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    sget v2, Lnet/kaki87/soul2/testing/R$string;->link_reset_guide:I

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLockReset;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    sget v2, Lnet/kaki87/soul2/testing/R$string;->password_reset_guide:I

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 127
    .line 128
    .line 129
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLockReset;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 130
    .line 131
    new-instance v2, Lcom/mycompany/app/dialog/DialogLockReset$3;

    .line 132
    .line 133
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogLockReset$3;-><init>(Lcom/mycompany/app/dialog/DialogLockReset;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLockReset;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 140
    .line 141
    new-instance v2, Lcom/mycompany/app/dialog/DialogLockReset$4;

    .line 142
    .line 143
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogLockReset$4;-><init>(Lcom/mycompany/app/dialog/DialogLockReset;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    :goto_2
    return-void
.end method
