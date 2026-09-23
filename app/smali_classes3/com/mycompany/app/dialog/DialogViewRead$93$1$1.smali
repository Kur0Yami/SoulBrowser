.class Lcom/mycompany/app/dialog/DialogViewRead$93$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$93$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$93$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$93$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead$93;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogViewRead;->T:Lcom/mycompany/app/web/WebVideoImage;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogViewRead;->c:Z

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 18
    .line 19
    iget-boolean v1, v1, Lcom/mycompany/app/dialog/DialogViewRead;->H2:Z

    .line 20
    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    if-eqz v1, :cond_3

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_3
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget v2, Lcom/mycompany/app/pref/PrefPdf;->o:I

    .line 32
    .line 33
    sget-boolean v3, Lcom/mycompany/app/pref/PrefPdf;->n:Z

    .line 34
    .line 35
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->g7(Landroid/view/Window;IZ)V

    .line 36
    .line 37
    .line 38
    :goto_1
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$93;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 39
    .line 40
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$93$1$1;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogViewRead;->k0(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
