.class Lcom/mycompany/app/dialog/DialogTabEdit$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabEdit$4;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabEdit$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabEdit$4$1;->c:Lcom/mycompany/app/dialog/DialogTabEdit$4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit$4$1;->c:Lcom/mycompany/app/dialog/DialogTabEdit$4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabEdit$4;->c:Lcom/mycompany/app/dialog/DialogTabEdit;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x1

    .line 11
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget v3, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->g0:I

    .line 16
    .line 17
    iget v4, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->h0:I

    .line 18
    .line 19
    if-ne v3, v4, :cond_1

    .line 20
    .line 21
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->f0:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabEdit;->dismiss()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->e0:Ljava/util/List;

    .line 34
    .line 35
    iget v4, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->g0:I

    .line 36
    .line 37
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->o0:Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;

    .line 38
    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    iput-boolean v2, v5, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 42
    .line 43
    :cond_2
    const/4 v2, 0x0

    .line 44
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->o0:Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;

    .line 45
    .line 46
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;

    .line 47
    .line 48
    invoke-direct {v2, v0, v3, v1, v4}, Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogTabEdit;Ljava/util/List;Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->o0:Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;

    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->b0:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    const/4 v1, 0x0

    .line 59
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->p0:Z

    .line 60
    .line 61
    return-void
.end method
