.class Lcom/mycompany/app/dialog/DialogQuickIcon$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogQuickIcon;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogQuickIcon;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickIcon$2;->c:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickIcon$2;->c:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickIcon;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickIcon;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickIcon;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 17
    .line 18
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickIcon;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 24
    .line 25
    const v2, -0x50506

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickIcon;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 33
    .line 34
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickIcon;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 40
    .line 41
    const v2, -0xe19938

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickIcon;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 48
    .line 49
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickIcon;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 55
    .line 56
    new-instance v2, Lcom/mycompany/app/dialog/DialogQuickIcon$3;

    .line 57
    .line 58
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogQuickIcon$3;-><init>(Lcom/mycompany/app/dialog/DialogQuickIcon;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickIcon;->g0:Lcom/mycompany/app/view/MyCoverView;

    .line 65
    .line 66
    if-nez v1, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const/4 v2, 0x1

    .line 70
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/mycompany/app/dialog/DialogQuickIcon$5;

    .line 74
    .line 75
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogQuickIcon$5;-><init>(Lcom/mycompany/app/dialog/DialogQuickIcon;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickIcon;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 82
    .line 83
    new-instance v2, Lcom/mycompany/app/dialog/DialogQuickIcon$4;

    .line 84
    .line 85
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogQuickIcon$4;-><init>(Lcom/mycompany/app/dialog/DialogQuickIcon;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_2
    return-void
.end method
