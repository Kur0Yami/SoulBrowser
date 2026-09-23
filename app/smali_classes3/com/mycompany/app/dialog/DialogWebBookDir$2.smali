.class Lcom/mycompany/app/dialog/DialogWebBookDir$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebBookDir;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookDir;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookDir$2;->c:Lcom/mycompany/app/dialog/DialogWebBookDir;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir$2;->c:Lcom/mycompany/app/dialog/DialogWebBookDir;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->a0:Landroid/content/Context;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->d0:Lcom/mycompany/app/view/MyEditText;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 30
    .line 31
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->d0:Lcom/mycompany/app/view/MyEditText;

    .line 38
    .line 39
    const/high16 v2, -0x1000000

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 45
    .line 46
    const v2, -0xe19938

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 53
    .line 54
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 57
    .line 58
    .line 59
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 60
    .line 61
    sget v2, Lnet/kaki87/soul2/testing/R$string;->create_folder:I

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->d0:Lcom/mycompany/app/view/MyEditText;

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->d0:Lcom/mycompany/app/view/MyEditText;

    .line 73
    .line 74
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookDir$3;

    .line 75
    .line 76
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookDir$3;-><init>(Lcom/mycompany/app/dialog/DialogWebBookDir;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->d0:Lcom/mycompany/app/view/MyEditText;

    .line 83
    .line 84
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookDir$4;

    .line 85
    .line 86
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookDir$4;-><init>(Lcom/mycompany/app/dialog/DialogWebBookDir;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 93
    .line 94
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookDir$5;

    .line 95
    .line 96
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookDir$5;-><init>(Lcom/mycompany/app/dialog/DialogWebBookDir;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 103
    .line 104
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookDir$6;

    .line 105
    .line 106
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookDir$6;-><init>(Lcom/mycompany/app/dialog/DialogWebBookDir;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    :goto_1
    return-void
.end method
