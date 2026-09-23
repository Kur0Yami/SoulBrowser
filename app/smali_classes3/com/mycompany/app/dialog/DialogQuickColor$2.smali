.class Lcom/mycompany/app/dialog/DialogQuickColor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogQuickColor;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogQuickColor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickColor$2;->c:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickColor$2;->c:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickColor;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickColor;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickColor;->d0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 13
    .line 14
    array-length v1, v1

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    if-ge v3, v1, :cond_3

    .line 18
    .line 19
    sget-object v4, Lcom/mycompany/app/main/MainConst;->b0:[I

    .line 20
    .line 21
    aget v4, v4, v3

    .line 22
    .line 23
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogQuickColor;->d0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 24
    .line 25
    aget-object v5, v5, v3

    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogQuickColor;->d0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 35
    .line 36
    aget-object v5, v5, v3

    .line 37
    .line 38
    invoke-virtual {v5, v4, v4}, Lcom/mycompany/app/view/MyButtonCheck;->m(II)V

    .line 39
    .line 40
    .line 41
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 42
    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogQuickColor;->d0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 46
    .line 47
    aget-object v5, v5, v3

    .line 48
    .line 49
    const v6, -0xc0c0c1

    .line 50
    .line 51
    .line 52
    sget v7, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 53
    .line 54
    invoke-virtual {v5, v6, v7}, Lcom/mycompany/app/view/MyButtonCheck;->n(II)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogQuickColor;->d0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 58
    .line 59
    aget-object v5, v5, v3

    .line 60
    .line 61
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_white_24:I

    .line 62
    .line 63
    invoke-virtual {v5, v6, v2}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 64
    .line 65
    .line 66
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogQuickColor;->d0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 67
    .line 68
    aget-object v5, v5, v3

    .line 69
    .line 70
    iget v6, v0, Lcom/mycompany/app/dialog/DialogQuickColor;->e0:I

    .line 71
    .line 72
    if-ne v4, v6, :cond_2

    .line 73
    .line 74
    const/4 v4, 0x1

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move v4, v2

    .line 77
    :goto_1
    invoke-virtual {v5, v4, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 78
    .line 79
    .line 80
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogQuickColor;->d0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 81
    .line 82
    aget-object v4, v4, v3

    .line 83
    .line 84
    new-instance v5, Lcom/mycompany/app/dialog/DialogQuickColor$3;

    .line 85
    .line 86
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogQuickColor$3;-><init>(Lcom/mycompany/app/dialog/DialogQuickColor;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickColor;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 96
    .line 97
    new-instance v2, Lcom/mycompany/app/dialog/DialogQuickColor$4;

    .line 98
    .line 99
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogQuickColor$4;-><init>(Lcom/mycompany/app/dialog/DialogQuickColor;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_2
    return-void
.end method
