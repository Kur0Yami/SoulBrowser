.class Lcom/mycompany/app/dialog/DialogOcrLoad$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogOcrLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogOcrLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$2;->c:Lcom/mycompany/app/dialog/DialogOcrLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$2;->c:Lcom/mycompany/app/dialog/DialogOcrLoad;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    const v2, -0xdededf

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    const v2, -0x50506

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->e0:Lcom/mycompany/app/view/MyProgressBar;

    .line 28
    .line 29
    iget-object v3, v1, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 30
    .line 31
    const v4, -0xc0c0c1

    .line 32
    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    iget-object v5, v1, Lcom/mycompany/app/view/MyProgressBar;->n:Landroid/graphics/Paint;

    .line 37
    .line 38
    if-nez v5, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iput v2, v1, Lcom/mycompany/app/view/MyProgressBar;->j:I

    .line 42
    .line 43
    iput v4, v1, Lcom/mycompany/app/view/MyProgressBar;->k:I

    .line 44
    .line 45
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v3, v1, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 49
    .line 50
    const/16 v5, 0xc8

    .line 51
    .line 52
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 53
    .line 54
    .line 55
    iget-object v3, v1, Lcom/mycompany/app/view/MyProgressBar;->n:Landroid/graphics/Paint;

    .line 56
    .line 57
    iget v1, v1, Lcom/mycompany/app/view/MyProgressBar;->k:I

    .line 58
    .line 59
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->e0:Lcom/mycompany/app/view/MyProgressBar;

    .line 63
    .line 64
    iget v3, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->h0:I

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyProgressBar;->setMax(I)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 77
    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 84
    .line 85
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->a0:Landroid/content/Context;

    .line 96
    .line 97
    sget v3, Lnet/kaki87/soul2/testing/R$string;->ocr_load_1:I

    .line 98
    .line 99
    const-string v4, "\n"

    .line 100
    .line 101
    invoke-static {v2, v3, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->a0:Landroid/content/Context;

    .line 105
    .line 106
    sget v3, Lnet/kaki87/soul2/testing/R$string;->ocr_load_2:I

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 125
    .line 126
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 129
    .line 130
    .line 131
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 132
    .line 133
    new-instance v2, Lcom/mycompany/app/dialog/DialogOcrLoad$3;

    .line 134
    .line 135
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogOcrLoad$3;-><init>(Lcom/mycompany/app/dialog/DialogOcrLoad;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 142
    .line 143
    new-instance v2, Lcom/mycompany/app/dialog/DialogOcrLoad$4;

    .line 144
    .line 145
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogOcrLoad$4;-><init>(Lcom/mycompany/app/dialog/DialogOcrLoad;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    :goto_1
    return-void
.end method
