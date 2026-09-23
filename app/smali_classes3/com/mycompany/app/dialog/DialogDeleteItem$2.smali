.class Lcom/mycompany/app/dialog/DialogDeleteItem$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDeleteItem;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDeleteItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDeleteItem$2;->c:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteItem$2;->c:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteItem;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteItem;->a0:Landroid/content/Context;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteItem;->e0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteItem;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 25
    .line 26
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteItem;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteItem;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 38
    .line 39
    const/high16 v2, -0x1000000

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteItem;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 45
    .line 46
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteItem;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 52
    .line 53
    const v2, -0xe19938

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .line 58
    .line 59
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteItem;->b0:Lcom/mycompany/app/dialog/DialogDeleteItem$DelItemListener;

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDeleteItem;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 64
    .line 65
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDeleteItem;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    invoke-interface {v1, v2, v3}, Lcom/mycompany/app/dialog/DialogDeleteItem$DelItemListener;->b(Lcom/mycompany/app/view/MyRoundImage;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteItem;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 71
    .line 72
    new-instance v2, Lcom/mycompany/app/dialog/DialogDeleteItem$3;

    .line 73
    .line 74
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDeleteItem$3;-><init>(Lcom/mycompany/app/dialog/DialogDeleteItem;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteItem;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 81
    .line 82
    new-instance v2, Lcom/mycompany/app/dialog/DialogDeleteItem$4;

    .line 83
    .line 84
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDeleteItem$4;-><init>(Lcom/mycompany/app/dialog/DialogDeleteItem;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    :goto_1
    return-void
.end method
