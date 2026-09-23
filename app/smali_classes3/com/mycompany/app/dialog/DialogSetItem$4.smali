.class Lcom/mycompany/app/dialog/DialogSetItem$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetItem;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetItem$4;->c:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetItem$4;->c:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object p1, v2

    .line 21
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    xor-int/lit8 v3, v1, 0x1

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->q0:Z

    .line 53
    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->m0:Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    iput-boolean v4, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 62
    .line 63
    :cond_4
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetItem;->m0:Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;

    .line 64
    .line 65
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;

    .line 66
    .line 67
    invoke-direct {v1, v0, p1}, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogSetItem;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->m0:Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;

    .line 71
    .line 72
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->a0:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {v1, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogSetItem;->q0:Z

    .line 78
    .line 79
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
