.class Lcom/mycompany/app/dialog/DialogViewRead$84$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$84$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$84$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$84$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$84$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$84$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$84$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$84$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$84$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$84$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$84;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$84;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->S0:Z

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    if-eqz v1, :cond_5

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->g0:Lcom/mycompany/app/web/WebReadTask;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->C0()V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead;->g0:Lcom/mycompany/app/web/WebReadTask;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebReadTask;->w()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    if-nez v1, :cond_5

    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->j:Lcom/mycompany/app/dialog/DialogViewRead$DialogReadListener;

    .line 37
    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    invoke-interface {v1}, Lcom/mycompany/app/dialog/DialogViewRead$DialogReadListener;->a()Lcom/mycompany/app/web/WebNestView;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-nez v1, :cond_4

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->C0()V

    .line 49
    .line 50
    .line 51
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewRead$53;

    .line 52
    .line 53
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewRead$53;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "document.documentElement.lang"

    .line 57
    .line 58
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/web/WebNestView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 59
    .line 60
    .line 61
    :cond_5
    :goto_0
    return-void
.end method
