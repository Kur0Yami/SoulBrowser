.class Lcom/mycompany/app/dialog/DialogNewsLocale$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogNewsLocale;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$13;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->S0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$13;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogNewsLocale;->I()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->z0:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->J0:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/mycompany/app/db/book/DbBookLocale;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->z0:Ljava/util/List;

    .line 27
    .line 28
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->z0:Ljava/util/List;

    .line 29
    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogNewsLocale;->E(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 43
    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogNewsLocale$13$1;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogNewsLocale$13$1;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale$13;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogNewsLocale;->C(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->D0:Z

    .line 61
    .line 62
    return-void
.end method
