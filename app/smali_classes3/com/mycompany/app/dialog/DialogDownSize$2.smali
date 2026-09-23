.class Lcom/mycompany/app/dialog/DialogDownSize$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownSize;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownSize;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownSize$2;->c:Lcom/mycompany/app/dialog/DialogDownSize;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownSize$2;->c:Lcom/mycompany/app/dialog/DialogDownSize;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->a0:Landroid/content/Context;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    const v2, -0x3e3e3f

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    const v3, -0x50506

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 39
    .line 40
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    const v2, -0x9e9e9f

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    const/high16 v3, -0x1000000

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 72
    .line 73
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 79
    .line 80
    const v2, -0xe19938

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 87
    .line 88
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownSize$3;

    .line 89
    .line 90
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownSize$3;-><init>(Lcom/mycompany/app/dialog/DialogDownSize;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    iget-wide v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->k0:J

    .line 97
    .line 98
    const-wide/16 v3, 0x0

    .line 99
    .line 100
    cmp-long v1, v1, v3

    .line 101
    .line 102
    if-lez v1, :cond_2

    .line 103
    .line 104
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    iget-wide v2, v0, Lcom/mycompany/app/dialog/DialogDownSize;->k0:J

    .line 113
    .line 114
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 122
    .line 123
    sget v2, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownSize;->B()V

    .line 130
    .line 131
    .line 132
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 133
    .line 134
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownSize$4;

    .line 135
    .line 136
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownSize$4;-><init>(Lcom/mycompany/app/dialog/DialogDownSize;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 140
    .line 141
    .line 142
    :cond_3
    :goto_2
    return-void
.end method
